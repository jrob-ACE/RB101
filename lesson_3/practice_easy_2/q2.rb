# Starting with the following string, convert the string in the following ways (code will be executed on original munsters_description above):
  # "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
  # "The munsters are creepy in a good way."
  # "the munsters are creepy in a good way."
  # "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

munsters_description = "The Munsters are creepy in a good way."
p munsters_description.swapcase
p munsters_description.capitalize
p munsters_description.downcase
p munsters_description.upcase

# Extra using regexp
p munsters_description.gsub(/[a-ln-su-z]/,'*')

