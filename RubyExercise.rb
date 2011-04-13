#split, chop, strip, upcase and downcase
#Understanding Hash and its use cases. 
#String methods : split, chop, strip, upcase and downcase. 
#Create a String object in an example and remove whitespace from it. 
#Split a string using whitespace and create an array. 
#Formatting strings using sprintf Using MD5 for generating Hashes. 
name = "This is a string"
puts "~~~~~~~~~~~~split method on String~~~~~~~~~~~"
puts "Divides string into substring based on delimeter"
puts "Take delimiter pattern and limit(no of string to be returned)"
splitString = name.split()
puts splitString[1]                   # => is
puts splitString[4]                   # => 
puts splitString[-1]                  # => string
puts splitString[-splitString.size]   # => this
puts splitString[-splitString.size-1] # =>

puts name.split
puts "--------------------------"
puts name.split(//)
puts "--------------------------"
puts name.split(//,3)
puts "--------------------------"
puts "--------------------------"
puts "--------------------------"
puts "--------------------------"
puts "--------------------------"
puts "--------------------------"
puts "~~~~~~~~~~~~chop method on String~~~~~~~~~~~"
puts("Returns a new String with the last character removed.  
If the string ends with \\r\\n, both characters are removed.
Applying chop to an empty string returns an empty string. 
String#chomp is often a safer alternative, as it leaves the 
string unchanged if it doesn't end in a record separator.")

puts "string\r\n".chop   #=> "string"
puts "string\n\r".chop   #=> "string\n"
puts "string\n".chop     #=> "string"
puts "string".chop       #=> "strin"
puts "x".chop.chop       #=> ""

puts "~~~~~~~~~~~~strip method on String~~~~~~~~~~~"
puts "Returns a copy of str with leading and trailing whitespace removed."
puts "   Hello!   "
puts "   Hello!   ".strip

puts "~~~~~~~~~~~~upcase/downcase method on String~~~~~~~~~~~"

puts "This is a String".upcase()
puts "This is a string".downcase()
#Array methods : join, flatten, collect, each, delete, reject, sort. 
#Iterate an array using "each" and print all the elements of the array. 
#Create a program which shows the difference between "each" and "collect" enumerators for an Array. 

#Hash methods : each, merge, replace, delete, sort. 
#Create a new Hash and merge new elements into it. 
#Delete the first element and print all the elements using "each".

