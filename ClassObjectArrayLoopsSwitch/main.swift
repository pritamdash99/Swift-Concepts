//
//  main.swift
//  ClassObjectArrayLoopsSwitch
//
//  Created by Pritam Dash on 18/06/22.
//

//Scenario : A doctor's attendant keeping information on the patients of the doctor
import Foundation

class Patient {
    //object variable
    var name : String = ""
    var gender : String = ""
    var age : Int = 0
    var fees : Float = 0
    var tokenNo : Int = 0
    
    //class variable
    static var tokenCounter : Int = 0
    
    init(){
        fees = 450  //Default fees of doctor
    }
    
    init(name : String, gender : String, age : Int, fees : Float) {
        self.name = name
        self.gender = gender
        self.age  = age
        self.fees = fees
    }
    
    func inputData() -> Void {
        print("Enter patient name :")
        self.name = readLine()!
        
        print("Enter patient age :")
        self.age = Int(readLine()!)!
        
        print("Enter patient gender :")
        self.gender = readLine()!
        
        print("Enter patient fees :")
        self.fees = Float(readLine()!)!
    }
    
    func display() {
        print("Token Number - \(tokenNo), Name - \(name), Age - \(age), Gender -\(gender), Fees - \(fees)")
    }
    
    func setToken() {
        Patient.tokenCounter = Patient.tokenCounter + 1
        self.tokenNo = Patient.tokenCounter
    }
}

