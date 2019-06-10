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
    //just found out we are starting in St. Louis
    var location = "St. Louis"
    var distanceTraveled = 0.0
    var fuelLevel = 5000.0
    var maxFuel = 5000.0
    var milesPerGallon = 0.4
    var fuelCost = 0.0
    
    init(authorName : String ) {
        author = authorName
    }
    
    var running = false
    func start() -> Bool {
        running = true
        return true
    }
   
    
    func refuel() -> Double {
       let refueled = Double(maxFuel) - (fuelLevel)
        let info = AviatrixData()
        fuelCost += refueled * info.fuelPrices[location]!
        
        return refueled
    }
    
    func flyTo(destination : String) {
        let info = AviatrixData()
        distanceTraveled += Double(info.knownDistances[location]![destination]!)
        
        location = destination
        
        let usedFuel = Double(distanceTraveled)*milesPerGallon
        fuelLevel -= usedFuel
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
