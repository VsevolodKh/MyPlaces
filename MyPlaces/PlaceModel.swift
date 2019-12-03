//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Всеволод on 03.12.2019.
//  Copyright © 2019 Vsevolod Khodyrev. All rights reserved.
//

import Foundation

struct Place {
    
    var name: String
    var location: String
    var type: String
    var image: String
    
    static let restaurantName = [
        "KFC", "Readers Pub", "Пинта", "McDonalds",
        "Юпитер 5", "Pizza Hut", "DoDo Pizza", "Папа Лаваш",]
    
    static func getPlaces() -> [Place] {
        var places = [Place]()
        
        for place in restaurantName {
            places.append(Place(name: place, location: "Ижевск", type: "Ресторан", image: place))
        }
        
        
        return places
    }
    
}
