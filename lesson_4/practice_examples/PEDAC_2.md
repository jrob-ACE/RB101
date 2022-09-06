# The PEDAC Process

## P: Understanding the Problem

- Establish the rules/ define the boundaries of the problem.
  - Assess available information
  - Restate explicit requirements (stated in problem description)
  - Identify implicit requirements(not stated in the problem description)
- Spend enough time and don't rush this step.

## E: Examples and Test Cases

- Act as assertions which help to codify (i.e. arrange according to a plan or system) the rules and boundaries of the problem.
- Can confirm or refute support assumptions
- Help to answer questions about implicit requirements


## D: Data Structures

- Help to reason with data logically
- Help to interact with data at an implementation level
- Thinking in data structures is part of the overall problems solving process
- Data structures are closely linked to algorithms
  - Algorithm is a set of steps from input to output
    - Involves structuring data in a certain way

## A: Algorithms

- A logical sequence of steps for accomplishing a task or objective
  - Closely linked to data Structures
  - Series of steps to structure data to produce the required output
- Stay abstract/high-level
  - Avoid implementation detail
  - Don't worry about efficiency for now.

## C: Implementing a solution in Code

- Translating solution algorithm to code
- Think about the algorithm in context of the programming language
  - Language features and constraints
  - Characteristics of data structures
  - Built-in functions/methods
  - Syntax and coding patterns
- Create test cases
- Code with intent (think about what each line of code is doing, and how it is adding to the overall solution)

**GeneralExample**

Given a string, produce a new string with every other word removed.

- Explicit requirements:
  - Input: string
  - Output: new string
  - Remove every other word from input string.

- Questions:
  - What do we mean by every other word?
  - How do we define a word in this context?
    - Words are delimited by spaces.

## Sum even number rows
Imagine a sequence of consecutive even integers beginning with 2. The integers are grouped in rows, with the first row containing one integer, the second row two integers, the third row three integers, and so on. Given an integer representing the number of a particular row, return an integer representing the sum of all the integers in that row.

### Extract the explicit and implicit requirements of the problem.

**Rules / Requirements**
- Sequence of even integers
- Sequence begins with '2'
- Integers are consecutive
- Sequence is grouped into rows
- Each row is incrementally larger
- Row number equals the number of elements in the row
  - Row 1 has 1 element, row 2 has 2 elements, etc.
- Input: a single integer
  -Identifies a 'row', which is a subset of a sequence of integers.
- Output: a single integer
  - The sum of the integers in the row identified by the input integer.

- Sequence: 2, 4, 6, 8, 10, 12, 14, 16, 18, ...
<!--
#| ...-->
1| 2
2| 4, 6
3| 8, 10, 12
4| 14, 16, 18, 20
5| ...

- How to create the structure?

**Examples**

row number: 1 --> sum of integers in row: 2
row number: 2 --> sum of integers in row: 10
row number: 4 --> sum of integers in row: 68

2 --> 2
4, 6 --> 10
8, 10, 12 --> 30
14, 16, 18, 20 --> 68

**Data Structure**
1| 2
2| 4, 6
3| 8, 10, 12
4| 14, 16, 18, 20
....

- Overall structure represents a sequence as a whole
- Individual rows within overall structure
- Individual rows in a set order in context of sequence
- Individual rows contain integers
- Can assume that integers are in a set order in the context of the sequence.

[
  [2],
  [4, 6],
  [8, 10, 12],
  [14, 16, 18, 20],
  ....
]

**Algorithm**

1. Create an empty 'rows' array to contain all of the rows.
2. Create a 'row' array and add it to the overall rows array.
3. Repeat step 2 until all the necessary rows have been created.
  - All rows have been created when the length of the 'rows' array is equal to the input integer.
4. Sum the final row in the rows array.
5. Return the sum of the final row.

*Problem: Create a Row*

Rules:
- Row is an array
- Arrays contain integers
- Integers are consecutive even numbers
- Integers in each row form part of an overall larger sequence
- Rows are of different lengths
- Input: the information needed to create the output
  - Row starting integer
  - Length of the row
- Output: the row itself: '[8, 10, 12]'

Examples:
start: 2, length: 1 --> [2]
start: 4, length: 2 --> [4, 6]
start: 8, length: 3 --> [8, 10, 12]

Data Structures:
- An array of integers

Algorithm:
1. Create an empty 'row' array to contain the integers
2. Add the starting integer
3. Increment the starting integer by 2 to get the next integer in the sequence
4. Repeat steps 2 and 3 until the array has reached the correct length
5. Return the 'row' array
