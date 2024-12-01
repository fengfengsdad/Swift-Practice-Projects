import UIKit

enum DivisionError: Error {
    case dividerIsZero
}


func division(num1: Double, num2: Double)throws(DivisionError) -> Double {
    
    guard num2 != 0.0 else{ throw DivisionError.dividerIsZero}
    
    return num1/num2
}


func operation(a: Double, b: Double){
    do{
        try division(num1: a, num2: b)
    }catch{
        switch error {
        case .dividerIsZero:
            print("The divider is zero")
        }
    }
}

operation(a: 2.0, b: 2.0)

