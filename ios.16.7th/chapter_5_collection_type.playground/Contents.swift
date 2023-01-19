//Creating an array
var shoppingList = ["Egg", "Meat"]
print(shoppingList.count)
print(shoppingList.isEmpty)

//Adding a new element to an array
shoppingList.append("Milk")
print("Original array:")
print(shoppingList)

shoppingList.insert("Cooking Oil", at: 1)
print("After array:")
print(shoppingList)

//Assigning a new value to a particular index
shoppingList[2] = "Soy Milk"
print(shoppingList)

//Removing an element from an array
shoppingList.remove(at: 1)
print(shoppingList)

//Iterating over an array
for shoppingListItem in shoppingList {
    print(shoppingListItem)
}

for item in shoppingList[1...] {
    print(item)
}

//Dictionary
var contactList = ["Shah": "+3463634", "Aamir": "+4363614464"]
print(contactList.count)
print(contactList.isEmpty)

//Adding a new element to a dictionary
contactList["Jane"] = "+452534535"
print(contactList.count)
contactList["Jane"] = "+3253452534535"
print(contactList.count)

//Removing an element from a dictionary
contactList["Jane"] = nil
print(contactList.count)
contactList["Jane"] = "+3253452534535"

var oldDictValue = contactList.removeValue(forKey: "Jane")
print(contactList)

for (name, contactNumber) in contactList {
    print("\(name): \(contactNumber)")
}

//Set
var movieGenres: Set = ["Horror", "Action", "Romantic Comedy"]
print(movieGenres.count)
print(movieGenres)

//Adding a new element to a set
movieGenres.insert("War")
print(movieGenres)

if movieGenres.contains("War") {
    print("movieGenres contains War")
} else {
    print("movieGenres doesn't contain War")
}

var oldSetValue = movieGenres.remove("Action")
print(movieGenres)

let movieGenres2: Set = ["Science Fiction", "War", "Fantasy"]
print(movieGenres.union(movieGenres2))
print(movieGenres.intersection(movieGenres2))
print(movieGenres.subtracting(movieGenres2))
print(movieGenres.symmetricDifference(movieGenres2))

let movieGenresSubset: Set = ["Horror", "Romantic Comedy"]
let movieGenresSuperset: Set = ["Horror", "Romantic Comedy", "War", "Science Fiction", "Fantasy"]
let movieGenresDisjoint: Set = ["Bollywood"]
print(movieGenres == movieGenres2)
print(movieGenresSubset.isSubset(of: movieGenres))
print(movieGenresSuperset.isSuperset(of: movieGenres))
print(movieGenresDisjoint.isDisjoint(with: movieGenres))

