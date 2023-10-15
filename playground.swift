import Foundation

enum MathError: Error {
    case divisionByZero
    case operationIsNotSupported
}

func add(number1: Int?, number2: Int?) -> Int {
    return number1! + number2!
}

func subtract(number1: Int?, number2: Int?) -> Int {
    return number1! - number2!
}

func multiply(number1: Int?, number2: Int?) -> Int {
    return number1! * number2!
}

func divide(number1: Int?, number2: Int?) throws -> Int {
    if number2! != 0 {
        return number1! / number2!
    } else {
        throw MathError.divisionByZero
    }
}

let operation: String? = "/"
let number1: Int? = 5
let number2: Int? = 0 // Set number2 to 0 to trigger division by zero

var result: Int?

if let operation = operation, let number1 = number1, let number2 = number2 {
    do {
        switch operation {
            case "+":
                result = add(number1: number1, number2: number2)
            case "-":
                result = subtract(number1: number1, number2: number2)
            case "*":
                result = multiply(number1: number1, number2: number2)
            case "/":
                result = try divide(number1: number1, number2: number2)
            default:
                throw MathError.operationIsNotSupported
        }
        print("\(number1) \(operation) \(number2) = \(result)")
    } catch MathError.divisionByZero {
        print("Error: cannot divide by zero!")
    } catch MathError.operationIsNotSupported {
        print("Error: Operation \(operation) is not supported!")
    } catch {
        print("Error: An unexpected error occurred: \(error)")
    }
}
