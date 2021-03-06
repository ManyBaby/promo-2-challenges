def sum_odd_indexed(array)
  # TODO: computes the sum of elements at odd indices (1, 3, 5, 7, etc.)
  #       You should make use Enumerable#each_with_index
  odd_item =[]
  array.each_with_index do |item, index|
    odd_item << item if index.odd?

  end

  sum = 0
    odd_item.each do |item|
      sum += item.to_i
    end
  return sum
end


def even_numbers(array)
  # TODO: Return the even numbers from a list of integers.
  #       You should use Enumerable#select
  array.select do |item|
    item.even?
  end
end



def short_words(array, max_length)
  # TODO: Take and array of words, return the array of words not exceeding max_length characters
  #       You should use Enumerable#reject
  array.reject do |word|
      word.length > max_length
  end
end



def first_under(array, limit)
  # TODO: Return the first number from an array that is less than limit.
  #       You should use Enumerable#find
  array.find do |item|
    item < limit
  end
end


def add_bang(array)
  # TODO: Take an array of strings and return a new array with "!" appended to each string.
  #       You should use Enumerable#map
  array.map do |item|
    "#{item}!"
  end
end


def product(array)
  # TODO: Calculate the product of an array of numbers.
  #       You should use of Enumerable#reduce
  array.reduce(1, :*)
end

def sorted_pairs(array)
  # TODO: Reorganize an array into slices of 2 elements, and sort each slice alphabetically.
  #       You should make use of Enumerable#each_slice
  tableau = []
  array.each_slice(2) do |item|
    tableau << item.sort
  end
return tableau
end


