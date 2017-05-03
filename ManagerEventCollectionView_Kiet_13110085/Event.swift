//
//  Event.swift
//  ManagerEventCollectionView_Kiet_13110085
//
//  Created by Kiet Nguyen on 5/3/17.
//  Copyright © 2017 Kiet Nguyen. All rights reserved.
//

import Foundation
import UIKit

class Event
{
    var title: String
    var description: String
    var eventImage: UIImage
    
    init(titled: String, description: String, eventImaged: UIImage)
    {
        self.title = titled
        self.description = description
        self.eventImage = eventImaged
    }
}
