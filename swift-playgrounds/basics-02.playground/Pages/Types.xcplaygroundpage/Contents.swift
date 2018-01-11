// String Concatenation

let country = "United States of America"
let state = "Kansas"
let city = "Kansas City"
let street = "79th Place"
let buildingNumber = 1202

let address = country + state + city

// String Interpolation - Alot more powerful than concatenation
//  \("replace")
let interpolatedAddress = "\(country), \(state), \(city)"
let interpolatedStreetAddress = "\(street) \(buildingNumber)"


/*
 ---------------
 Integers
 ---------------
*/

let favoriteProgrammingLanguage = "Swift"
let year = 2014 // Int

/*
 ----------------------
 Floating Point Numbers
 ----------------------
 */

var version = 3.0 // Double


/*
 ---------------
 Boolean  True or False
 ---------------
 */

let isAwesome = true

/*
 ---------------
 Type Checking
     String,
     Double,
     Int,
     Bool
 
 TypeInfernce = Automatically deduce type (compile)
 
 Type Anotation = Foo: String
 
 ---------------
 */

let bestPlayer: String = "Tony Hawk"
let bestScore: Double = 300.3
let yearOfDeath: Int = 1993
let hallOfFame: Bool = true



let firstValue: Int = 2
let secondValue: Int = 8

var product = firstValue*secondValue
var output = "The product of \(firstValue) times \(secondValue) is \(product)"
















