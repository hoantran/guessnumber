//
//  main.swift
//  GuessNumber
//
//  Created by Hoan Tran on 9/4/22.
//

import Foundation

func input() -> String {
    
    let keyboard = FileHandle.standardInput
    let inputData = keyboard.availableData
    return String(data: inputData, encoding:String.Encoding(rawValue: String.Encoding.utf8.rawValue))!
}

let lowerLimit = 1
let upperLimit = 10

let secret = Int.random(in: lowerLimit...upperLimit)

print("Enter a number between \(lowerLimit)-\(upperLimit)")
for guessCount in lowerLimit...upperLimit {
    if let guessString = readLine() {
        if Int(guessString) == secret {
            print("You got it!")
            break
        } else if guessCount == upperLimit {
            print("It says guess a number from \(lowerLimit)-\(upperLimit), idiot.")
            break
        } else {
            print("Guess again...")
        }
    }
}


print("\n\n\n")



//class GuessNumber {
//
//    public static void main(String[] args) {
//        Scanner sc = new Scanner(System.in);
//        Random randomClass = new Random();
//
//        int randomInt = randomClass.nextInt(11) - 1;
//        int guess = -1;
//        int guessCount = 0;
//
//        while (guess != randomInt) {
//            if(guessCount < 1) {
//                System.out.println("Guess a number from 1 to 10.");
//            } else {
//                if(0 < guess && guess < 11) {
//                    System.out.println("Guess again...");
//                } else {
//                    System.out.println("It says guess a number from 1 to 10, idiot.");
//                }
//            }
//
//            while(!sc.hasNextInt()) {
//                System.out.println(sc.nextLine() + " is an invalid input. Please input an integer.");
//            }
//
//            guess = sc.nextInt();
//            guessCount ++;
//        }
//
//        System.out.println("You got it! The number was " + randomInt + ".");
//
//    }
//}


