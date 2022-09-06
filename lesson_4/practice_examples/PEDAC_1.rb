# Try to work through the "understand the problem" part of this problem on your own, and write the input, output, and rules for it. We'll provide a solution below.

# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []


# Input: string
# Output: array of substrings
# Rules:
#   Explicit Rules:
#     -create a method named 'palindrome_substrings'
#     -returns any palindrome (spelled the same forwards and backwards) substrings
#     -palindrones are case sensitive

#   Implicit Rules:
#     -returned values don't need to be surrounded by spaces (partial words are valid)
#     -return empty array if input has no palindromes
#     -return empty array if input is empty
#     -characters can be part of more than one palindrome

# Questions:
#   -Can I assume strings will be the only input type?
#   -Will special characters and/or numbers within a string be considered?
#   -What does it mean to treat palindrone words case sensitively?

# Algorithm:
#  - initialize a result variable to an empty array
#  - create an array named substring_arr that contains all of the substrings of the input string that are at least 2 characters long.
#  - loop through the words in the substring_arr array.
#  - if the word is a palindrome, append it to the result array
#  - return the result array


# The substrings method algorithm:
# Higher level (rough draft) pseudocode
# for each starting index from 0 through the next to last index position
  # for each substring length from 2 until there are no substrings of that length
    # extract the substring of the indicated length starting at the indicated index position
  # end of inner loop
# end of outer loop.

# Lower level (more refined) pseudocode
# - create an empty array called `result` that will contain all required substrings
# - create a `starting_index` variable (value `0`) for the starting index of a substring
# - start a loop that iterates over `starting_index` from `0` to the length of the string minus 2
#   - create a `num_chars` variable (value `2`) for the length of a substring
#   - start an inner loop that iterates over `num_chars` from `2` to `string.length - starting_index`
#     - extract a substring of length `num_chars` from `string` starting at `starting_index`
#     - append the extracted substring to the `result` array
#     - increment the `num_chars` variable by `1`
#   - end the inner loop
#   - increment the `starting_index` variable by `1`
# - end the outer loop
# - return the `result` array

# Formal pseudocode
# START
#
#   /* Given a string named `string` */
#
#   SET result = []
#   SET starting_index = 0
#
#   WHILE starting_index <= length of string - 2
#     SET num_chars = 2
#     WHILE num_chars <= length of string - starting_index
#       SET substring = num_chars characters from string starting at index starting_index
#       append substring to result array
#       SET num_chars = num_chars + 1
#
#     SET starting_index = starting_index + 1
#
#   RETURN result
#
# END

def substrings(string)
  result = []
  starting_index = 0

  while starting_index <= (string.length - 2)
    num_chars = 2
    while num_chars <= string.length - starting_index
      substring = string[starting_index, num_chars]
      result << substring
      num_chars += 1
    end
    starting_index += 1
  end
  result
end

end

# Use this method to see if the input is equal to itself reversed.
def is_palindrome?(string)
  string == string.reverse
end

def palindrome_substrings(str)
  result = []

  substrings_arr = substrings(str)
  substrings_arr.each do |substring|
    result << substring if is_palindrome?(substring)
  end

  result
end

p palindrome_substrings("supercalifragilisticexpialidocious"); # ["ili"]
p palindrome_substrings("abcddcbA");   # ["bcddcb", "cddc", "dd"]
p palindrome_substrings("palindrome"); # []
p palindrome_substrings("");           # []
