filename = 'sample.txt'

if File.exists?(filename)
   puts "#{filename} exists"
else
  puts
end

filename2 = 'sample10.txt'

if File.exists?(filename2)
  puts "#{filename2} exists"
else
  puts "#{filename2} doesn't exist"
end

dirname = "data-files"
Dir.mkdir(dirname) unless File.exists?(dirname)
File.open("#{dirname}/new-file.txt", 'w'){|f| f.write('Hello world!')}

# count the files in the directory
puts Dir.glob('data-files/*').length

# count all files in the directory and in sub-directories
puts Dir.glob('data-files/**/*').length

# list just PDF files, either with .pdf or .PDF extensions:
puts Dir.glob('data-files/*.{pdf,PDF}').join(",\n")

# Exercise: Find the top 10 largest files
# Using the Dir.glob and File.size methods, write a script that targets a directory – and all of its subdirectories – and prints out the names of the 10 files that take up the most disk space.
# Point your script to any subdirectory. You will obviously get different results than I do.
# Hint: This exercise does not require a call to File.open


DIRNAME = "data-hold"
Dir.glob("#{DIRNAME}/**/*.*").sort_by{|fname| File.size(fname)}.reverse[0..9].each do |fname|
   puts "#{fname}\t#{File.size(fname)}"
end
