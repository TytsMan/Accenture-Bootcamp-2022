/*
 Exercise 1
 Create enum CalculationType as String, where will be: addition, subtraction, multiplication, division with String value
 */


enum CalculationType: String {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division = "/"
}

/*
 Exercise 1.1
 
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 
 Than use switch case to calculate and return Int result

    var result = numberOne
       
       switch calculationType {
       case .addition: result += numberTwo
        .....
       }
  print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
 
    return result
 
 */

func calculateResult(numberOne: Int, with numberTwo: Int, operation: CalculationType) -> Int {
    var result = numberOne
       
       switch operation {
       case .addition: result += numberTwo
       case .subtraction: result -= numberTwo
       case .multiplication: result *= numberTwo
       case .division: result /= numberTwo
       }
  
    print("Result:  \(operation.rawValue) \(numberOne) and \(numberTwo) = \(result)")
 
    return result
 
}

/*
Exercise 1.2
Declare two numbers.
Call func 4 times for all calculateResult
*/

let numberOne = 321
let numberTwo = 123

let resultOfAddition = calculateResult(numberOne: numberOne, with: numberTwo, operation: .addition)
let resultOfSubstraction = calculateResult(numberOne: numberOne, with: numberTwo, operation: .subtraction)
let resultOfMultiplication = calculateResult(numberOne: numberOne, with: numberTwo, operation: .multiplication)
let resultOfDivision = calculateResult(numberOne: numberOne, with: numberTwo, operation: .division)

/*
Exercise 2.1
Make example of struct Car with the name audiQ7
Make a copy of audiQ7 and name it audiTT.
Provide the correct name for audiTT
 
Than run getSpecs() for audiQ7 and audiTT
 */

struct Car: CustomStringConvertible {
    var name: String
    var engine: String
    var seats: Int
    
    var description: String {
        """
        Name: \(name),
        Engine: \(engine),
        Seats: \(seats);
        """
    }
}

let audiQ7 = Car(name: "audiQ7", engine: "v7", seats: 4)
var audiTT = audiQ7
audiTT.name = "audiTT"
audiTT.engine = "v9"
audiTT.seats = 2

print(audiQ7)
print(audiTT)
