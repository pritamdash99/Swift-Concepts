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

//Difference between 2bhk and 3 bhk ais just 1 more room. SO Inheriting 2bhk we can create 3 bhk
class ThreeBHK : TwoBHK {
    var thirdRoom : Float = 0
    override func display() {
        print("Three BHK : ", room,hall,kitchen,secondRoom,thirdRoom)
    }
    override func getArea() -> Float {
        return super.getArea() + thirdRoom
    }
}

var o1 = OneBHK()
o1.room = 100
o1.hall = 140
o1.kitchen = 80
o1.display()

print("Area of o1 - ",o1.getArea())

print("--------")

var t1 = TwoBHK()
t1.room = 120
t1.hall = 160
t1.kitchen = 90
t1.secondRoom = 190
t1.display()

print("Area of t1 - ",t1.getArea())
print("--------")

var o2 : OneBHK = o1 //Here o2 is having the refernce of the same object as o1.
o2.room = 115
o2.display()
print("--------")

var t2 : TwoBHK = t1 //Here t2 is having the refernce of the same object as t1.
t2.secondRoom = 191
t2.display()
print("--------")

var o3 : OneBHK = t1 //Here o3 is having the refernce of the same object as t1.
// Super Reference -> child obj
//Here Swift is allowing a superclass to have the same refernce as a child class.
o3.room = 111
o3.display()

//o3.secondRoom = 111 is not allowed by compiler because o3 is refernce of Onebhk type and cannot have access to secondRoom as secondRoom is not declared in Onebhk class.

//reference of superclass can only acess the common data present in both superclass and childclass.
