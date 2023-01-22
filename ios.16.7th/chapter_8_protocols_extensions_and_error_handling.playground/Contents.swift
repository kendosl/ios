//Protocol
protocol CalorieCount {
    var calories: Int { get }
    func description() -> String
}

class Burger: CalorieCount {
    let calories = 800
    
    func description() -> String {
        return "This burger has \(calories) calories"
    }
}

struct Fries: CalorieCount {
    let calories = 500
    
    func description() -> String {
        return "This fries has \(calories) calories"
    }
}

var burger1 = Burger()
print(burger1.description())

var fries = Fries()
print(fries.description())

//Extensions
/*
 class ExistingType {
    property1
    method1()
 }
 
 extension ExistingType: ProtocolName {
    property2
    method2()
 }
 */

enum Sauce {
    case chili
    case tomato
}

extension Sauce: CalorieCount {
    var calories: Int {
        switch self {
        case .chili:
            return 20
        case .tomato:
            return 15
        }
    }
    
    func description() -> String {
        return "This sauce has \(calories) calories"
    }
}

let sauce = Sauce.tomato
print(sauce.description())

//Creating an array of different types of objects
let footArray: [CalorieCount] = [burger1, fries, sauce]

var totalCalories = 0
for food in footArray {
    totalCalories += food.calories
}

print(totalCalories)

//Exploring error handling
/*
 do {
    try expression1
    statement1
 } catch {
    statement2
 }
 */

enum WebsiteError: Error {
    case noInternetConnection
    case siteDown
    case wrongURL
}

func checkWebsite(siteUp: Bool) throws -> String {
    if siteUp == false {
        throw WebsiteError.siteDown
    }
    return "Site is up"
}

let siteStatus = true
try checkWebsite(siteUp: siteStatus)

let siteStatus1 = false
do {
    print(try checkWebsite(siteUp: siteStatus1))
} catch {
    print(error)
}
