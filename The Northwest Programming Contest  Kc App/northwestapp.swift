//
//  northwestapp.swift
//  The Northwest Programming Contest  Kc App
//
//  Created by Student on 3/14/19.
//  Copyright © 2019 Student. All rights reserved.
//

import Foundation

class Schools{
    static var shared = Schools()
    private var schools:[School]
    
    
    private init(schools: [School]) {
        self.schools = schools
    }
    
    private convenience init(){
        self.init(schools: [])
    }
    
    
    
    subscript(index:Int) -> School {
        return schools[index]
    }
    
    
    func numSchools() -> Int{
        return schools.count
    }
    
    func delete(school:School){
        for i in 0 ..< schools.count {
            if schools[i] == school {
                schools.remove(at:i)
                break
            }
        }
    }
    
    func add(school:School){
        schools.append(school)
    }
    
    
    
}

class School:Equatable{
    var name: String
    var coach: String
    var teams: [Team]
    
    init(name: String, coach: String) {
        self.name = name
        self.coach = coach
        self.teams = []
    }
    
    
    
    static func == (lhs: School, rhs: School) -> Bool {
        return lhs.name == rhs.name && lhs.coach == rhs.coach && lhs.teams == rhs.teams
    }
    
    func addTeam(name: String, students: [String]){
        teams.append(Team(name: name, students: students))
    }
}

class Team : Equatable{
    var name: String
    var students: [String]
    
    init(name: String, students: [String]){
        self.name = name
        self.students = students
    }
    
    static func == (lhs: Team, rhs: Team) -> Bool {
        return lhs.name == rhs.name && lhs.students == rhs.students
    }
}
