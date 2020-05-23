# => Method that only prints out odd range of numbers
def odd_range(min, max)
new_odd_arr = []
  while min <= max
    if min % 2 != 0
      new_odd_arr << min
    end
  min += 1
  end
    return new_odd_arr 
end

print odd_range(11, 18) # => [11, 13, 15, 17]
puts
print odd_range(3, 7)   # => [3, 5, 7]


# => Reverse method that excludes orginal min and max
def reverse_range(min, max)
new_reverse_arr = []
  new_max = max - 1
  while new_max > min
    new_reverse_arr << new_max
    new_max -= 1
  end
  return new_reverse_arr
end

print reverse_range(10, 17) # => [16, 15, 14, 13, 12, 11]
puts
print reverse_range(1, 7)   # => [6, 5, 4, 3, 2]

# => Prints first half in a new array, will print out even or odd array based on the original array length
def first_half(array)
  first_half_arr = []
  i = 0
  if array.length % 2 == 0
    new_length = array.length / 2
  else
    new_length = ( array.length / 2 ) + 1
  end
  while i < new_length
    first_half_arr << array[i]
    i += 1
  end
  return first_half_arr 
end

print "\n "
print first_half(["Brian", "Abby", "David", "Ommi"]) 
# => ["Brian", "Abby"]
puts
print first_half(["a", "b", "c", "d", "e"])          
# => ["a", "b", "c"]

# =>Another way to do the above code

def first_half(array)
  new_array = []

  i = 0
  while i < (array.length / 2.0)
    ele = array[i]
    new_array << ele

    i += 1
  end

  return new_array
end

print first_half(["Brian", "Abby", "David", "Ommi"]) # => ["Brian", "Abby"]
puts
print first_half(["a", "b", "c", "d", "e"])          # => ["a", "b", "c"]

# => Factors of Array

def factors_of(num)
factor_arr = []
  i = 1
  while i <= num
    if num % i == 0
      factor_arr << i
    end
    i += 1
  end
  return factor_arr
end
print "\n"
print factors_of(3)   # => [1, 3]
puts
print factors_of(4)   # => [1, 2, 4]
puts
print factors_of(8)   # => [1, 2, 4, 8]
puts
print factors_of(9)   # => [1, 3, 9]
puts
print factors_of(16)  # => [1, 2, 4, 8, 16]

 # => Creates new array that prints out only odd numbers
def select_odds(numbers)
  odds_arr = []
  i = 0
  while i < numbers.length
    if numbers[i] % 2 != 0
      odds_arr << numbers[i]
    end
    i += 1
  end
  return odds_arr
end

print select_odds([13, 4, 3, 7, 6, 11]) # => [13, 3, 7, 11]
puts
print select_odds([2, 4, 6])            # => []

# => Method that creates new array that returns words longer than 4 characters
def select_long_words(words)
  long_words_arr = []
  i = 0
  while i < words.length
    if words[i].length > 4
      long_words_arr << words[i]
    end
    i += 1
  end
	return long_words_arr
end
# => Method that creates new array by combining two arrays unto one
print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) # => ["eating", "dinner"]
puts
print select_long_words(["keep", "coding"])      

def sum_elements(arr1, arr2)
  sum_arr = []
  i = 0
  arr_length = arr1.length
  while i < arr_length
    new_arr = arr1[i] + arr2[i]
    sum_arr << new_arr
    i += 1
  end
  return sum_arr
end
print sum_elements([7, 4, 4], [3, 2, 11])                            # => [10, 6, 15]
puts
print sum_elements(["cat", "pizza", "boot"], ["dog", "pie", "camp"]) # => ["catdog", "pizzapie", "bootcamp"]

# => Method that takes in max number and returns an array containing all numbers greater than 0 and are only divisible by 4 or 6, not both
def fizz_buzz(max)
new_arr = []
  i = 1
  while i < max
    if (i % 4 == 0 || i % 6 == 0) && !(i % 4 == 0 && i % 6 == 0)
      new_arr << i
    end
    i += 1
  end
  return new_arr
end
print "\n"
print fizz_buzz(20) # => [4, 6, 8, 16, 18]
puts
print fizz_buzz(15) # => [4, 6, 8]