//
//  NewSchoolViewController.swift
//  The Northwest Programming Contest  Kc App
//
//  Created by Student on 3/14/19.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

class NewSchoolViewController: UIViewController {

    @IBOutlet weak var NewName: UITextField!
    @IBOutlet weak var coachName: UITextField!
    
    var newSchool: School!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Cancel(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func Done(_ sender: Any) {
        
        let schoolName = NewName.text!
        let coachNames = coachName.text!
        
        Schools.shared.add(school: School(name: schoolName, coach: coachNames))
        self.dismiss(animated: true, completion: nil)
        
    }
    
}
