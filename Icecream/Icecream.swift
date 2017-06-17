//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream = ["Joe": "Peanut Butter and Chocolate", "Tim": "Natural Vanilla", "Sophie": "Mexican Chocolate", "Deniz": "Natural Vanilla", "Tom": "Mexican Chocolate", "Jim": "Natural Vanilla", "Susan": "Cookies 'N' Cream"]
        
    
    
    
    
    
    // 2.
    
    
    func names(forFlavor flavor: String) -> [String] {
        var nameArray = [String]()
        for (name, flavor2) in favoriteFlavorsOfIceCream {
            if(flavor2 == flavor){
                nameArray.append(name)
            }
        }
        return nameArray
    }
    
    
    
    // 3.
    
    
    
    func count(forFlavor: String) -> Int {
        var count = 0
        for (_, flavor) in favoriteFlavorsOfIceCream {
            if(flavor == forFlavor){
                count += 1
            }
        }
        return count
        
    }
    
    
    
    // 4.
   
    func flavor(forPerson: String) -> String?{
        for (name, flavor) in favoriteFlavorsOfIceCream {
            if(name == forPerson){
                return "\(flavor)"
            }
        }
        return nil
    }
    
    
    
    
    
    // 5.
   
    func replace(flavor:String, forPerson: String) -> Bool {
        var flavorChanged = false
        for (name, _) in favoriteFlavorsOfIceCream {
            if name == forPerson {
                favoriteFlavorsOfIceCream.updateValue(flavor, forKey: name)
                flavorChanged = true
            }
        }
        
        return flavorChanged
    }
    
    
    
    
    
    // 6.
    
    func remove(person: String) -> Bool {
        var personExist = false
        for (name, _) in favoriteFlavorsOfIceCream {
            if name == person {
                favoriteFlavorsOfIceCream.removeValue(forKey: name)
                personExist = true
            }
        }
        return personExist
    
    }
    
    
    
    
    
    
    // 7.
    func numberOfAttendees() -> Int{
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    
    
    // 8.
    
    func add(person: String, withFlavor:String) -> Bool {
        var added = true
        for (name, _) in favoriteFlavorsOfIceCream {
            if name == person {
                added = false
            }
        }
        if added == true {
            favoriteFlavorsOfIceCream.updateValue(withFlavor, forKey: person)
            
        }
        return added
    }
    
    
    
    
    
    
    
    // 9.
    
    
    func attendeeList() -> String {
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var list = ""
        for (index, name) in allNames.enumerated() {
            list += "\(name) likes \(favoriteFlavorsOfIceCream[name]!)"
            if index < allNames.count - 1  {
                list += "\n"
            }
            
        }
        return list
    }
    
    
    
    
    

}
