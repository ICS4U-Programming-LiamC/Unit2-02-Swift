//
//  factorial.swift
//
//  Created by Liam Csiffary
//  Created on 2022-03-31
//  Version 1.0
//  Copyright (c) 2022 IMH. All rights reserved.
//
// The Factorial program caclulates the 
// factorial of a number given by the user
//

// factorial function
func Factorial(num: Double) -> Double {
  // if 1 or 0 return 1
  if (num == 1 || num == 0) {
    return 1
  } else {
    // recalls the function and passes it num - 1
    return Factorial(num: num - 1) * num
  }
}

func main() {
  while (true) {
    // greets the user
    print("This program calculates the factorial of a natural number")
    
    // get user num to factorial
    print("Input exit should you want to exit the program")
    print("Input the number would you like to calculate the factorial of: ");
    let userInputStr = readLine();

    // exits should the user want to
    if (userInputStr == "exit") {
      break
    }
    
    // cast them into floats instead of strings
    let userInputDouble = Double(userInputStr!) ?? -1;
  
    // Incase they didn't enter two numbers
    if (userInputDouble == - 1) {
      print("You must input a natural number");
  
    // makes sure their inputs were positive and non 0
    } else if (userInputDouble >= 0 && userInputDouble.truncatingRemainder(
          dividingBy: 1) == 0) {
      let answer = Factorial(num: userInputDouble);
      print("The factorial of \(userInputDouble) is \(answer)\n");
    } else {
      print("Your numbers must be natural numbers");
    }
  }
}

main()
