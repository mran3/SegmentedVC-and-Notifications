//
//  ViewController.swift
//  SegmentedViewControllers
//
//  Created by troquer on 20/01/2019.
//  Copyright © 2019 acvc. All rights reserved.
// Example project about:
// Changing VCs with a Segmented Controller
// Basic Unit Tests
// Sending local notifications
// Based on: https://www.youtube.com/watch?v=e5nxg5NzLks and https://www.hackingwithswift.com/example-code/uikit/how-to-use-view-controller-containment


import UIKit
import UserNotifications

class ViewController: UIViewController {

    @IBOutlet weak var viewsContainer: UIView!
    @IBOutlet weak var segmentedTab: UISegmentedControl!
    
    var child1: UIViewController!
    var child2: UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        child1 = SimpleVC1()
        child2 = SimpleVC2()
        
        viewsContainer.addSubview(child2.view)
        viewsContainer.addSubview(child1.view)
        
        self.addChild(SimpleVC1())
        self.addChild(SimpleVC2())
        
        UNUserNotificationCenter.current()
        //requesting for authorization
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {didAllow, error in
            print("Error getting authorization")
        })
    }

    @IBAction func tabChanged(_ sender: Any) {
        let getIndex = segmentedTab.selectedSegmentIndex
        //print(getIndex)
        switch(getIndex){
        case 0:
            viewsContainer.bringSubviewToFront(child1.view)
            child1.didMove(toParent: self)

        case 1:
            viewsContainer.bringSubviewToFront(child2.view)
            child2.didMove(toParent: self)
        default:
            break;
        }
        
    }
    
}

