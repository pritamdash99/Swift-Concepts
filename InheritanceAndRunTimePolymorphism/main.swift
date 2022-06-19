//
//  main.swift
//  InheritanceAndRunTimePolymorphism
//
//  Created by Pritam Dash on 19/06/22.
//

import Foundation

class OneBHK {
    var hall : Float = 0
    var room : Float = 0
    var kitchen : Float = 0
    
    func display() {
        print("One BHK : ",room,hall,kitchen)
    }
    
    //function to get area of flat.(sum of rooms of flat)
    func getArea() -> Float {
        return hall + room + kitchen
    }
}

//Difference between 1bhk and 2 bhk ais just 1 more room. SO Inheriting 1bhk we can create 2 bhk

class TwoBHK : OneBHK {
    var secondRoom : Float = 0
    override func display() {
        print("Two BHK : ", room,hall,kitchen,secondRoom)
    }
    override func getArea() -> Float {
        return super.getArea() + secondRoom
    }
}
