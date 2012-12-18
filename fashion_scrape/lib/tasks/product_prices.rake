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

require 'rubygems'
require 'mechanize'
require 'open-uri'
require 'pry'

agent = Mechanize.new

agent.get("http://www.yoox.com/US/designerIndex?dept=women")


page_links = Array.new
	agent.page.parser.css(".designer a").each do |ll|
		page_links << ll
		puts ll.text + "=>" + ll["href"]
end


puts page_links.size


#agent = Mechanize.new

#designers = agent.get("http://www.yoox.com/US/designerIndex?dept=women")

#page_links = Array.new 
#		agent.page.parser.css(".designer a").each do |link|
#			page_links << link
			#(:href => %r{^/us/women/shoponline/}i).each do |link|
#			end
#		link.each do
#			agent.page.link_with(:href => %r{^/us/women/shoponline/}i).click 
#			end

#designers.links_with(:text => '/us/women/shoponline/').click

#page_links = Array.new
#	agent.page.parser.css(".designer a").each do |ll|
#		page_links << ll
		
#		page_links.each do |ll|
#				agent.page.links_with(:href => '/us/women/shoponline/').click
#			end
			
		
		#puts ll.text + "=>" + ll["href"]
		#puts ll['href']
#end


#puts page_links.size

desc "Import Products"
task :import_products => :enviornment do
	end





