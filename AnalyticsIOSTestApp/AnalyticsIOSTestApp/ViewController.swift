//
//  ViewController.swift
//  AnalyticsIOSTestApp
//
//  Created by Tony Xiao on 12/2/16.
//  Copyright © 2016 Segment. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    @IBAction func screenHome(_ sender: Any) {
        SEGAnalytics.shared().screen("Home")
    }
    
    @IBAction func trackOrderCompleted(_ sender: Any) {
        SEGAnalytics.shared().track("Order Completed")
        SEGAnalytics.shared().track("Order Cancelled", properties: [
            "order_id": 323
        ])
    }
    
    @IBAction func flush(_ sender: Any) {
        SEGAnalytics.shared().flush()
    }
    
    @IBAction func pizzaEaten(_ sender: Any) {
        SEGAnalytics.shared().track("Pizza Eaten")
    }
}
