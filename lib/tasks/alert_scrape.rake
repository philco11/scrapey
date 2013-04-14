desc "Fetch alert prices"
task :fetch_prices => :environment do
  require 'nokogiri'
  require 'open-uri'
  
  Alert.find_all_by_price(nil).each do |product|
    url = "http://sfbay.craigslist.org/search/apa/sfc?zoomToPosting=&query=&srchType=A&minAsk=&maxAsk=1800&bedrooms=&nh=1&nh=3&nh=4&nh=6&nh=7&nh=8&nh=11&nh=12&nh=14&nh=15&nh=10&nh=24&nh=18&nh=19&nh=21&nh=23&nh=26&hasPic=1"""
    doc = Nokogiri::HTML(open(url))
    itemdate = item.at_css(".itemdate").text[/\$[0-9\.]+/]
    itemtitle = item.at_css(".contents, .pl a").text
    puts "#{itemtitle} + #{itemdate}"
  end
  
end