import UIKit

/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */

let myTeam = "Beans"
let resultsOfGames = [
    "Brooklyn Nets":["99:89", "109:99"],
    "Dallas Mavericks":["87:93", "104:97"],
    "Washington Wizards":["117:112", "107:122"]
]

for (team, scores) in resultsOfGames {
    for score in scores {
        print("\(myTeam) against \(team) scored - \(score)")
    }
}

for (_, _) in resultsOfGames {
    print("my team is ", resultsOfGames)
}

/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */

let papers: [Int] = [5, 10, 20, 50, 100, 200, 500]
let total = papers.reduce(0, +)

/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */

extension Int {
    var isEven: Bool {
        self % 2 == 0
    }
}

func isEven(number: Int) -> Bool {
    number.isEven
}

let randomNumber = Int.random(in: 0...100)
let isEvenRandomNumber = isEven(number: randomNumber)

/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */

func createArrayNumbersInRange(from numberOne: Int, to numberTwo: Int) -> [Int] {
    Array(numberOne...numberTwo)
}

let arrayOfNumbers = createArrayNumbersInRange(from: 15, to: 555)

/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */

let newArrayOfNumbers = createArrayNumbersInRange(from: 11, to: 111)
let arrayOfEvenNumbers = newArrayOfNumbers.filter(\.isEven)
var arrayOfOddNumbers = newArrayOfNumbers
while let idx = arrayOfOddNumbers.firstIndex(where: isEven) {
    arrayOfOddNumbers.remove(at: idx)
}
arrayOfOddNumbers
