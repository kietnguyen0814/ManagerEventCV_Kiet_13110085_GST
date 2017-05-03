//
//  ManagerEventCollectionViewController.swift
//  ManagerEventCollectionView_Kiet_13110085
//
//  Created by Kiet Nguyen on 5/3/17.
//  Copyright © 2017 Kiet Nguyen. All rights reserved.
//

import UIKit

var eventLines = EventLine.eventLines();

struct StoryBoard {
    static let headerSectionView = "HeaderSectionView"
    static let eventCell = "EventCell"
    static let showDetailSegue = "ShowDetail"
    
    static let leftAndRightPaddings: CGFloat = 2.0
    static let numberOfItemPerRow: CGFloat = 3.0
    
}

class ManagerEventCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let collectionViewWidth = collectionView?.frame.width
        
        let itemWidth = (collectionViewWidth! - StoryBoard.leftAndRightPaddings) / StoryBoard.numberOfItemPerRow
        
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        
        layout.itemSize = CGSize(width: itemWidth, height: itemWidth)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        collectionView?.reloadData()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return eventLines.count
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return eventLines[section].events.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoryBoard.eventCell, for: indexPath) as! EventCollectionViewCell
        
        let event = eventLines[indexPath.section].events[indexPath.item];
        
        cell.configCellWith(event: event)
        return cell;
    }

    //MARK: - Config Header Section Cell
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerSectionView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: StoryBoard.headerSectionView, for: indexPath) as! HeaderSectionView
        
        let eventLine = eventLines[indexPath.section];
        
        headerSectionView.headerLabel.text = eventLine.dates
        headerSectionView.headerImageView.image = eventLine.dateImages
        
        return headerSectionView
    }
    
    // MARK: - UICollectionViewDelegate
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: StoryBoard.showDetailSegue, sender: indexPath);
    }
    
    // MARK: - Event Detail
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == StoryBoard.showDetailSegue {
            let eventDetailVC = segue.destination as! EventDetailTableViewController
            let index = sender as! IndexPath
            
            let evenLine = eventLines[index.section];
            //let event = eventLine.events[index.item];
            let event = evenLine.events[index.item]
            
            
            eventDetailVC.event = event
            eventDetailVC.dateEventDetail = evenLine.dates
            
        }
    }

}
