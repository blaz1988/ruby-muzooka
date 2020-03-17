muzooka-lastfm

```
require 'muzooka'
muzooka = Muzooka.new(muzooka_api_key: 'xxxxxxxxx', artist_name: 'Lady Gaga')
muzooka.bio # returns artist bio
muzooka.images # returns artist images
muzooka.social_links # returns artist social links 
```

Examples

```
irb(main):010:0> muzooka.bio
=> "Stefani Joanne Angelina Germanotta (born March 28, 1986), known professionally as Lady Gaga, is an American singer, songwriter, and actress. She is known for her unconventionality and provocative work as well as visual experimentation. Gaga began her musical career performing songs at open mic nights and school plays. She studied at Collaborative Arts Project 21 (CAP21) through New York University's Tisch School of the Arts before dropping out to become a professional musician. After Def Jam Recordings canceled her contract, Gaga worked as a songwriter for Sony/ATV Music Publishing, where Akon helped her sign a joint deal with Interscope Records and his own label KonLive Distribution in 2007."

```

```
irb(main):011:0> muzooka.images
=> [{"width"=>nil, "height"=>nil, "ratio"=>nil, "name"=>"original", "url"=>"https://media.muzooka.com/images/6762816/original.jpg"}, {"width"=>320, "height"=>320, "ratio"=>"1x1", "name"=>"small1", "url"=>"https://media.muzooka.com/images/6762816/landscape/1x1/small1.jpg"}, {"width"=>320, "height"=>240, "ratio"=>"4x3", "name"=>"small1", "url"=>"https://media.muzooka.com/images/6762816/landscape/4x3/small1.jpg"}, {"width"=>320, "height"=>180, "ratio"=>"16x9", "name"=>"small1", "url"=>"https://media.muzooka.com/images/6762816/landscape/16x9/small1.jpg"}, {"width"=>320, "height"=>135, "ratio"=>"21x9", "name"=>"small1", "url"=>"https://media.muzooka.com/images/6762816/landscape/21x9/small1.jpg"}, {"width"=>768, "height"=>768, "ratio"=>"1x1", "name"=>"small2", "url"=>"https://media.muzooka.com/images/6762816/landscape/1x1/small2.jpg"}, {"width"=>768, "height"=>576, "ratio"=>"4x3", "name"=>"small2", "url"=>"https://media.muzooka.com/images/6762816/landscape/4x3/small2.jpg"}, {"width"=>768, "height"=>432, "ratio"=>"16x9", "name"=>"small2", "url"=>"https://media.muzooka.com/images/6762816/landscape/16x9/small2.jpg"}, {"width"=>768, "height"=>324, "ratio"=>"21x9", "name"=>"small2", "url"=>"https://media.muzooka.com/images/6762816/landscape/21x9/small2.jpg"}, {"width"=>1280, "height"=>1280, "ratio"=>"1x1", "name"=>"medium1", "url"=>"https://media.muzooka.com/images/6762816/landscape/1x1/medium1.jpg"}, {"width"=>1280, "height"=>960, "ratio"=>"4x3", "name"=>"medium1", "url"=>"https://media.muzooka.com/images/6762816/landscape/4x3/medium1.jpg"}, {"width"=>1280, "height"=>720, "ratio"=>"16x9", "name"=>"medium1", "url"=>"https://media.muzooka.com/images/6762816/landscape/16x9/medium1.jpg"}, {"width"=>1280, "height"=>540, "ratio"=>"21x9", "name"=>"medium1", "url"=>"https://media.muzooka.com/images/6762816/landscape/21x9/medium1.jpg"}, {"width"=>1920, "height"=>1920, "ratio"=>"1x1", "name"=>"medium2", "url"=>"https://media.muzooka.com/images/6762816/landscape/1x1/medium2.jpg"}, {"width"=>1920, "height"=>1440, "ratio"=>"4x3", "name"=>"medium2", "url"=>"https://media.muzooka.com/images/6762816/landscape/4x3/medium2.jpg"}, {"width"=>1920, "height"=>1080, "ratio"=>"16x9", "name"=>"medium2", "url"=>"https://media.muzooka.com/images/6762816/landscape/16x9/medium2.jpg"}, {"width"=>1920, "height"=>810, "ratio"=>"21x9", "name"=>"medium2", "url"=>"https://media.muzooka.com/images/6762816/landscape/21x9/medium2.jpg"}, {"width"=>2560, "height"=>2560, "ratio"=>"1x1", "name"=>"large1", "url"=>"https://media.muzooka.com/images/6762816/landscape/1x1/large1.jpg"}, {"width"=>2560, "height"=>1920, "ratio"=>"4x3", "name"=>"large1", "url"=>"https://media.muzooka.com/images/6762816/landscape/4x3/large1.jpg"}, {"width"=>2560, "height"=>1440, "ratio"=>"16x9", "name"=>"large1", "url"=>"https://media.muzooka.com/images/6762816/landscape/16x9/large1.jpg"}, {"width"=>2560, "height"=>1080, "ratio"=>"21x9", "name"=>"large1", "url"=>"https://media.muzooka.com/images/6762816/landscape/21x9/large1.jpg"}, {"width"=>3840, "height"=>3840, "ratio"=>"1x1", "name"=>"large2", "url"=>"https://media.muzooka.com/images/6762816/landscape/1x1/large2.jpg"}, {"width"=>3840, "height"=>2880, "ratio"=>"4x3", "name"=>"large2", "url"=>"https://media.muzooka.com/images/6762816/landscape/4x3/large2.jpg"}, {"width"=>3840, "height"=>2160, "ratio"=>"16x9", "name"=>"large2", "url"=>"https://media.muzooka.com/images/6762816/landscape/16x9/large2.jpg"}, {"width"=>3840, "height"=>1620, "ratio"=>"21x9", "name"=>"large2", "url"=>"https://media.muzooka.com/images/6762816/landscape/21x9/large2.jpg"}]
```

```
irb(main):013:0> muzooka.social_links
=> [{"type"=>"youtube", "id"=>"UC07Kxew-cMIaykMOkzqHtBQ", "url"=>"https://www.youtube.com/channel/UC07Kxew-cMIaykMOkzqHtBQ"}, {"type"=>"facebook", "id"=>"ladygaga", "url"=>"https://www.facebook.com/ladygaga"}, {"type"=>"spotify", "id"=>nil, "url"=>"https://open.spotify.com/artist/1HY2Jd0NmPuamShAr6KMms?autoplay=true&v=A"}, {"type"=>"twitter", "id"=>"ladygaga", "url"=>"https://twitter.com/ladygaga"}, {"type"=>"instagram", "id"=>"ladygaga", "url"=>"https://www.instagram.com/ladygaga"}, {"type"=>"soundcloud", "id"=>"ladygaga", "url"=>"https://www.soundcloud.com/ladygaga"}, {"type"=>"iheartradio", "id"=>"lady-gaga-39335", "url"=>"https://www.iheart.com/artist/lady-gaga-39335"}]
```

Supported Rubies
```
 > 2.6.1
 tested and recommended 2.6.5
```
 
 Author:
 ```
 Ivan Blazevic
 https://www.linkedin.com/in/ivan-bla%C5%BEevi%C4%87-1710b5a3/
 ```
