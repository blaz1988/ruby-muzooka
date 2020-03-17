require 'uri'
require 'net/http'
require 'active_support'

class Muzooka
  URL = 'https://devapi.muzooka.com/v2/artists'.freeze
  BIO = 'bio'.freeze
  IMAGE = 'image'.freeze
  SOCIAL_LINKS = 'socialLinks'.freeze
  DATA = 'data'.freeze

  def initialize(muzooka_api_key:, artist_name:)
    @artist_name = artist_name.strip
    @muzooka_api_key = muzooka_api_key
  end

  def bio
    response_body&.fetch(BIO, nil)
  end

  def images
    response_body&.fetch(IMAGE, nil)
  end

  def social_links
    response_body&.fetch(SOCIAL_LINKS, nil)
  end

  private

  attr_reader :artist_name, :muzooka_api_key

  def response
    url = URI.parse(URL)
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    req = Net::HTTP::Get.new(url.request_uri + url_query)
    req['X-api-key'] = muzooka_api_key
    @response ||= http.request(req)
  end

  def url_query
    @url_query ||= "?name=#{artist_name.gsub(/\s/,'+')}"
  end

  def response_body
    raise("Invalid response: #{response.to_s}") unless response.is_a?(Net::HTTPSuccess)
    @response_body ||= ActiveSupport::JSON.decode(response.body).fetch(DATA, nil)&.first
  end
end
