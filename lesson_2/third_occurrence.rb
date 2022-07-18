# Write pseudo-code (informal and formal) then Ruby code for the following:
# a method that determines the index of the 3rd occurrence of a given character in a string. For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). If the given character does not occur at least 3 times, return nil.

# Informal pseudo-code:
# create a method that:
#   takes as input two strings (text to be searched and a search character)
#   if the search character occurs in the text at least 3 times
#     drill down into the text three times and return the index of the 3rd occurence
#   else
#     return nil

# Formal pseudo-code:
# START
# DEF method with inputs: text (string), character (string)
#   IF character occurs in text 3 or more times
#     index = index of the first occurence
#     index = use index as the starting place to find the second occurrence
#     index = use index as the starting place to find the third occurrence
#   ELSE
#     return nil
# END of method
#
# index = CALL method with arguments: search text (string), search term (string)
# PRINT index
# END


def third_occurrence(text, character)
  if text.count(character) > 2
    index = text.index(character)
    index = text.index(character, index + 1)
    index = text.index(character, index + 1)
  else
    return nil
  end
end

# Note that the search is case sensitive. The capital 'x' from 'Xavier' wasn't the third occurrence of 'x'.
index = third_occurrence('My codex on x-rays needs a little work. Xavier, would you examine it for me?','x')
p index
