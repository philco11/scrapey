require 'rubygems'
require 'nokogiri'
require 'open-uri'



url = "http://sfbay.craigslist.org/search/apa/sfc?zoomToPosting=&query=&srchType=A&minAsk=&maxAsk=1800&bedrooms=&nh=1&nh=3&nh=4&nh=6&nh=7&nh=8&nh=11&nh=12&nh=14&nh=15&nh=10&nh=24&nh=18&nh=19&nh=21&nh=23&nh=26&hasPic=1"""

doc = Nokogiri::HTML(open(url))

@title = doc.css(".pl a").text
@date = doc.css(".itemdate").text

puts @title
puts @date







#title: .contents , .pl a
#date: .itemdate
#image: img