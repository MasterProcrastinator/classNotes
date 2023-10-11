//
//  ViewController.swift
//  classNotes
//
//  Created by ALVIN CHEN on 10/6/23.
//

import UIKit

class ViewController: UIViewController {
    
    //building a blank student arrray, giving initial value
    var studentsArray : [Student] = []
    var s1 = Student(name: "Alvin", age: 16, money: 0)
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        var s2 = Student(name: "test", age: 1, money: 1231003.0)
        
        studentsArray.append(s1)
        studentsArray.append(s2)
        studentsArray.append(Student(name: "Me", age: 21, money: 132.0))
        
        
        print(studentsArray[1].name)
        studentsArray[1].name = "new"
        print(studentsArray[1].name)
        studentsArray[1].deposit(moneyIn: 10)
        print(studentsArray[1].money)
        
        
        
        var struct1 = StudentStruct(name: "Stacey", age: 17, money: 12921.0, rating: Rating.fire)
        print(struct1.name)
        switch struct1.rating {
        case .fire:
            print("you are fire")
        case .mid:
            print("you are mid")
        default:
            print("you are trash")
        }
        // Do any additional setup after loading the view.
    }


    @IBAction func manual(_ sender: UIButton) {
        performSegue(withIdentifier: "segue", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //NVC (next view controller) giving access to the next view controller
        let nvc = segue.destination as! ViewController3
        nvc.student1 = studentsArray[0]

    }
    
    
    
}

