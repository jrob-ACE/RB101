Question 2
Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:
  A: ? is used with : as the ternary operator. ! is used as the not operator.
  1. what is != and where should you use it?
    A: != is the not equal to operator and is used in a conditional statement.
  2. put ! before something, like !user_name
    A: ! before a variable would give the opposite of the variables truthy value (i.e. if user_name is truthy, !user_name => false, and if user_name is falsey, !user_name => true).
  3. put ! after something, like words.uniq!
    A: It is a convention that when ! is placed at the end of a method, that method mutates the caller, however that is only a convention.  If no method_name! exists, then this would flag an error.
  4. put ? before something
    A: This is the ternary operator with form condition_statement ? expression_if_true : expression_if_false.
  5. put ? after something
    A: Raises an exception unless this is part of a method name.  By convention, when a method name is appended with ?, it means that the method returns a boolean value (i.e. true or false).
  6. put !! before something, like !!user_name
    A: !! before a vaiable would give the variables truthy value (e.g. !!nil => false, !!'banana' => true).

