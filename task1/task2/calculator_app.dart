// Task 2: Async Calculator App
// Name: Mihretu Tesema
// Course: Software Engineering
// Addis Ababa University

/*
This program demonstrates object-oriented programming
and asynchronous programming in Dart.

The Calculator class performs arithmetic operations and
simulates delayed computation using Future, async, and await.
*/

import 'dart:async';

class Calculator {

  /// Name of the calculator
  final String name;

  /// Constructor
  Calculator(this.name);

  /// Adds two numbers
  double add(double a, double b) => a + b;

  /// Subtracts the second number from the first
  double subtract(double a, double b) {
    return a - b;
  }

  /// Multiplies two numbers
  double multiply(double a, double b) {
    return a * b;
  }

  /// Divides two numbers
  /// Throws an error if division by zero is attempted
  double divide(double a, double b) {
    if (b == 0) {
      throw ArgumentError('Cannot divide by zero.');
    }
    return a / b;
  }

  /// Asynchronous computation method
  /// Simulates a delay before returning the result
  Future<double> computeAsync(double a, double b, String operation) async {

    double result;

    switch (operation) {
      case 'add':
        result = add(a, b);
        break;

      case 'subtract':
        result = subtract(a, b);
        break;

      case 'multiply':
        result = multiply(a, b);
        break;

      case 'divide':
        result = divide(a, b);
        break;

      default:
        throw ArgumentError('Unknown operation: $operation');
    }

    // Simulate a delay of 1.5 seconds
    await Future.delayed(Duration(seconds: 1, milliseconds: 500));

    return result;
  }

  /// Displays the result of a calculation
  /// Includes error handling with try-catch
  Future<void> displayResult(double a, double b, String operation) async {

    try {
      final result = await computeAsync(a, b, operation);

      print('$operation($a, $b) = $result');

    } catch (error) {

      print('Error: $error');

    }
  }
}


Future<void> main() async {

  final calculator = Calculator('MyCalculator');

  print('--- ${calculator.name} ---');

  await calculator.displayResult(10, 4, 'add');
  await calculator.displayResult(10, 4, 'subtract');
  await calculator.displayResult(10, 4, 'multiply');
  await calculator.displayResult(10, 4, 'divide');
  await calculator.displayResult(15, 3, 'divide');
  await calculator.displayResult(10, 0, 'divide');

  print('All calculations complete.');
}


/*
---------------------------------------------------
Conceptual Questions
---------------------------------------------------

Q6. Difference between synchronous and asynchronous functions.

A synchronous function runs immediately and blocks execution
until it finishes. An asynchronous function allows the program
to continue running while waiting for a result, usually returned
as a Future. In this program, divide() is synchronous because it
performs a simple calculation, while computeAsync() is asynchronous
because it simulates a delayed operation using Future.delayed().


Q7. Purpose of the await keyword.

The await keyword pauses execution of an async function until the
Future completes and returns a value. If await is not used, the
program will return a Future object instead of the actual result,
which may appear as "Instance of Future<double>" in the output.


Q8. Purpose of try-catch in displayResult().

The try-catch block prevents the program from crashing when an
exception occurs. If division by zero happens, the error is caught
and a user-friendly message is printed instead of stopping the
entire program.


Q9. Why divide() throws ArgumentError.

Throwing an ArgumentError allows the calling function to decide
how to handle the error. This follows the principle of separation
of concerns and keeps the calculation logic separate from error
handling.


Q10. Purpose of async on main().

The async keyword allows the main() function to use the await
keyword to wait for asynchronous operations. Without async, we
would not be able to use await directly in main().
*/
