//
//  Example4ViewController.swift
//  StellarDemo
//
//  Created by AugustRush on 6/1/16.
//  Copyright © 2016 August. All rights reserved.
//

import UIKit

class Example4ViewController: UIViewController {
    
    
    @IBOutlet weak var animateView: Ball!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesEnded(touches, withEvent: event)
        
        animateView.makeSize(CGSizeMake(50, 150)).snap(0.3).completion({
                print("First step")
            })
            .then().moveX(-100).moveY(-50).anchorPoint(CGPointMake(1, 1)).duration(1).completion({
                print("Second step!")
            })
            .then().rotate(CGFloat(M_PI)).attachment(0.3, frequency: 0.8).completion({
                print("Third step!")
            })
            .then().moveY(500).completion({
                print("last step, all completion")
            })
            .animate()
    }
}
