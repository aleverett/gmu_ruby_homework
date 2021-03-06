# Return a reversed copy of the array
def reverse(an_array)
  return an_array.reverse
end

# Return a map of letters and counts of letters
# Letters should be lowercase before counting
# For example, histogram('Hello') returns {'h'=>1,'e'=>1,'l'=>2,'o'=>1}
def histogram(a_string)
  @results = {}
  @current_index=0
  while @current_index <= a_string.length-1
    @current_letter=a_string[@current_index].downcase
    if @current_letter =~ /[a-z]/
      if @results[@current_letter]
        @results[@current_letter]+=1
      else
        @results[@current_letter]=1
      end
    end
    @current_index+=1
  end
  return @results
end

# Sum all the numbers in the array
# an_array can contain lots of different things
# Be sure to only sum the numbers
# (Hint: the is_a? method might be useful here)
def sum_only_numbers(an_array)
  @sum = 0
  an_array.each do
    |item|
    if item.is_a? Numeric
      @sum+=item
    end
  end
  return @sum
end

# For i from 1 to 100, return an array.
# The elements in the array should follow this algorithm:
# If i is a multiple of 3, the element is 'Fizz'
# If i is a multiple of 5, the element is 'Buzz'
# If i is a multiple of 3 and 5, the element is 'FizzBuzz'
# Otherwise, the element is simply the value of i
# For example [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', ..., 14, 'FizzBuzz', ...]
def fizzbuzz
  @return_array = []
  @index = 1
  while @index <= 100 do
    if @index % 3 == 0 && @index % 5 == 0
      @return_array << 'FizzBuzz'
    elsif @index % 3 == 0
      @return_array << 'Fizz'
    elsif @index % 5 == 0
      @return_array << 'Buzz'
    else
      @return_array << @index
    end
    @index+=1
  end
  return @return_array
end

# Uncomment a line to test the function your are developing
# Type "ruby functions.rb" at the command line (Konsole) to run the script
# puts reverse([3,6,'dog']).inspect
# puts histogram('The Quick brown fox').inspect
# puts sum_only_numbers [4, 'foo', [ ], 27, :rain, 3.14]
# puts fizzbuzz.join("\n")
