//
//  FBAnnotationCluster.swift
//  FBAnnotationClusteringSwift
//
//  Created by Robert Chen on 4/2/15.
//  Copyright (c) 2015 Robert Chen. All rights reserved.
//

import Foundation
import MapKit

public class FBAnnotationCluster : NSObject {
    public var coordinate = CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0)
    
    public var title:String? = ""
    public var subtitle:String? = nil
    
    public var annotations:[MKAnnotation] = []
}

extension FBAnnotationCluster : MKAnnotation { }