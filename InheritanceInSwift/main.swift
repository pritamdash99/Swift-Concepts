//
//  main.swift
//  InheritanceInSwift
//
//  Created by Pritam Dash on 19/06/22.
//

import Foundation

/*
 Inheritance : Creating a new class by using code of existing class.
 eg : Bike - Bajaj Pulsar 150 -> Bajaj Pulsar 220
 Types of Inheritance -
 1. Single Inheritance - New class designed based on One existing Class : A -> B
 2. Multilevel : A -> B -> C
 3. Heirarchical : A -> X , A -> Y
 4. Hybrid : Mix any of the above type.
*/

class Person {
    var name :String = ""
    var age : Int = 0
    
    init() {
        print("I am Person default init")
        age = 1
    }
    func display() -> Void {
        print(name, age)
    }
}

let p1 = Person()
p1.name = "Pritam"
p1.age = 33
p1.display()
/*
 O/p :
 I am Person default init
 Pritam 33
*/

