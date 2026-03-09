// Task 1: Number Analysis App
// Name: Mihretu Tesema
// Course: Software Engineering
// Addis Ababa University

/*
This program analyzes a list of integers and calculates:
- Maximum value
- Minimum value
- Sum of all numbers
- Average value

It demonstrates the use of lists, loops, functions,
and basic data processing in Dart.
*/


/// Finds the largest number in the list.
/// Uses a loop to compare each element.
int findMax(List<int> numbers) {
  int max = numbers[0];

  for (int num in numbers) {
    if (num > max) {
      max = num;
    }
  }

  return max;
}


/// Finds the smallest number in the list.
/// Uses a loop to track the lowest value.
int findMin(List<int> numbers) {
  int min = numbers[0];

  for (int num in numbers) {
    if (num < min) {
      min = num;
    }
  }

  return min;
}


/// Calculates the total sum of the numbers
/// using an accumulator pattern.
int calculateSum(List<int> numbers) {
  int sum = 0;

  for (int num in numbers) {
    sum += num;
  }

  return sum;
}


/// Calculates the average value of the list.
/// This function reuses calculateSum() instead
/// of recalculating the sum again.
double calculateAverage(List<int> numbers) {
  int sum = calculateSum(numbers);
  return sum / numbers.length;
}


void main() {

  // List of integers for analysis
  final numbers = <int>[34, -7, 89, 12, -45, 67, 3, 100, -2, 55];

  // Call functions and store results
  int maxValue = findMax(numbers);
  int minValue = findMin(numbers);
  int totalSum = calculateSum(numbers);
  double average = calculateAverage(numbers);

  // Print formatted results
  print('Number Analysis Results');
  print('========================');

  print('Numbers: $numbers');
  print('Maximum value : $maxValue');
  print('Minimum value : $minValue');
  print('Sum           : $totalSum');
  print('Average       : $average');
}



/*
---------------------------------------------------
Conceptual Questions
---------------------------------------------------

Q1. What is the difference between a List<int> and a List<dynamic> in Dart?
Why is it usually better to use a typed list like List<int>?

A List<int> stores only integer values, while List<dynamic> can store
values of any type such as integers, strings, booleans, or objects.
Using List<int> is better because it provides type safety, helps the
compiler detect errors earlier, and makes the code easier to understand.


Q2. In your findMax() function, why is it important to initialize the
running maximum variable to the first element of the list?

Initializing the maximum value with the first element ensures that the
comparison starts with a valid value from the list. If we started with
0 or another number, the function could produce incorrect results,
especially when all numbers in the list are negative.


Q3. Your calculateAverage() function calls calculateSum().
What software design principle does this demonstrate?

This demonstrates the principle of code reuse and modular programming.
Instead of duplicating the same logic to compute the sum, the function
reuses an existing function. This reduces errors, makes the program
easier to maintain, and keeps the code cleaner.


Q4. Describe what the for-in loop syntax does in Dart.

The for-in loop iterates directly over the elements of a collection.
It retrieves each value from the list one at a time without using an
index. A traditional for loop uses an index to access elements by
their position. The for-in loop is simpler when only the values are
needed, while a traditional loop is useful when the index is required.


Q5. What happens if someone calls findMax() with an empty list?

If the list is empty, the program will crash because numbers[0] does
not exist. To prevent this, the function could first check if the
list is empty and either return a default value or throw an error
message explaining that the list cannot be empty.

*/
