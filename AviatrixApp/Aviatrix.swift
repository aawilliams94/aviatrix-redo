//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
  
    var author : String
    init(authorName : String ) {
        author = authorName
    }
    
    var running = false
    func start() -> Bool {
        running = true
        return true
    }
    //just found out we are starting in St. Louis
    var location = "St. Louis"
    var distanceTraveled = 0.0
    
    func refuel() {
        
    }
    
    func flyTo(destination : String) {
        
    }
    
    func distanceTo(current: String, target : String) -> Int {
        let data = AviatrixData()
        return data.knownDistances[current]![target]!
    }
    
    func knownDestinations() -> [String] {
       let destinations = AviatrixData()
        return Array(destinations.knownDistances.keys)
    }
}
