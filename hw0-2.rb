=begin

File: hw0-2.rb
Purpose: To do a basic demonstration of string and regexp
Creator: Zach Wilson
Email: zachary.wilson@gmail.com
Updated 10/6/2013

Methods
- hello: concatenates hello and the name given (string)
- stats_with_consonant?: Verifies if a string starts with a consonant.
- binary_multiple_of_4?: Verifies if a string containing a number is a binary multiple of four

=end

def hello(name)
  # Adds the two strings together
  return "Hello, " + name
end


def starts_with_consonant?(str)
  # Checks for empty string frist
  if str.length == 0
    return false
  else
    first_char = str.chr
    
    # First checks for a letter
    if /\w/.match(first_char)
      # Second checks for vowels
      if /[aeiouAEIOU]/.match(first_char)
	return false
      else
	return true
      end
    else
      return false
    end
  end
end


def binary_multiple_of_4? (str)
  # Empty string check 
  if str.length < 3
    return false
  else
    size = str.length - 1
    for i in 0..size
      if /[^01]/.match(str[i])
	puts "INSIDE FOR!"
	return false
      end
    end
    
    if (str[size]=="0") && (str[size-1]=="0")
      return true
    else
      return false
    end
  end
end