//
//  ViewController.swift
//  Gimbal Demo App
//
//  Created by Yucheng Lin on 3/15/16.
//  Copyright © 2016 Yucheng Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, GMBLPlaceManagerDelegate, GMBLCommunicationManagerDelegate {
    
    var placeManager: GMBLPlaceManager!
    var commManger: GMBLCommunicationManager!;
    @IBOutlet weak var keysLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        placeManager = GMBLPlaceManager();
        placeManager.delegate = self;
        
        commManger = GMBLCommunicationManager();
        commManger.delegate = self;
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func placeManager(manager: GMBLPlaceManager, didBeginVisit visit: GMBLVisit){
        // Do something here
        keysLabel.text = "YOUR KEYS ARE NEARBY";
        print("Here");
    }
    
    func placeManager(manager: GMBLPlaceManager, didEndVisit visit: GMBLVisit){
        // Do something here
        keysLabel.text = "OOPS, YOU FORGOT YOUR KEYS!";
    }

    func communicationManager(manager: GMBLCommunicationManager!, presentLocalNotificationsForCommunications communications: [AnyObject]!, forVisit visit: GMBLVisit!) -> [AnyObject]! {
        return communications;
    }
}

