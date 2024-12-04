//
//  main.swift
//  MySwiftCalculator
//
//  Created by Fabiola Fonseca Rivera on 12/3/24.
//  This is a simple calculator console app with the capability of adding, substracting, multiplying and dividing two numbers. It includes simple input validation, to prevent nils. Additionally it features a continous menu display, unless the user chooses to exit.

import Foundation

while true {
    print("Welcome to Fabiola's First Swift Calculator!")
    
    print("Please enter the first number: ")
    
    let firstNumber = Double(readLine() ?? "" ) ?? 0 //if its nil or a letter it defaults to 0
    
    print("Please enter the second number: ")
    let secondNumber = Double(readLine() ?? "" ) ?? 0
    
    print("Menu of Operations")
    print("1. Add")
    print("2. Subtract")
    print("3. Multiply")
    print("4. Divide")
    print("5. Exit")
    
    let selection = Int(readLine() ?? "") ?? 0
   
    calculate(firstNumber:firstNumber, secondNumber:secondNumber, selection:selection)
}

func calculate(firstNumber:Double, secondNumber:Double, selection:Int) {
    
    var result:Double // not optional because it wont be nil
    
    switch selection {
    case 1:
        result = firstNumber + secondNumber
        print("Result: \(firstNumber) + \(secondNumber) = \(result)")
    case 2:
        result = firstNumber - secondNumber
        print("Result: \(firstNumber) - \(secondNumber) =\(result)")
    case 3:
        result = firstNumber * secondNumber
        print("Result: \(firstNumber) * \(secondNumber) = \(result)")
    case 4:
        if(secondNumber != 0){
            result = firstNumber / secondNumber
            print("Result: \(firstNumber) / \(secondNumber) = \(result)")
        }
        else{
            print("ERROR: Indefinite result") //division by zero
        }
    case 5:
        print("Thank you for trying Fabiola's First Swift Calculator!")
        exit(0)
    default :
        print("ERROR: Invalid selection. Please try again") //selection is not part of the menu
    }
}





