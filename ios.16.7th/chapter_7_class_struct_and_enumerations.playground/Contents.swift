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
