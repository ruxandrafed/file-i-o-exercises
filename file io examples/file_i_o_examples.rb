# Creating a file and writing to it

fname = 'sample.txt'
somefile = File.open(fname, 'w')
somefile.puts 'Hello file!'
somefile.close

# somefile = File.open("sample.txt", "w")
# somefile.puts "Hello file!"
# somefile.close

# Block notation
# File.open("sample.txt", "w"){ |somefile| somefile.puts "Hello file!"}

somefile = File.open(fname, 'a')
somefile.puts 'Goodbye file!'
somefile.close

somefile = File.open(fname, 'a')
somefile.write 'Hello again! '
somefile.write 'Or not!'
#does not add \n at the end
somefile.close

require "open-uri"

remote_base_url = "https://en.wikipedia.org/wiki"
remote_page_name = "Ada_Lovelace"
remote_full_url = remote_base_url + "/" + remote_page_name

remote_data = open(remote_full_url).read
my_local_file = open("my-downloaded-page.html", "w")

my_local_file.write(remote_data)
my_local_file.close

# Reading from a file

file = File.open("sample.txt", "r")
contents = file.read
puts contents   #=> Lorem ipsum etc.

contents = file.read
puts contents   #=> ""

contents = File.open("sample.txt", "r"){ |file| file.read }
puts contents
#=>   Lorem ipsum etc.

# Draw in all the content and automatically parse it as an array
# Splits the file contents by the line breaks.
File.open("sample2.txt").readlines.each {|line| puts line}

# #eadline only reads a singular line
# #readline is more efficient that #readlines
# Because #readlines loads the entire file at once into memory.

file = File.open("sample3.txt", 'r')
while !file.eof?
   line = file.readline
   puts line
end

# require 'open-uri'
# url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"
# puts open(url).readline
# #=> THE TRAGEDY OF HAMLET, PRINCE OF DENMARK

