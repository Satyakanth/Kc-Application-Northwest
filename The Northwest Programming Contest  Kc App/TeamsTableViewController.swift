//
//  TeamsTableViewController.swift
//  The Northwest Programming Contest  Kc App
//
//  Created by Student on 3/14/19.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

class TeamsTableViewController: UITableViewController {
   var school: School!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return school.teams.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = tableView.dequeueReusableCell(withIdentifier: "team_table", for: indexPath)
        item.textLabel?.text = school.teams[indexPath.row].name
        return item
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationItem.title = school.name
        tableView.reloadData()
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toStudentsPage"{
            let studentsVC = segue.destination as! studentViewController
            studentsVC.team = school.teams[tableView.indexPathForSelectedRow!.row]
        }
        else if segue.identifier == "toAddTeam"{
            let newTeamview = segue.destination as! NewTeamViewController
            newTeamview.teamname = school
        }
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            school.teams.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}
