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

//Example 2 :
//var objPerson1 : Person?
//var objPerson2 : Person?
//
//if(1==1)
//{
//    let objPerson = Person(_name: "codecat15")
//    objPerson1 = objPerson
//    objPerson2 = objPerson
//    objPerson.printName()
//}
///*
// O/p :
// name is :  codecat15
//
// Because objPerson1 and objPerson2 are both declared before the if statement. So even after if statement there are 2 references which are using the objPerson.
//
// objPerson1?.printName() after the if statement is allowed.
//
// objPerson1 = nil , even after this statement the deint won't be called becuse still there is 1 object which is using objPerson.
// */
//objPerson1 = nil
//objPerson2 = nil
//
///*
// O/p :
// name is :  codecat15
// Deinit called for person class
// */
//Example 3 :

class Job {
    var jobDescription : String
    var person : Person?
    
    init(_jobDescription : String)
    {
       jobDescription = _jobDescription
        print("Init method for Job is called")
    }
    
    deinit{
        print("Deinit called for person class")
    }
}
//
//if(1==1)
//{
//    let objPerson = Person(_name: "codecat15")
//    let objJob = Job(_jobDescription: "Swift Programmer")
//    objPerson.job = objJob
//}
/*
 O/p :
 Init method for Person is called
 Init method for Job is called
 Deinit called for person class
 Deinit called for person class
 */

if(1==1)
{
    let objPerson = Person(_name: "codecat15")
    let objJob = Job(_jobDescription: "Swift Programmer")
    objPerson.job = objJob
    objJob.person = objPerson
}
/*
 O/p :
 Init method for Person is called
 Init method for Job is called
 
 So as you can see here the deint method is not called, because here "strong reference cycle" is being followed. Strong reference cycle means if ob1 is refering to ob2 and ob2 is also refering to ob1 then there is a cycle and both ob1 and ob2 keep using each other in cycle.
 So swift doesnot delete these references from memory even if they are used just for a particular condition.
 This is bad as the references stay in the memeory.
 
 But as we do need both the objects to use each other but still not maintain the cycle, we need to mention to swift explicitly to remove the cycle.
 We do that by by using the "weak" keyword before variable declaration of any class.
 According to your usecase you can put up weak keyword in both classes.
 
 
 Post weak keyword O/p :
 Init method for Person is called
 Init method for Job is called
 Deinit called for person class
 Deinit called for person class
 
 A question about deinit : Can we add function, vars inside deiinit ?
 Ans - Yes, you can if you a condition to be met before the references get dealocated.
 
 */
