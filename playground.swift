import Foundation

func add(number1: Int?, number2: Int?) -> Int {
    return number1! + number2!
}

func subtract(number1: Int?, number2: Int?) -> Int {
    return number1! - number2!
}

func multiply(number1: Int?, number2: Int?) -> Int {
    return number1! * number2!
}

func divide(number1: Int?, number2: Int?) -> Int {
    if number2! != 0 {
        return number1! / number2!
    }
    print("Error: cannot divide by zero!")
    return 0
}


let operation: String? = "+"
let number1: Int? = 5
let number2: Int? = 7

var result: Int?

if let operation = operation, let number1 = number1, let number2 = number2 {
    switch operation {
        case "+": 
            result = add(number1: number1, number2: number2)
        case "-":
            result = subtract(number1: number1, number2: number2)
        case "*":
            result = multiply(number1: number1, number2: number2)
        case "/":
            result = divide(number1: number1, number2: number2)
        default:
            print("This operation is not supported!")
            result = 0
    }  
}

print("\(number1!) \(operation!) \(number2!) = \(result!)")
