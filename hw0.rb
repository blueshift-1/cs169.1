# HW0.rb
# Zachary Wilson
# Email: Zachary.Wilson13@gmail.com
# Updated: 10/5/13

# This is a basic program that has 3 basic methods
# sum: Sums the values of the array
# max_2_sum: Sums the max 2 values in the imputted array
# sum_2_n?: Adds an array

=begin
def sum(array)
  # For Empty Arrays
  if array([])
    return 0 
    
  # For Non-Empty Arrays
  else
    puts "ADD!"
  end
  
end
=end

def max_2_sum (@array[])
  # For Empty Arrays
  if @array.length == 0
    return 0
  
  # For Arrays of length 1
  elsif @array.length == 1
    return 
  # For Arrays of length 2 or more
  else
    # Finds the largest 2 values
    a = @array.sort [(array.length -1)]
    b = @array.sort [(array.length -2)]
    # Returns the sum of these values
    return a + b
  end
  
end

=begin
def sum_to_n? (array, n = 0)
  
  # Returns the sume of the array and integer.
  return sum(array)+n
  
end
=end

# TESTIN' VALUES
puts max_2_sum []