# Reflection

## QR1
The most challenging concept for me was asynchronous programming using async and await. At first it was confusing why functions return a Future instead of a normal value. I experimented in DartPad by removing the await keyword and noticed that the program printed "Instance of Future" instead of the actual result. After understanding that await pauses execution until the Future completes, the concept became much clearer.

## QR2
If the program needed to analyze a list of floating-point numbers instead of integers, several parts of the code would need to change. The list type would need to change from List<int> to List<double>, and the function parameter and return types would also need to be updated. This demonstrates the importance of planning data types carefully when designing a program.

## QR3
In a real Flutter application, asynchronous programming is commonly used when fetching data from a remote server or API. For example, a weather application may request weather data from an online service. The Future would resolve to the weather data, and while the user waits, the UI would typically display a loading indicator such as a progress spinner.

## QR4
Using separate functions like add(), subtract(), multiply(), and divide() makes the program easier to read and maintain because each function has a single responsibility. A single function with an operation parameter could reduce the amount of code, but it might make the logic harder to understand. Both approaches have advantages, but separating the operations improves clarity and maintainability.
