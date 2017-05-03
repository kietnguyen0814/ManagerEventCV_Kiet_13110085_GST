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
    
    // This will call when user go back ( this view will disappear )
    
    override func viewWillDisappear(_ animated: Bool) {
        event?.title = eventDetailTitleLabel.text!
        event?.description = eventDetailDesLabel.text!
    }
    
    // UITextFieldDelegate ( Keyboard will  disable when press return )
    // User must set delegate from this textfield to this view
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // UIScrollViewDelegate ( Keyboard will disable when scroll the UIView )
    override func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        eventDetailDesLabel.resignFirstResponder()
        eventDetailTitleLabel.resignFirstResponder()
    }

}
