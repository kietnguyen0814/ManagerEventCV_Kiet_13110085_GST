//
//  HeaderSectionView.swift
//  ManagerEventCollectionView_Kiet_13110085
//
//  Created by Kiet Nguyen on 5/3/17.
//  Copyright © 2017 Kiet Nguyen. All rights reserved.
//

import UIKit

class HeaderSectionView: UICollectionReusableView {
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var headerImageView: UIImageView!
    
    var eventDates: EventLine!{
        didSet{
            headerLabel.text = eventDates.dates
            headerImageView.image = eventDates.dateImages
        }
    }
}
