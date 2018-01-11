// Collections and Control Flow

/*
 -------------------
 
 Arrays
 
 append - adds item to end of the array
 immutable types cannot change = let
 mutable type can change = var
 
 Subscripting - Taking name of array and adding [index] right after
 
 -------------------
*/

var todo: [String] = ["Finish course", "Buy groceries", "Respond to emails"]

// Add new item to the end of an array using the append method
todo.append("Walk dog")

// Concatenating two arrays
[1,2,3] + [4]

// Concatenating and array with literal todo
todo = todo + ["buy books"]

// Same operation with the unary addition
todo += ["buy pepsi"]

// Immutable Arrays
let list = ["Mow the Lawn"]

//list.append("poop") Error!


//Reading from arrays

todo[0]

let firstTask = todo[0]
let thirdTask = todo[4]


// Modifiying exsisiting values
// (Mutating an array)

todo[4] = "Brush teeth"

// Insert Using indexes
// (Inserting not replacing)
todo
todo.insert("Fart", at: 2)

//Removing Items from Arrays
// (This updates the entire array)
todo
todo.remove(at: 2)
todo

todo.count

















