//
//  Constants.swift
//  W7D4-UIDynamics
//
//  Created by Massimo Savino on 2019-07-09.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

import Foundation

struct Constants {
    
    struct Behaviors {
        
        static let behaviorTypes = [ "Attachment", "Collision", "Field", "Gravity", "Push", "Snap" ]
        
        static let descriptions = [
            "Creates a relationship between two items, or an item and a given anchor point.",
            "Causes one or more objects to bounce off of one another instead of overlapping without interaction.",
            "Enables an area or item to participate in field-based physics.",
            "Applies a gravitational force, or pull.",
            "Creates an instantaneous or continuous force.",
            "Produces a motion that dampens over time."
        ]
        
        static let behaviorDictionary = Dictionary(uniqueKeysWithValues: zip(Behaviors.behaviorTypes, Behaviors.descriptions))
    }
}
