import Cocoa

var greeting = "Hello, playground"

class Ship {
    var name: String
    var year: Int
    var countryOfOrigin: String
    
    init(name: String, year: Int, countryOfOrigin: String) {
        self.name = name
        self.year = year
        self.countryOfOrigin = countryOfOrigin
    }
}

class CruiseShip: Ship {
    var maxCapacity: Int
    var oceanOfOperation: String
    var currentPassengerCount: Int = 0
    
    init(name: String, year: Int, countryOfOrigin: String, maxCapacity: Int, oceanOfOperation: String) {
        self.maxCapacity = maxCapacity
        self.oceanOfOperation = oceanOfOperation
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
        }

    func addPassenger() {
        if currentPassengerCount < maxCapacity {
            currentPassengerCount += 1
            print("Passenger added successfully")
        }
        else {
            print("Ship at max capacity")
        }
    }
    func printPassengerCount() {
        print("Passenger count:", currentPassengerCount)
    }
}

class CargoShip: Ship {
    var maxCargoCapacity: Int
    var currentCargoCount: Int = 0
    var isInternational: Bool
    
    init(name: String, year: Int, countryOfOrigin: String, maxCargoCapacity: Int, isInternational: Bool) {
        self.maxCargoCapacity = maxCargoCapacity
        self.isInternational = isInternational
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    func addCargo() {
        if currentCargoCount < maxCargoCapacity {
            currentCargoCount += 1
            print("Cargo added successfully.")
        } else {
            print("Ship at max cargo capacity.")
        }
    }
    
    func printCargoCount() {
        print("Current cargo count:", currentCargoCount)
    }
}

class PirateShip: Ship {
    var maxTreasureCapacity: Int
    var numberOfCannons: Int
    var currentTreasureCount: Int = 0
    
    init(name: String, year: Int, countryOfOrigin: String, maxTreasureCapacity: Int, numberOfCannons: Int) {
        self.maxTreasureCapacity = maxTreasureCapacity
        self.numberOfCannons = numberOfCannons
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    func addTreasure() {
        if currentTreasureCount < maxTreasureCapacity {
            currentTreasureCount += 1
            print("Treasure added successfully.")
        } else {
            print("Ship at max treasure capacity.")
        }
    }
    
    func printTreasureCount() {
        print("Current treasure count:", currentTreasureCount)
    }
}


// Creating an instance of CruiseShip
let cruiseShip = CruiseShip(name: "Voyager NCC 135", year: 2015, countryOfOrigin: "USA", maxCapacity: 1, oceanOfOperation: "Pacific")

// Access and print superclass properties
print("Ship Name: \(cruiseShip.name)")
print("Year Built: \(cruiseShip.year)")
print("Country of Origin: \(cruiseShip.countryOfOrigin)")

// Access and print subclass properties
print("Max Capacity: \(cruiseShip.maxCapacity)")
print("Ocean of Operation: \(cruiseShip.oceanOfOperation)")
print("Current Passenger Count: \(cruiseShip.currentPassengerCount)")

// test passenger capacity
for _ in 0..<2 {
    cruiseShip.addPassenger()
}


// Print updated passenger count
print("Updated Passenger Count:")
cruiseShip.printPassengerCount()
