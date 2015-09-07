# require 'rubygems'
# require 'rest-client'

# wiki_url = "http://en.wikipedia.org/"
# wiki_local_filename = "wiki-page.html"

# File.open(wiki_local_filename, "w") do |file|
#    file.write(RestClient.get(wiki_url))
# end

# Block notation
# File.open("sample.txt", "w"){ |somefile| somefile.puts "Hello file!"}

require 'rubygems'
require 'rest-client'

wiki_url = "https://en.wikipedia.org/"
wiki_local_filename = "wiki-page.html"

File.open(wiki_local_filename, "w") do |file|
   file.write(RestClient.get(wiki_url))
end

File.open("wiki-page-block.html", "w"){ |file| file.write (RestClient.get("https://en.wikipedia.org/")) }
