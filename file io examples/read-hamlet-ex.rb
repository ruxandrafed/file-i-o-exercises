# Write a program that:
# Reads hamlet.txt from the given URL
# Saves it to a local file on your hard drive named "hamlet.txt"
# Re-opens that local version of hamlet.txt and prints out every 42nd line to the screen

require 'open-uri'
url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"
local_fname = "hamlet.txt"
File.open(local_fname, "w"){|file| file.write(open(url).read)}

File.open(local_fname, "r") do |file|
   file.readlines.each_with_index do |line, idx|
      puts line if idx % 42 == 41 # prints out every 42nd line
   end
end

# Bonus Exercise: Print only Hamlet's lines
# Open hamlet.txt again but this time, print only the lines by Hamlet.

is_hamlet_speaking = false
File.open("hamlet.txt", "r") do |file|
   file.readlines.each do |line|

      if is_hamlet_speaking == true && ( line.match(/^  [A-Z]/) || line.strip.empty? )
        is_hamlet_speaking = false
      end

      is_hamlet_speaking = true if line.match("Ham\.")

      puts line.gsub(/\[.*\]/, "") if is_hamlet_speaking == true
   end
end
