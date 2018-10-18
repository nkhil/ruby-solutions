



#####################################################

# Turn a string into an ASCII character

    def turn(str)
        str.split('').map{|i| i.ord}.join('').to_i
    end

    turn("cat")

#####################################################
# Given a year, say which century that year belongs to.

  def century(year)
    print (year.to_f/100).ceil
  end

  century(1701)

#####################################################
# Correct a string so it returns S instead of 5, I instead of 1 and O instead of 0

def correct(string)

  string.gsub("5", "S").gsub("1", "I").gsub("0", "O")  
  
end

correct("So510")

#####################################################

def basic_op(operator, value1, value2)
  #your code here
  case operator
  when "+"
    return value1 + value2
  when "-"
    return value1 - value2
  when "*"
    return value1 * value2
  when "/"
    return value1 / value2
    end
end

basic_op("*", 3, 4)

#####################################################


# return the numbe of odd numbers below n

def oddCount(n) 
  n/2
end

oddCount(9)


#####################################################

#Display only the unique values in an array

def unique(arr)
  arr.uniq
end

unique([1, 1, 2, 3, 4, 4, 5, 6, 7, 7, 8])


#####################################################

# Find and return duplicate values in an array

def find_and_return(arr)
  arr.select {|i| arr.count(i)>1}.uniq
end


find_and_return([1, 1, 2, 3, 3, 4, 5, 5, 6, 7, 7])



#####################################################

# You are going to be given a word. Your job is to return the middle character of the word. If the word's length is odd, return the middle character. If the word's length is even, return the middle 2 characters.

def middle_one(word)
  arr = word.split('')
  if arr.length.even?
    return "#{arr[(arr.length/2)-1]}#{arr[(arr.length/2)]}"
  else
    return arr[arr.length/2]
  end
end

middle_one("halo")

#####################################################

# Check if a string exists in an array

def check_string(arr, str)
  arr.include?str
end

check_string([1, 2, 3], 1)

#####################################################

#Implement a function that adds two numbers together and returns their sum in binary. The conversion can be done before, or after the addition.

def binary(a, b)
  num = a + b
  num.to_s(2)
end

binary(1, 1)

#####################################################

# Return the number (count) of vowels in the given string.

def vowels(str)
  arr = str.split('')
  new_arr = arr.select {|i| i =~ /[aeiou]/}
  new_arr.length
end

vowels("aeinnggh")


#####################################################

# A Narcissistic Number is a number which is the sum of its own digits, each raised to the power of the number of digits in a given base. In this Kata, we will restrict ourselves to decimal (base 10)

  def Narcissistic(num)
    arr = num.to_s.split('')
    raised = arr.length
    new_arr = arr.map {|i| i.to_i ** raised}
    new_arr.reduce(:+) == num
  end


  Narcissistic(154)




#####################################################

# create a function that takes a list of non-negative integers and strings and returns a new list with the strings filtered out.

  def filter_out(arr)
    arr.select {|i| i.is_a? Integer}
  end

  filter_out([1, 2, "nik", 34, "hello"])


#####################################################

Return sum of 2 smallest numbers
Create a function that returns the sum of the two lowest positive numbers given an array of minimum 4 integers. No floats or empty arrays will be passed.
For example, when an array is passed like [19,5,42,2,77], the output should be 7.

def sum(arr)
  new_arr = arr.sort
  new_arr[0] + new_arr[1]
end

sum([19,5,42,2,77])