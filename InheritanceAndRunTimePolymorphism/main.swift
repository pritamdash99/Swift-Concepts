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

func findPaintingCharges(flat: OneBHK) -> Void{
    var a = flat.getArea()  //run time polymorphism
    
    //Let's say you want to give discount to threeBhk
    //Using "is" keyword you can check type Of Object in runtime.
    if(flat is ThreeBHK){
        a = a - (a * 10/100)
    }
    
    print("Painting Charges:", a*12)
    
}

print("=======")
findPaintingCharges(flat: o1)
//O/p : Painting Charges: 4020.0

findPaintingCharges(flat: t1)
//O/p : Painting Charges: 6624.0
//Here t1 is not of OneBhk type but it is a subclass of Onebhk so when the getArea() of OneBhk is supposed to be called, it gets overriden by getArea() of TwoBhk and returns the result.
//Both Superclass and subclass have the same method which is called Polymorphism(multiple forms) and which gets executed is decided at run time and hence :
//let a = flat.getArea() is Runtime Polymorphism
print("--------")
var th3 = ThreeBHK()
th3.room = 140
th3.secondRoom = 145
th3.thirdRoom = 155
th3.kitchen = 90
th3.hall = 170
th3.display()
// O/p : Three BHK :  140.0 170.0 90.0 145.0 155.0
findPaintingCharges(flat: th3)
//O/p : Painting Charges: 8400.0 before discount logic code.
//O/p : Painting Charges: 7560.0 after discount
//ThreeBhk is a subclass of OneBhk so the above code will work.




var flats : [OneBHK] = [o1,t1,th3]
//As the flats is array of type OneBhk, it's children classes' references can also be stored in the array.

let ob1 = OneBHK()
ob1.room = 111
ob1.hall = 143
ob1.kitchen = 87

flats.append(ob1)

for f in flats  //By default f's type is OneBhk
{
    print("Area of Flat:",f.getArea())
    //All the elements have .getArea()
}
/*
 O/p :
 Area of Flat: 335.0
 Area of Flat: 552.0
 Area of Flat: 700.0
 Area of Flat: 341.0
*/

//This is how polymorphism helps to create data structure where you can store multiple type of object memory and information. We can create a future ready code which can work for a class and it's subclass
