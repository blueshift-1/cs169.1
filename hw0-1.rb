# HW0.rb
# Zachary Wilson
# Email: Zachary.Wilson13@gmail.com
# Updated: 10/5/13

# This is a basic program that has 3 basic methods
# sum: Sums the values of the array
# max_2_sum: Sums the max 2 values in the imputted array
# sum_2_n?: Adds an array

def sum(array)
  # For Empty Arrays
  if array.length == 0
    return 0 
    
  # For Non-Empty Arrays
  else
    sumvalue = 0
    index = array.length - 1
    for i in 0..index
      sumvalue += array[i]
    end
    return sumvalue
  end
end

def max_2_sum (array)
  # For Empty Arrays
  if array.length == 0
    return 0
  
  # For Arrays of length 1
  elsif array.length == 1
    return array[0]
  # For Arrays of length 2 or more
  else
    size = array.length
    # Finds the largest 2 values
    array.sort!
    
    a = array[size-1]
    b = array[size-2]
    
    # Returns the sum of these values
    return a + b
  end
end

def sum_to_n? (array, n=0)
  
  # Returns the sume of the array and integer.
  return sum(array)+n
  
end