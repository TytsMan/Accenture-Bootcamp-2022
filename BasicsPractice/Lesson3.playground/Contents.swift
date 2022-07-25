/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */

import Foundation

var depositAmount: Double = 500_000
let depositPeriodInYears: Int = 5

let profitPerYearInput: Double = 1.15

for _ in 1...depositPeriodInYears{
    depositAmount *= profitPerYearInput
}
print("Amount of income after \(depositPeriodInYears) years will be \(profitPerYearInput) Eur. My total deposit will be \(depositAmount) Eur !")


/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */

var arrayOfIntegers: [Int] = []
for i in 1...10 {
    arrayOfIntegers.append(i)
}
var evenNumberArray: [Int] = []
for number in arrayOfIntegers {
    if number % 2 == 0 {
        evenNumberArray.append(number)
    }
}
dump(evenNumberArray)

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */

var num = 0
var shuflesCount = 0

while(num != 5) {

    num = Int.random(in: 1...10)
    shuflesCount += 1
}

print("Number 5 will be after \(shuflesCount) shuffles")


/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */

let height = 10
let progressPerDayTime = 2
let progressPerNightTime = -1

var progress = 0
var daysSpent = 0

for _ in 1... {
    progress += progressPerDayTime
    daysSpent += 1
    
    if progress >= height {
        break
    }
    
    progress += progressPerNightTime
}

print("bug will spend \(daysSpent) to reach top of the post")
print("bug")
