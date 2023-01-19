//1. if statements
let isRestaurantOpen = true

if isRestaurantOpen {
    print("Restaurant is open")
}

let isRestaurantFound = false

if isRestaurantFound == false {
    print("Restaurant was not found")
}

var trafficLightColor = "Yellow"
if trafficLightColor == "Red" {
    print("Stop")
} else if trafficLightColor == "Yellow" {
    print("Caution")
} else if trafficLightColor == "Green" {
    print("Go")
} else {
    print("Invalid color")
}

//2. switch statements
trafficLightColor = "Green"
switch trafficLightColor {
case "Red":
    print("Stop")
case "Yellow":
    print("Caution")
case "Green":
    print("Go")
default:
    print("Invalid color")
}


//3. Optionals and optional binding
//var spouseName: String
//print(spouseName)

var spouseName1: String = ""
print(spouseName1)

var spouseName2: String?
print(spouseName2)

spouseName2 = "Ana"
print(spouseName2 ?? "No value in spouseName2")

if let spouseTempVar = spouseName2 {
    let greeting = "Hello, " + spouseTempVar
    print(greeting)
}
