//
//  main.swift
//  GuardKeywordInSwift
//
//  Created by Pritam Dash on 16/06/22.
//
/*
Notes :
Guard is used when you want an early exit from the code if your conditions aren't met.
The code after guard's check doesnot get executed if the condition fails.
*/

import Foundation

func displayName(userName : String?)
{
   //assert(userName != nil)
   //print("name = \(userName!)")
   
   //another way :
//    if userName != nil{
//        print("name = \(userName!)")
//    }else{
//        print("value of name is empty")
//    }
   
   //another way : using guard keyword
   //here if userName != nil, then "I'm printed after guard execution" gets executed else "value of name is empty" gets excecuted and the function stops.
//    guard userName != nil else{
//        print("value of name is empty")
//        return
//    }
//    print("I'm printed after guard execution")

//multiple guard conditions can be separated by a ","
   guard userName != nil, isValid(name: userName!) else{
       //print("value of name is not nil")
       print("value of userName is not nil but not equal to 4")
       return
   }
   print("I'm printed after guard execution")
   
}

//displayName(name: "Hero") // O/p : name = Hero
//displayName(name: nil) // O/p : Fatal error: Unexpectedly found nil while unwrapping an Optional value
//So when you try to forcefully unwrap an optional value and that optional value contains a nil value you the error. SO you can check the error by using "assert", assert throws the error if condition is not met.

//displayName(name: "codecats15")
/*
O/p :
name = codecats15 for if
value of name is empty for else
*/



//for guard call
//displayName(userName: nil)
/*
O/p :
I'm printed after guard execution - For name : Pritam
value of name is empty - For name : nil
*/


//Some more ways to execute guard :

func isValid(name : String) -> Bool {
   return name.count == 4 ? true: false
}

displayName(userName: "codecat")
/*
O/p :
I'm printed after guard execution - for name : "code"
value of userName is not nil but not equal to 4 -  for name : "codecat"
*/

