//
//  EventDetailTableViewController.swift
//  ManagerEventCollectionView_Kiet_13110085
//
//  Created by Kiet Nguyen on 5/3/17.
//  Copyright © 2017 Kiet Nguyen. All rights reserved.
//

import UIKit

class EventDetailTableViewController: UITableViewController {

    @IBOutlet weak var eventDetailDesLabel: UITextView!
    @IBOutlet weak var eventDetailTitleLabel: UITextField!
    @IBOutlet weak var eventDetailDayLabel: UILabel!
    @IBOutlet weak var eventDetailImageView: UIImageView!
    
    var event: Event?
    var dateEventDetail: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        eventDetailDesLabel.text = event?.description
        eventDetailTitleLabel.text = event?.title
        eventDetailImageView.image = event?.eventImage
        eventDetailDayLabel.text = dateEventDetail
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
