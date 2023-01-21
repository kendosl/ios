//Class
class Animal {
    var name: String = ""
    var sound: String = ""
    var numberOfLegs: Int = 0
    var breathesOxygen: Bool = true
    
    func makeSound() {
        print(self.sound)
    }
}

let cat = Animal()
cat.name = "Cat"
cat.sound = "Mew"
cat.numberOfLegs = 4
cat.breathesOxygen = true
print(cat.name)
print(cat.sound)
print(cat.numberOfLegs)
print(cat.breathesOxygen)
cat.makeSound()

//SubClass
class Animal1 {
    var name: String
    var sound: String
    var numberOfLegs: Int
    var breathesOxygen: Bool
    
    init(name: String, sound: String, numberOfLegs: Int, breathesOxygen: Bool) {
        self.name = name
        self.sound = sound
        self.numberOfLegs = numberOfLegs
        self.breathesOxygen = breathesOxygen
    }
    
    func makeSound() {
        print(self.sound)
    }
    
    func description() -> String {
        return "name: \(self.name)\nSound: \(self.sound)\nNumberOfLegs: \(self.numberOfLegs)\nBreathesOxygen: \(self.breathesOxygen)"
    }
}

class Mammal: Animal1 {
    let hasFurOrHair: Bool = true
    
    //Overriding a superclass method
    override func description() -> String {
        return super.description() + "\nhasFurOrHair: \(self.hasFurOrHair)"
    }
}

let cat1 = Mammal(name: "Cat1", sound: "Sound1", numberOfLegs: 4, breathesOxygen: true)
print(cat1.name)
print(cat1.hasFurOrHair)
print(cat1.description())

//Struct
struct Reptile {
    var name: String
    var sound: String
    var numberOfLegs: Int
    var breathesOxygen: Bool
    var hasFurOrHair: Bool
    
    func makeSound() {
        print(self.sound)
    }
    
    func description() -> String {
        return "Structure: Reptile name: \(self.name) sound: \(self.sound) numberOfLegs: \(numberOfLegs) breathesOxygen: \(breathesOxygen) hasFurOrHair: \(self.hasFurOrHair)"
    }
}

var snake = Reptile(name: "Snake", sound: "Hiss", numberOfLegs: 0, breathesOxygen: true, hasFurOrHair: false)
print(snake.description())
print(snake.makeSound())

//Comparing value types and reference types
struct SampleValueType {
    var sampleProperty = 10
}

var a = SampleValueType()
var b = a
b.sampleProperty = 11
print(a.sampleProperty)
print(b.sampleProperty)

class SampleReferenceType {
    var sampleProperty = 10
}

var c = SampleReferenceType()
var d = c
c.sampleProperty = 43
print(c.sampleProperty)
print(d.sampleProperty)

//Enumeration
enum TrafficLightColor {
    case red
    case yellow
    case green
    
    func description() -> String {
        switch self {
        case .red:
            return "red"
        case .yellow:
            return "yellow"
        case .green:
            return "green"
        }
    }
}

var trafficLightColor = TrafficLightColor.red
print(trafficLightColor.description())
