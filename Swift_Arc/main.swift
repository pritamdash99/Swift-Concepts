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
    var job : Job?      //earlier this was present till line 128. //Only Added for example3
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
