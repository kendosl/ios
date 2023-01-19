//Range Operators and Loops
let myRange = 5...25
print(myRange)

let myRange1 = 3..<22
print(myRange1)

//for-in loop
for item in myRange {
    print(item)
}

for item in myRange1 {
    print(item)
}

for number in (0...5).reversed() {
    print(number)
}

for number in myRange1.reversed() {
    print(number)
}

//while loop
var y = 0
while y < 100 {
    y += 5
    print("y is \(y)")
}

//repeat-while loop
var x = 0
repeat {
    x += 5
    print("x is \(x)")
} while x < 40
