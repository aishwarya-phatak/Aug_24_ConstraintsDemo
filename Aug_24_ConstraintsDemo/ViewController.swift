//
//  ViewController.swift
//  Aug_24_ConstraintsDemo
//
//  Created by Vishal Jagtap on 30/09/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       let cgRectFramForLabelOne = CGRect(x: 60,
                           y: 100,
                           width: 200,
                           height: 50)
        
        let uiLabelOne = UILabel(frame: cgRectFramForLabelOne)
        let cgRectFrameForLabelTwo = CGRect(x: 60, y: 100, width: 200, height: 50)
        let uiLabelTwo = UILabel(frame: cgRectFrameForLabelTwo)
        
        let nsLayoutConstraint = NSLayoutConstraint(item: uiLabelOne,
                                                    attribute: .height,
                                                    relatedBy: .equal,
                           toItem: uiLabelTwo,
                                                    attribute: .height,
                                                    multiplier: 2.0,
                                                    constant: 0.0)
        
        uiLabelOne.addConstraint(nsLayoutConstraint)
        
    }
}
