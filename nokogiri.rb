require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('https://www.marthastewart.com/312598/brick-pressed-sandwich'))

search = doc.css('span.component-text')



list = doc.css('span.component-text')


list.each do |n|
	puts n.inner_html
end
