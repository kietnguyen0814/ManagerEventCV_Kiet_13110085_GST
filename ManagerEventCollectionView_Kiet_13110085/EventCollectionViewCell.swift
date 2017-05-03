//
//  EventCollectionViewCell.swift
//  ManagerEventCollectionView_Kiet_13110085
//
//  Created by Kiet Nguyen on 5/3/17.
//  Copyright © 2017 Kiet Nguyen. All rights reserved.
//

import UIKit

class EventCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var eventLable: UILabel!
    @IBOutlet weak var eventImageView: UIImageView!
    
    func configCellWith(event: Event){
        eventLable.text = event.title
        eventImageView.image = event.eventImage
    }
}
