##########################################################################################
                        #*********SUMMARY************#
##########################################################################################
#LEXICAL STRUCTURE
        #Comments
            #Embedded documents
            #Documentation comments
        #LITERALS
        #PUNCTUATION
        #IDENTIFIERS
            #Case Sensitivity
            #Unicode characters in identifiers
            #punctuation in identifiers
        #KEYWORDS
        #WHITESPACE
            #Newline as statement terminators
            #Spaces and method invocations
#SYNTACTIC STRUCTURE
        #BLOCK AND STRUCTURES IN RUBY
        #FILE STRUCTURE
        #PROGRAM ENCODING
            #Specifying program encoding
            #Source encoding and default external encoding
          #PROGRAM EXECUTION
##########################################################################################
                        #*********COMMENTS************#
##########################################################################################


#_________________________________________
#~~~~~~~~~~~~Single line comment~~~~~~~~~
#-----------------------------------------

#This is single line comment
            #or
xwer="#This is a string rather than comment"   #And this is a comment
ysdf=/#this is a regular expression/           #another comment

#_________________________________________
#~~~~~~~~~~~~~Multi-line comment~~~~~~~~~
#-----------------------------------------
#
#line 1 of comment
#line 2 of comment
#
            #or
=begin
  this is multi line comment 
  using begin and end
  Any code here will be commented out
  x=5;
=end
            #or
#=begin
  x=5
#=end
#_________________________________________
#~~~~~~~~~~Documentation comment~~~~~~~~~
#-----------------------------------------
#to include api documentation specially formatted comments that precede methods, class and module definitions
#used by rdoc tool which extract the comments and format them as html

=begin 
      1. Documentation comments must come immediately before the module, class or method whose API the document
      2. Usually written as multiline comments by using multiple #es or using =begin/=end
