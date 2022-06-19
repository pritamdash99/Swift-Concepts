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

