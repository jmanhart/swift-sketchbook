/*
 ---------------
 Operator - Special symbol or phrase that is used to check, change, or combine values
 
 Operands - The targets (if it is Unary, Binary, Ternary)
 
 - Unary: Operate on a single target
 
 - Binary: Two Targets
 
 - Ternary: Three targets
 
 
 Assignment Operator
 
 ==  Equal to
 
 !=  Not Equal to
 
 >   Greater Than
 
 <   Less Than
 
 
 ---------------
 */

// 1 sq meter = 1 sq foot / 10.764

let height: Double = 12 // in ft
let width: Double = 10 // in ft

let area = height * width // Area in sq ft

let areaInMeters = area / 10.762

// Equals (Different from assignment)

let string1 = "Hello!"
let string2 = "Hello!"
let string3 = "hello"

string1 == string2
string1 == string3

// Not Equals

string1 != string2
string1 != string3

// Greater Than

1 > 2
2 > 1

"a" > "b"

// Enter your code below
let value = 200
let divisor = 5

let someOperation = 20 + 400 % 10 / 2 - 15
let anotherOperation = 52 * 27 % 200 / 2 + 5

// Task 1 - Enter your code below
let result = value % divisor

// Task 2 - Enter your code below
let isPerfectMultiple = result == 0



/*
 -------------------
 Operator Precedence
 
 Precedence Level
 
     * / % = 150
 
     + - = 140
 
 work from left to right
 -------------------
*/

var x = 100 + 100 - ((5 * 2) / 3) % 7


// Unary Operators

var levelScore = 0
// levelScore = levelScore + 1

levelScore += 1
levelScore -= 1

// Not Operator

let on = true
let off = !on








