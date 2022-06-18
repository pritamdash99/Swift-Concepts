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
    case 3 :
        for p in patientArray {
            p.display()
        }
        
    case 4 : //display by age
        for i in 0...patientArray.count - 2
        {
            for j in (i+1)...patientArray.count - 1
            {
                if (patientArray[i].age > patientArray[j].age)
                {
                    var tempPatient = patientArray[i]
                    patientArray[i] = patientArray[j]
                    patientArray[j] = tempPatient
                }
            }
        }
        
        for p in patientArray {
            p.display()
        }
    case 5 : //display by gender
        for i in 0...patientArray.count - 2
        {
            for j in (i+1)...patientArray.count - 1
            {
                if (patientArray[i].gender > patientArray[j].gender)
                {
                    var tempPatient = patientArray[i]
                    patientArray[i] = patientArray[j]
                    patientArray[j] = tempPatient
                }
            }
        }
        
        for p in patientArray {
            p.display()
        }
        
    case 6 : // update fees by tokennumber
        print("Enter token number to update Fee :")
        let tNo = Int(readLine()!)!
        
        for i in 0...patientArray.count - 1
        {
            if(tNo == patientArray[i].tokenNo){
                let patient = patientArray[i]
                print("Enter the fee amount: ")
                let f = Float(readLine()!)!
                patient.fees = f
                break
            }
        }
    default :
        print("Invalid choice, please select again.")
        
    }//end of switch

} // end of while loop

/*
 Output :
 1. Enter new patient detail
 2. Remove patient by token number
 3. Display all patients
 4. Display patient order by age
 5. Display patient order by gender
 6. Update Patient fee
 7. Exit Application
 Select your choice : [1 - 7]
 1
 Enter patient name :
 Pritam Dash
 Enter patient age :
 23
 Enter patient gender :
 M
 Enter patient fees :
 300
 1. Enter new patient detail
 2. Remove patient by token number
 3. Display all patients
 4. Display patient order by age
 5. Display patient order by gender
 6. Update Patient fee
 7. Exit Application
 Select your choice : [1 - 7]
 1
 Enter patient name :
 Priya
 Enter patient age :
 20
 Enter patient gender :
 F
 Enter patient fees :
 500
 1. Enter new patient detail
 2. Remove patient by token number
 3. Display all patients
 4. Display patient order by age
 5. Display patient order by gender
 6. Update Patient fee
 7. Exit Application
 Select your choice : [1 - 7]
 1
 Enter patient name :
 Raj
 Enter patient age :
 40
 Enter patient gender :
 M
 Enter patient fees :
 120
 1. Enter new patient detail
 2. Remove patient by token number
 3. Display all patients
 4. Display patient order by age
 5. Display patient order by gender
 6. Update Patient fee
 7. Exit Application
 Select your choice : [1 - 7]
 1
 Enter patient name :
 Rahul Dua
 Enter patient age :
 35
 Enter patient gender :
 M
 Enter patient fees :
 560
 1. Enter new patient detail
 2. Remove patient by token number
 3. Display all patients
 4. Display patient order by age
 5. Display patient order by gender
 6. Update Patient fee
 7. Exit Application
 Select your choice : [1 - 7]
 3
 Token Number - 1, Name - Pritam Dash, Age - 23, Gender -M, Fees - 300.0
 Token Number - 2, Name - Priya, Age - 20, Gender -F, Fees - 500.0
 Token Number - 3, Name - Raj, Age - 40, Gender -M, Fees - 120.0
 Token Number - 4, Name - Rahul Dua, Age - 35, Gender -M, Fees - 560.0
 1. Enter new patient detail
 2. Remove patient by token number
 3. Display all patients
 4. Display patient order by age
 5. Display patient order by gender
 6. Update Patient fee
 7. Exit Application
 Select your choice : [1 - 7]
 4
 Token Number - 2, Name - Priya, Age - 20, Gender -F, Fees - 500.0
 Token Number - 1, Name - Pritam Dash, Age - 23, Gender -M, Fees - 300.0
 Token Number - 4, Name - Rahul Dua, Age - 35, Gender -M, Fees - 560.0
 Token Number - 3, Name - Raj, Age - 40, Gender -M, Fees - 120.0
 1. Enter new patient detail
 2. Remove patient by token number
 3. Display all patients
 4. Display patient order by age
 5. Display patient order by gender
 6. Update Patient fee
 7. Exit Application
 Select your choice : [1 - 7]
 5
 Token Number - 2, Name - Priya, Age - 20, Gender -F, Fees - 500.0
 Token Number - 1, Name - Pritam Dash, Age - 23, Gender -M, Fees - 300.0
 Token Number - 4, Name - Rahul Dua, Age - 35, Gender -M, Fees - 560.0
 Token Number - 3, Name - Raj, Age - 40, Gender -M, Fees - 120.0
 1. Enter new patient detail
 2. Remove patient by token number
 3. Display all patients
 4. Display patient order by age
 5. Display patient order by gender
 6. Update Patient fee
 7. Exit Application
 Select your choice : [1 - 7]
 6
 Enter token number to update Fee :
 2
 Enter the fee amount:
 580
 1. Enter new patient detail
 2. Remove patient by token number
 3. Display all patients
 4. Display patient order by age
 5. Display patient order by gender
 6. Update Patient fee
 7. Exit Application
 Select your choice : [1 - 7]
 3
 Token Number - 2, Name - Priya, Age - 20, Gender -F, Fees - 580.0
 Token Number - 1, Name - Pritam Dash, Age - 23, Gender -M, Fees - 300.0
 Token Number - 4, Name - Rahul Dua, Age - 35, Gender -M, Fees - 560.0
 Token Number - 3, Name - Raj, Age - 40, Gender -M, Fees - 120.0
 1. Enter new patient detail
 2. Remove patient by token number
 3. Display all patients
 4. Display patient order by age
 5. Display patient order by gender
 6. Update Patient fee
 7. Exit Application
 Select your choice : [1 - 7]
 7
 */
