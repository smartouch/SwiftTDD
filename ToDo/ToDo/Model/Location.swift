//
//  Location.swift
//  ToDo
//
//  Created by Olivier on 29/12/2016.
//  Copyright © 2016 Smartouch. All rights reserved.
//

import Foundation
import CoreLocation

struct Location {
    let name : String
    let coordinate : CLLocationCoordinate2D?
    
    init(name: String, coordinate: CLLocationCoordinate2D? = nil) {
        self.name = name
        self.coordinate = coordinate
    }
    
}