=end
# Ex . at page 27 "THE RUBY PROGRAMMING LANGUAGE"
#_________________________________________
#~~~~~~~~~~~~~ Data-Types~~~~~~~~~~~~~~~~~
#-----------------------------------------
#Numeric  ----- ClassHierarchy, 
  puts("ALL NUMERIC OBJECTS ARE IMMUTABLE")
  #Integer -- (Automatic conversion between Fixnum and Bignum according to result of mathematic operations)
  #--------------------------------------------------------------------------------------------------------
      p =0
      p=123
      p=123234345456567567678
      p=1_000_000_000
      
      p=0377 #octal 255
      p=0b1111_1111 #binary 255
      p=0xFF #hexadecimal 255
      puts ("Fixnum  -------- if integer value fits within 31 bits")
      #---------------------------------------------------------
            #commonly used and treated as immediate values rather than a reference .Because numbers are immutable .
            num=7			        
            num2=3
            Integer $num22=419
            puts("(with the exception of <<)
            operators in Ruby do not modify the original object.eg '+' operator, generally speaking, returns a
            new object:");
            
            $num22 = $num22+1
            puts"num22: #{$num22}"
            puts $num22.object_id 
            $num22 = $num22+1
            puts("num22: #{$num22}")
            puts $num22.object_id
            $num22 = $num22<<2;
            puts("num22: #{$num22}")
            puts $num22.object_id
            
                                                                  #v1.8                   v1.9
                  
            #puts num.type					                              #--FixNum(with warn)    error for type method
            puts num.class                                        #--FixNum               Fixnum
            puts num.class.superclass                             #--Integer              Integer
            puts num.class.superclass.superclass                  #--Numeric              Numeric
            puts num.class.superclass.superclass.superclass       #--Object               Object
            
            puts num.is_a? Numeric                                #--true                 All results same
            puts num.is_a? Integer                                #--true
            puts num.instance_of? Integer                         #--false
            puts num.instance_of? Numeric                         #--false--check in ruby 1.9
            puts num.is_a? Object                                 #--true
            puts num.is_a? Comparable                             #--true
            puts Numeric===num                                    #--true =>is_a? equivalqnt to ===
            puts num.respond_to? "+"                              #--true
            
            
            puts num/num2			                                    #--2
            
            puts 10**1000			                                    #--exact integer
            puts 9.9**1000        		                            #--Infinity

            puts (9.9**1000).class		                            #--Float
            puts 4**3**2			                                    #--262144-evaluated left-->right
            
            puts 0o100		                                        #-- 64
            puts 0x100			                                      #-- 256
            
      puts("Bignum  -------- else (represent integer of arbitrary size)")
      #---------------------------------------------------------------
            puts (num**50).class		                              #--BigNum--ruby automatically converts the datatype 
  puts("Float  --- Uses the native floating point representation of the platform")
  #--------------------------------------------------------------------------
            puts 5/2			                                        #-- 2
            puts 5/2.0			                                      #-- 2.5
            puts 1.5%0.4			                                    #-- 0.3
            puts -7/3			                                        #-- -3
            puts -7%2                                             #-- 1
            puts -7/2.4			                                      #-- -2.9166666
            puts 16**(1/4)			                                  #-- 1
            puts 16**(1/4.0)		                                  #-- 2.0
            0.0.finite? 			                                    #-- true
            (-1.0/0.0).finite? 		                                #-- false
            (+1.0/0.0).finite? 		                                #-- false
            0.0.infinite? 			                                  #-- nil
            (-1.0/0.0).infinite? 		                              #-- -1
            (+1.0/0.0).infinite? 		                              #-- 1
  #---------------------------------------------------------------------------------------------------------------
  puts("CONVERSION FROM ONE FORM TO ANOTHER")
  #---------------------------------------------------------------------------------------------------------------
            
            puts 120.chr                                          #-- x

            #convert to float using kernel float method
            puts Float(67)                                        #-- 67.0
            puts Float("77")                                      #-- 77.0
            puts Float(num)                                       #-- 7.0

            #Octal , Hexadecimal  etc and conversion

            puts 0o100			                                      #-- 64
            puts 0x100			                                      #-- 256

            #conversion
            puts '405'.oct			                                  #-- 261
            puts 405.to_s.oct		                                  #-- 261
            puts Float(405.to_s.oct)	                            #-- 261.0
            puts '15'.to_f			                                  #-- 15.0
            puts '15'.to_i			                                  #-- 15
            puts 15.to_f			                                    #-- 15.0


            puts '15'.to_f		                                    #-- 15.0
            puts '99.999'.to_f		                                #-- 99.999
            puts '99.999'.to_i		                                #-- 99
            puts ''		                                            #-- 
            puts '5 is!'.to_i		                                  #-- 5
            puts 'about 5'.to_i		                                #-- 0
            puts 'Your'.to_f		                                  #-- 0.0
            puts ''                                               #-- 
            puts 'stringy'.to_s                                   #-- stringy
            puts 3.to_i		                                        #-- 3
    #__________________________________________________________________________
            puts("NaN- NOT A NUMBER")
    #--------------------------------------------------------------------------
            value = 0.0/0.0;                                      #-- zero divided by zero is not-a-number
            puts(value < 0)                                       #-- false: it is not less than zero
            puts(value > 0)                                       #-- false: it is not greater than zero
            puts(value == 0)                                      #-- false: it is not equal to zero
            puts(value == 0.0/0.0)                                #-- false: it is not even equal to itself!
            puts(value.equal?(value))                             #-- this is true, of course
            val = 0.0/0.0
            puts(val.inspect)                                     #-- "NaN"
            
    
            
  #Complex --(not built in , Standard library)
  #BigDecimal -- (not built in , Standard library)
  #Rational -- (not built in , Standard library)
  #_________________________________________________________________________________________________
                                        puts("STRINGS")                                      
  # need to use backslach only if there is special treatment \n will need but \h not
  # #{} will need wi there is gloval,instance or class variable is used
  puts("strings are object of String class");
  puts("Strings are mutable objects");
  #-------------------------------------------------------------------------------------------------
            #Single quoted string
            puts 'This is simple string'
            puts 'let\'s try this one'
            puts 'this is first line \
n this is second one'
            puts 'first'\
' Continue in 2nd' \
' to the 3rd'
                 
            puts('a\b' == 'a\\b')                                 #-- true
            #Double quoted string
            puts "\t\"This quote begins with tab and ,end with newline\""
            puts "PI is about %4f" %Math::PI
            
            puts('To check for expression interpolated into the string')
            
            puts "this string literal 
has two lines \
but is written on three"
            
            $var = 'hello'
            # need to use backslach only if there is special treatment \n will need but \h not
            # #{} will need wi there is gloval,instance or class variable is used
            puts("#{$var} world") #curly braces can be omitted if string literal is simply a reference to global, instance or class variable
            
            
            puts("Arbitrary delemeters for string to avoid use of \  for special cases")
            
            puts %q(that's it') #for single quotes string # \ must be escaped(in every case)
            puts %(this is backslash \\ )
            puts %-that's it'-  #need to escape %
            puts %<<book><title>Ruby in \\ nutshell</title></book>>
            
            document=%q<<-
            	   This is a string litera
            	   two lines and abruptly ends->>
            puts document
            
            puts "STRINGS AS MUTABLE OBJECT"
            
            $str = "Hello"
            puts $str
            puts $str.object_id
            $str = $str + "World!"
            puts $str
            puts $str.object_id
            $str<<" Trivedi"
            puts $str
            puts $str.object_id
            
            puts "Chararcter Literals";
            A=?A
            puts A					#-- 65
            puts ?\C-x				#-- 24 cntrl+x
            puts ?A.chr

            #___________________________________________________
            puts "String Operators"
            #---------------------------------------------------
            num=5
            planet="Earth"

            puts "Hello"+" Planet"+num.to_s
            puts "Earth"<<" is awesome"
            puts "hi\n"*3				#-- hihihi
            puts ?A.chr				#-- A
            a=0					
            puts "#{a=a+1}"*3			#-- 111
            
            alphabet = "A"
            alphabet << ?B
            alphabet << 67
            print alphabet
            #alphabet <<256 error (value should be between 0-255)
            puts "Two string are equal if and only if they have same length and all the characters are same"
            #___________________________________________________
            puts "Accessing characters and Substrings"
            #---------------------------------------------------
            s='hello'
            puts s
            puts s[0].chr
            puts s[-1].chr
            #puts s[5].chr   		# invalid method for NilClass
            s[0]=?H
            puts s
            
            #___________________________________________________
            puts("ARRAYS IN RUBY PROGRAMMING LANGUAGE")
            #---------------------------------------------------
            puts("Arrays are untyped and mutable")
            puts("Arrays are dynamically resizable")
            
            a=5;y=2;
            a=[1,2,3,]
            a=[-10...0, 0...10]
            a=[x+y, x-y, x*y]
            a=[]
            a=%w[this is a test]
            a=%w|( { [ <|
            a =Array.new
            anils=Array.new(3)
            a=Array.new(4)
            a=Array.new(nils)
            a=Array.new(3) {|i| i+1}


            a = [0, 1, 4, 9,16]
            puts(a[0])
            puts(a[-1])
            puts(a[-2])
            puts(a[a.size-1])
            puts(a[-a.size])
            puts(a[8])
            puts(a[-8])
            
            a[0] = "zero"
            a[-1]=1...16
            a[8]=64
            a[-9]=81 #error
            
            a = ('a'...'e').to_a
            puts(a[0,0])
            puts(a[1,1])
            puts(a[-2,2])
            puts(a[0..2)])
            puts(a[-2..-1])
            puts(a[0...-1])
            
            a[0,2] = ['A','B'] #start -0 length-2
            
            
            
            
            