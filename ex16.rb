#filename is an argument from the command line
filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you aren't down, hit CTRL-C."
puts "If you ARE down, hit RETURN"

# program checks what key the user pushes
$stdin.gets

#opens the TXT file
puts "Opening the file..."
target = open(filename, 'w')

#truncate(0) erases the file
puts "Truncating the file. PEACE."
target.truncate(0)

puts "Now I'll ask for 3 lines."
print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "And finally, we close it."
target.close


