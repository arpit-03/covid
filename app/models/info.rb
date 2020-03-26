class Info < ApplicationRecord
 require 'nokogiri'
  require 'httparty'

  def self.initscrap
  	doc=HTTParty.get("https://www.mohfw.gov.in/")
  	@parse_page ||= Nokogiri::HTML(doc)
   
 infom= @parse_page.css('tbody')
 infosub=@parse_page.css('div.content.newtab').css('p')
 i=0
 


update_date=infosub.text.split('on ').last.split(' at ').first
update_time=infosub.text.split('on ').last.split(' at ').last.split(')').first

update_date=update_date.to_date
update_time=Time.parse(update_time).strftime("%H:%M:%S")

if(Info.all.count==0)
	ctime=Time.at(0).strftime("%H:%M:%S")
	cdate=Time.at(0).to_date

else
ctime=Info.last.time_created

ctime=ctime.strftime("%H:%M:%S")
cdate=Info.last.date_created.to_date
end

puts "ARPIT"

infom=infom[7].children
s=infom.length

if(update_date >cdate || update_time>ctime )

 infom.each do |row|
  puts i
puts i%2

 if (i%2==0 || i> s-6)
  i=i+1
  next
  
 end


if(!Ind1.find_by(name: row.children[3].text))

ind= Ind1.create(name: row.children[3].text, tcci: row.children[5].text.to_i , tccf: row.children[7].text.to_i ,cured: row.children[9].text.to_i, death: row.children[11].text.to_i)

else
Ind1.find_by(name: row.children[3].text).update(tcci: row.children[5].text.to_i , tccf: row.children[7].text.to_i ,cured: row.children[9].text.to_i, death: row.children[11].text.to_i)	
  end
   i=i+1
end
  Info.create(time_created: update_time,date_created: update_date, ttcci: Ind1.sum(:tcci), ttccf: Ind1.sum(:tccf), tcured: Ind1.sum(:cured), tdeath: Ind1.sum(:death))

end
  end
 
end
