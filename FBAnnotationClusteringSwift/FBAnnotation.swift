//
//  FBAnnotation.swift
//  FBAnnotationClusteringSwift
//
//  Created by Robert Chen on 4/2/15.
//  Copyright (c) 2015 Robert Chen. All rights reserved.
//

import Foundation
import CoreLocation
import MapKit

class FBAnnotation: NSObject, MKAnnotation {
    var title = "Ubicación actual"
    var coordinate: CLLocationCoordinate2D
    
    init(coordinate:CLLocationCoordinate2D) {
        self.coordinate = coordinate
    }
    
    override init() {
        self.coordinate = CLLocationCoordinate2D(latitude: 39.208407, longitude: -76.799555)
        
        super.init()
    }
}