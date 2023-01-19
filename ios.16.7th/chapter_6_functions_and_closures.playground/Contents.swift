//1. Function
func serviceCharge() {
    let mealCost = 80
    let serviceCharge = mealCost / 10
    print("Service charge is \(serviceCharge)")
}

serviceCharge()

func serviceCharge1(mealCost: Int) -> Int {
    return mealCost / 10
}

let serviceChargeAmount = serviceCharge1(mealCost: 150)
print(serviceChargeAmount)

//2. Custom argument labels
func serviceCharge2(forMealPrice mealCost: Int) -> Int {
    return mealCost / 10
}

let serviceChargeAmount1 = serviceCharge2(forMealPrice: 46)
print(serviceChargeAmount1)

//Nested functions
func calculateMonthlyPayments(carPrice: Double, downPayment: Double, interestRate: Double, paymentTerm: Double) -> Double {
    
    func loanAmount() -> Double {
        return carPrice - downPayment
    }
    
    func totalInterest() -> Double {
        return interestRate * paymentTerm
    }
    
    func numberOfMonths() -> Double {
        return paymentTerm * 12
    }
    
    return ((loanAmount() + (loanAmount() * totalInterest() / 100)) / numberOfMonths())
}

//Using function as return types
func makePi() -> (() -> Double) {
    func generatePi() -> Double {
        return 22.0 / 7.0
    }
    
    return generatePi
}

let pi = makePi()
print(pi())


//Using functions as parameters
func isThereAMatch(listOfNumbers: [Int], condition:(Int) -> Bool) -> Bool {
    for item in listOfNumbers {
        if condition(item) {
            return true
        }
    }
    
    return false
}

func oddNumber(number: Int) -> Bool {
    return (number % 2) > 0
}

let numberList = [2, 4, 6, 7]
print(isThereAMatch(listOfNumbers: numberList, condition: oddNumber))
