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
var patientArray : [Patient] = []
while true
{
    print("1. Enter new patient detail")        //Create object of patient class and append in patientArray
    print("2. Remove patient by token number")
    print("3. Display all patients")
    print("4. Display patient order by age")
    print("5. Display patient order by gender")
    print("6. Update Patient fee")
    print("7. Exit Application")
    print("Select your choice : [1 - 7] ")

    var choice = Int(readLine()!)!
    if(choice == 7)
    {
        break
    }
    switch choice {
    case 1 :
        var p = Patient()
        p.inputData()
        p.setToken()
        patientArray.append(p)
    
    case 2 :
        print("Enter token number to remove :")
        let tNo = Int(readLine()!)!
        
        for i in 0...patientArray.count - 1
        {
            if(tNo == patientArray[i].tokenNo){
                patientArray.remove(at: i)
                break
            }
        }
