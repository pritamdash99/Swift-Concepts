//
//  main.swift
//  Swift_Arc
//
//  Created by Pritam Dash on 17/06/22.
//
/*
 ARC - Automatic Reference Counting
 This means swift deletes an unused object of a class from memory, it does it via ARC.
 So qsn is does swift automatically does all these or how you write a code is also a factor in ARC.
 
 */
import Foundation

class Person {
    var name : String
   // var job : Job?      //earlier this was present till line 128. //Only Added for example3
    weak var job : Job?      //Only Added for example3
    
    init(_name : String)
    {
        name = _name
        print("Init method for Person is called")   //Only Added for example3
    }
    
    func printName() {
        print("name is : ", name)
    }
    
    deinit{
        print("Deinit called for person class")
    }
}
//Example 1 :
//if(1 == 1){   // this if condition forces swift to run ARC
//    let objPerson = Person(_name: "codecat15")
//    objPerson.printName()
//}
///*
// O/p :
// name is :  codecat15
// Deinit called for person class
//
// Because the object is only being created and used inside the if statement. And whenever deint is called swift is 100% sure that the object is no longer in the memory.
//
// */
