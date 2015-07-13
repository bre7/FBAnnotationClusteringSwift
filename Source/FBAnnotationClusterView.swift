//
//  FBAnnotationClusterView.swift
//  FBAnnotationClusteringSwift
//
//  Created by Robert Chen on 4/2/15.
//  Copyright (c) 2015 Robert Chen. All rights reserved.
//

import Foundation
import MapKit

enum FBClusterTypesImage: String {
    case Small  = "clusterSmall"
    case Medium = "clusterMedium"
    case Large  = "clusterLarge"
}

public class FBAnnotationClusterView : MKAnnotationView {
    var count = 0
    var fontSize:CGFloat = 12
    var imageName = "clusterSmall"
    var borderWidth:CGFloat = 3
    var countLabel:UILabel? = nil
    
    override public init!(annotation: MKAnnotation!, reuseIdentifier: String!){
        super.init(annotation: annotation, reuseIdentifier: reuseIdentifier)
        
        let cluster:FBAnnotationCluster = annotation as! FBAnnotationCluster
        count = cluster.annotations.count
        
        let baseFontSize:CGFloat = 12
        let baseBorderWidth:CGFloat = 3
        // change the size of the cluster image based on number of stories
        switch count {
        case 0...5:
            fontSize = baseFontSize
            imageName = FBClusterTypesImage.Small.rawValue
            borderWidth = baseBorderWidth
        case 6...15:
            fontSize = baseFontSize + 1
            imageName = FBClusterTypesImage.Medium.rawValue
            borderWidth = baseBorderWidth + 1
        default:
            fontSize = baseFontSize + 2
            imageName = FBClusterTypesImage.Large.rawValue
            borderWidth = baseBorderWidth + 2
        }
        
        backgroundColor = UIColor.clearColor()
        setupLabel()
        setTheCount(count)
    }
    
    required override public init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required public init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setupLabel(){
        countLabel = UILabel(frame: bounds)
        
        if let countLabel = countLabel {
            countLabel.autoresizingMask = .FlexibleWidth | .FlexibleHeight
            countLabel.textAlignment = .Center
            countLabel.backgroundColor = UIColor.clearColor()
            countLabel.textColor = UIColor.whiteColor()
            countLabel.adjustsFontSizeToFitWidth = true
            countLabel.minimumScaleFactor = 2
            countLabel.numberOfLines = 1
            countLabel.font = UIFont.boldSystemFontOfSize(fontSize)
            countLabel.baselineAdjustment = .AlignCenters
            addSubview(countLabel)
        }
        
    }
    
    func setTheCount(localCount:Int){
        count = localCount;
        
        countLabel?.text = "\(localCount)"
        setNeedsLayout()
    }
    
    override public func layoutSubviews() {
        
        // Images are faster than using drawRect:
        var imageAsset = UIImage(named: imageName)!
        
        countLabel?.frame = self.bounds
        image = imageAsset
        centerOffset = CGPointZero
        
        // adds a white border around the green circle
        layer.borderColor = UIColor.whiteColor().CGColor
        layer.borderWidth = borderWidth
        layer.cornerRadius = self.bounds.size.width / 2
        
    }
    
}