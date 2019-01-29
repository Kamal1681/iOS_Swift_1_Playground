//: [Previous](@previous)
/*:
 ## Functions

 A function is a set of statements grouped together to perform a task. Functions can take in zero or many parameters and the function can also return a value or return nothing. Below you can see the different structures of a function of how you can write them.
 */
/*:
 - Callout(Structure): This function structure does not include any parameters and does not return anything
 
 - Declare the `func` keyword
 - The name of the function `'sayHello'`
 - Open and close parentheses
 - Open and close braces
*/
func sayHello(){
    print("Hello")
}
/*:
 - Callout(Structure): This function takes in a single parameter and does not return any values
 
 - Declare the `func` keyword
 - The name of the function `'sayHello'`
 - **Open and close parentheses with a parameter called 'toPerson' of type `String`**
 - Open and close braces
 */
func sayHello(toPerson: String){
    print("Hello \(toPerson)")
}
/*:
 - Callout(Structure): This function takes in a single parameter and returns a value of type `String`
 
 - Declare the `func` keyword
 - The name of the function `'sayHello'`
 - Open and close parentheses with a parameter called 'toPerson' of type `String`
 - A return value of type `String` represented by the `->`
 - Open and close braces
 */
func sayHello(toPerson: String) -> String{
    return "Hello \(toPerson)"
}
/*:
 - Experiment:
 Try calling all of the functions above. They all have the same function name, but the compiler doesn't complain. Can you think of why this might be?
 */
sayHello()
//sayHello(toPerson: "Bob")
//sayHello(toPerson: "Bob")
/*:
 - Experiment:
 Try creating your own function that accepts two parameters of any type you choose. Have the function print out the two parameters and test your function.
 */
func printTwo (firstArgument: String, secondArgument: String) {
    print ("\(firstArgument) \(secondArgument)")
}
printTwo(firstArgument: "hello", secondArgument: "world")

/*:
 - Callout(Challenge):
 Create four separate functions to add, subtract, multiple, and divide with two parameters given to it and returns a number result. Try testing each one afterwards.
 
 */
func add (firstArgument: Double, secondArgument: Double) -> Double {
    return firstArgument + secondArgument
}
add(firstArgument: 1, secondArgument: 33)

func sub (firstArgument: Double, secondArgument: Double) -> Double {
    return firstArgument - secondArgument
}
sub(firstArgument: 1, secondArgument: 33)

func mul (firstArgument: Double, secondArgument: Double) -> Double {
    return firstArgument * secondArgument
}
mul(firstArgument: 1, secondArgument: 33)

func div (firstArgument: Double, secondArgument: Double) -> Double {
    return firstArgument / secondArgument
}
div(firstArgument: 1, secondArgument: 33)
/*:
 - Callout(Challenge):
 Create your own 'reverse' function that takes in an array of Int, reverses the order of the array, and returns the newly reversed array of Int. The array class has its own 'reverse' method, but do not use it for this challenge.
 */
func reverseArray (myArray: [Int]) -> [Int] {
    var myReveresedArray : [Int] = []
    for i in 0..<myArray.count {
        myReveresedArray.append(myArray[myArray.count - 1 - i])
    }
    return myReveresedArray
}
reverseArray(myArray: [2,2,6,4,5])
/*:
 ## Closures
 
 Closures are also a set of statements grouped together but the closure can be stored and passed around and executed somewhere else.
 
 - Note:
 A closure in Swift is similar to blocks in Objective-C
 */
/*:
 For example, the UIViewController has a 'dismiss' method.
 
 `func dismiss(animated flag: Bool, completion: (() -> Void)? = nil)`
 
 The 'completion' part of it is the completion handler which is a closure. It will execute that block of code when the dismiss action has completed.
 */
/*:
 - Callout(Structure): This is storing a closure into a variable called 'sayHelloClosure'.
 
 - Start with the open braces
 - The first '()' indicates it takes no parameters
 - The -> represents what a type it will return
 - The second '()' indicates it does not return any value
 - The 'in' keyword separates the type declaration from the body
 - Close braces
 */
var sayHelloClosure = { () -> () in
    print("Hello from closure")
}
/*:
 - Callout(Structure): This is storing a closure into a variable called 'sayHelloClosureToPerson'.
 
 - Start with the open braces
 - The first '()' indicates it takes one parameter 'name'
 - The -> represents what a type it will return
 - The second '()' indicates it does not return any value
 - The 'in' keyword separates the type declaration from the body
 - Close braces
 */
var sayHelloClosureToPerson = { (name: String) -> () in
    print("hello \(name)")
}
/*:
 - Callout(Structure): This is storing a closure into a variable called 'sayHelloClosureWithReturn'.
 
 - Start with the open braces
 - The first '()' indicates it takes one parameter 'name'
 - The -> represents what a type it will return
 - The `'String'` after the arrow indicates it returns a `String` type
 - The 'in' keyword separates the type declaration from the body
 - Close braces
 */
var sayHelloClosureWithReturn = { (name: String) -> String in
    return "Hello \(name)"
}
/*:
 - Experiment:
 Try calling all of the closures above. What do you notice that is different from calling a function?
 */
sayHelloClosure()

//sayHelloClosureToPerson("Bob")

sayHelloClosureWithReturn("Bob")


/*:
 - Experiment:
 Try creating your own closure that accepts two parameters of any type you choose. Have the closure print out the two parameters and test your closure.
 */
var aClosure = { (firstInt: Int, secondInt: Int) -> () in
    print(firstInt, secondInt)
}
aClosure(3, 5)


/*:
 - Experiment:
 Declare a variable with an explicit closure type: `(String) -> (String)`. This closure type says it takes one parameter of type String and returns a variable of type String.
 */

/*:
 - Callout(Challenge):
 Create a closure with at least two parameters of your choice and decide whether or not it returns anything. Then create a function that takes in your closure as a parameter and one additional parameter of your choice.
 */
//: [Next](@next)
var oneClosure = { (integerOne: Int, integerTwo: Int) -> Int in
    return integerOne * integerTwo
}

func usingClosure( aBoolean: Bool, closure: (Int, Int) -> Int) {
    if aBoolean {
        print(closure(4, 2))
    }
}

usingClosure(aBoolean: true, closure: oneClosure)
