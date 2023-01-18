import UIKit

var greeting = "Hello, playground"


//Constants
let theAnswerToTheUltimateQuestion = 22
let pi = 3.14159
let myName = "Smith"

var currentTemperatureInCelsius = 13
var myAge = 33
var myLocation = "home"

myLocation = "ABC"

let isRaining = false
//isRaining = true //Error here

let sum = 12 + 45
let result = 56 - sum
let total = result * 4
let divide = total / 26

let a = 12
let b = 3.5
//let c = a + b //Error here
let c = Double(a) + b

//Strings
//let greeting = "Good" + "Morning" //Error here

let rating = 2.6
//var ratingResult = "The restaurant rating is " + rating //Error here

var ratingResult = "The restaurant rating is \(rating)"

var ratingResult1 = "The restaurant rating is " + String(rating)
