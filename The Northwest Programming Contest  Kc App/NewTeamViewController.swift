//
//  NewTeamViewController.swift
//  The Northwest Programming Contest  Kc App
//
//  Created by Student on 3/14/19.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

class NewTeamViewController: UIViewController {

    @IBOutlet weak var teamName: UITextField!
    @IBOutlet weak var student0: UITextField!
    @IBOutlet weak var student1: UITextField!
    @IBOutlet weak var student2: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var teamname: School!
    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func done(_ sender: Any) {
        let name = teamName.text!
        let name0 = student0.text!
        let name1 = student1.text!
        let name2 = student2.text!
        teamname.addTeam(name: name, students: [name0, name1, name2])
      self.dismiss(animated: true, completion: nil)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
