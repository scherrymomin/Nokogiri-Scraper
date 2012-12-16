desc "Fetch product prices"
task :fetch_prices => :environment do

require 'rubygems'
require 'nokogiri'
require 'open-uri'

Product.find_all_by_price(nil).each do |product|
url = "http://www.yoox.com/us/women/shoponline/alberta%20ferretti_d#/d=4&dept=women"

doc = Nokogiri::HTML(open(url))
puts doc.at_css("title").text
#puts doc.at_css(".newprice").text


doc.css(".itemlink").each do |item|
	title = (item.at_css(".brand").text) + (item.at_css(".microCategory").text)
	retail_price = puts item.at_css(".oldprice").text
 	sale_price = item.at_css(".newprice").text
	puts "#{title} #{retail_price} #{sale_price}"
	puts item.at_css(".brand")[:href]
end|
	
end