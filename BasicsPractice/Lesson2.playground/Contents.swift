/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()

 */

let pi: Double = .pi
let secondNum: Double = 123.45

let sum: Double = pi + secondNum
print(sum)

/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 
 */

var numberOne: Int = 654321
var numberTwo: Int = 123456

let divide: Int = numberOne / numberTwo
let reminder: Int = numberOne % numberTwo
print("When dividing \(numberOne) by \(numberTwo), the result is \(divide), the remainder is \(reminder)")


/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */

var price: Double = 1000.0
let amountToBuy: UInt = 15

if amountToBuy >= 10 {
    price -= 150
} else if amountToBuy >= 5 {
    price -= 100
}

let totalSum: Double = price * Double(amountToBuy)
print("new: \(amountToBuy) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")


/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */

let userInputAge = "33a"
let userAge = Int(userInputAge)

if userAge != nil {
    print("User age is \(String(describing: userAge))")
} else {
    print("Bad input")
}



/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
 */

import Foundation

let calendar = Calendar(identifier: .gregorian)
let curDate = Date()

let formatter = DateFormatter()
formatter.dateFormat = "yyyy/MM/dd"
let birthDate = formatter.date(from: "1990/01/01")!

var totalYearsFromBirth = calendar.dateComponents([.year], from: birthDate, to: curDate).year!
var totalMonthFromBirth = calendar.dateComponents([.month], from: birthDate, to: curDate).month!
var totalDaysFromBirth = calendar.dateComponents([.day], from: birthDate, to: curDate).day!

print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")


/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */
//=================

let monthOfBirth = calendar.dateComponents([.month], from: birthDate).month!


switch monthOfBirth {
case 1...3:
    print("I was born in the first quarter")
case 4...6:
    print("I was born in the second quarter")
case 7...9:
    print("I was born in the third quarter")
case 10...12:
    print("I was born in the forth quarter")
default:
    print("Something went wrong! There is only 12 months in a year!")
}
