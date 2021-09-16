# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  #if empty, return 0
  if arr.length == 0
    return 0
  end 
  
  #take in array of integers 
  total = 0
  i=0
  #return the sum of all elements
  while i<arr.length do
    total += arr.at(i)
    i += 1
  end
  return total 
end

def max_2_sum arr
  # YOUR CODE HERE
  #arr of integers 
  #return 0 if empty
  if arr.length == 0
    return 0
  #for one element arraym reutn the element
  elsif arr.length == 1
    return arr.at(0)
  #find 2 largest elements in the array
  else
    total = 0
    total = arr.sort[-1] + arr.sort[-2]
    #return the sum of its largest elements
    return total
  end
  
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  #take in array of integers and an separate integer n
  if arr.length == 0 #if array is empty
    return false
  #for one element array return false
  elsif arr.length == 1
    return false
  #check if any 2 elemets in arrray sum up to n 
  else
    #return true if any 2 elements sum up to n
    #arr1 = arr.slice_when {|i, j| i+j == n}
    return arr.combination(2).any? {|i, j| i+j == n}
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  #take in a string of name, return "Hello,"+name
  return "Hello, #{name}" # perform #{...} susbtitutions only once
end

def starts_with_consonant? s
  # YOUR CODE HERE
  #check if they are alphabetic
  str = s.downcase
  char = str[0]
  non_consonant = ['a','e','i','o','u']
  if s.length == 0
    return false
  else
    #if start with AEIOU then return false
    if non_consonant.include? char
      return false
    end
  end
  #return true if start with a consonant
  if char !~ /[[:alpha:]]/ #check if alphabetic
    return false
  else 
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  #check if the str is a binary
  if s.count("^0-1").zero? 
    #return true if str is binary # that is multuple of 4
    #conver the string to interger use .to_i and to since its a binary, convert from base 2 
    str = s.to_i(2)
    if str % 4 == 0 #if there is no reminder
      return true
    else
      return false
    end
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
