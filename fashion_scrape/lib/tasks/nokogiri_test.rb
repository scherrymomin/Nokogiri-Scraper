#require 'rubygems'
#require 'nokogiri'
#require 'open-uri'

#url = "http://www.yoox.com/us/women/shoponline/alberta%20ferretti_d#/d=4&dept=women"

#doc = Nokogiri::HTML(open(url))
#puts doc.at_css("title").text
#puts doc.at_css(".newprice").text


#doc.css(".itemlink").each do |item|
#	title = (item.at_css(".brand").text) + (item.at_css(".microCategory").text)
#	retail_price = puts item.at_css(".oldprice").text
 #	sale_price = item.at_css(".newprice").text
#	puts "#{title} #{retail_price} #{sale_price}"
#	puts item.at_css(".brand")[:href]
#end

require 'rubygems'
require 'mechanize'
require 'nokogiri'
require 'open-uri'
require 'pry'

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



#agent.page.search(".desginer a")

agent = Mechanize.new

designers = agent.get("http://www.yoox.com/US/designerIndex?dept=women")

#loop do
	#designer = agent.page.parser.css(".designer a").text
#	designer.save
#	if link = agent.page.link_with(:href => %r{^us/women/shoponline/}i)
#		link.click
#	else
#		break
#		end
#	puts link.text
#	end

page_links = Array.new
	agent.page.links_with(:href => %r{us/women/shoponline/}i).each do |ll|
	#agent.page.parser.css(".designer a").each do |ll|
		page_links << ll
		#designer_links = page_links.find_all {:href => %r{^us/women/shoponline/}i}
		#puts ll.text
		#puts ll.text + "=>" + ll["href"]
end

page_links[1].click




#page_links.each do |ll|
#	ll.click
#end

#page_links[1].click

#puts page_links.size
	



#designers.links_with(:text => '/us/women/shoponline/').click

#page_links = Array.new
#	agent.page.parser.css(".designer a").each do |ll|
#		page_links <<    ll
		
#		page_links.each do |ll|
#				agent.page.links_with(:href => '/us/women/shoponline/').click
#			end
			
		
		#puts ll.text + "=>" + ll["href"]
		#puts ll['href']
#end


#puts page_links.size
binding.pry