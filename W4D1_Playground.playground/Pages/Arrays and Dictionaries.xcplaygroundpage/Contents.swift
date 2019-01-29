//: [Previous](@previous)
/*:
 ## Array and Dictionaries
 
  Arrays and dictionaries allow us to store a collection of data. Create arrays and dictionaries using brackets '[]'. Remember that arrays hold a collection data based on an index, so we can access a value by writing the desired index within the brackets. Arrays also begin at index `0`. Dictionaries hold a key and a value, and we can access a value by writing the desired key within the brackets.
 */

// We can declare an array with square brackets syntax
var myNumberArray = [1,2,3]
print("The value at index 1 is: \(myNumberArray[1])")

// We can declare a dictionary with square brackets and key/value data
var myDictionary = ["Students" : 5, "Teachers" : 2]

// This is how we add a new key/value to our dictionary
myDictionary["Principal"] = 1

/*:
 - Experiment:
 Try creating an array and dictionary using `'let'` vs `'var'` then try adding something to them. What do you notice? For the array, you can use a method called 'append' to add something to it.
 */
var myArray = ["a", "b", "c" ,"d"]
var myDict = ["a" : 1, "b" : 2, "c" : 3]
myArray.append("e")

print("The value at index 1 is: \(myArray[4])")
myDict["d"] = 4

print("The value at d is: \(myDict["d"] ?? 16)")



/*:
 - Experiment:
 Try creating an empty array with an explicit type `[type]`. What happens when you add a value that isn't the same type?
 */
var myArray2: [Int] = []
myArray2.append(11)


/*:
 - Experiment:
 Try creating an empty dictionary with an explicit type. `[keyType: valueType]`
 */
var myDict2: [String: Int] = [:]

/*:
 - Experiment:
 Create an array with any values of your choice. Play around with accessing a value at a certain index. Then try playing with the following methods of an array and find out what they do:
 - append
 - insert
 - removeAt
 - removeAll
 - reverse
 - count
 */
myArray2 = [12, 25, 72, 13]
myArray2.append(191)
myArray2.insert(20, at: 1)
myArray2.remove(at: 3)
//myArray2.removeAll()
myArray2.count
print("\(myArray2)")
myArray2.reverse()
myArray2.removeAll()

/*:
 - Experiment:
 Create a dictionary with any values of your choice. Play around with accessing a value by its key. Try keys using different case sensitivity, what happens? Then try playing with the following methods of a dictionary and find out what they do:
 - removeValue
 - isEmpty
 - count
 */
myDict2 = ["a" : 1, "b" : 2, "c" : 3]
myDict2.count
myDict2.isEmpty
myDict2.removeValue(forKey: "c")
print("\(myDict2)")



/*:
 - Callout(Challenge):
  Declare a mutable dictionary with the following names and their salaries
 
    John - $50000
 
    Jane - $70000
 
    Karen - $62000
 
    On the next line, add this last person's info: Bob - $45000
 */
var salaryDict: [String:Int] = ["John" : 50000, "Jane" : 70000, "Karen" : 62000]
salaryDict["Bob"] = 45000
print("\(salaryDict)")


//: [Next](@next)
