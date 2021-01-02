//
//  ViewController.swift
//  customControl
//
//  Created by Midhet Sulemani on 08/02/17.
//  Copyright © 2017 BlueTie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let rangeSlider = RangeSlider(frame: CGRect.zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        rangeSlider.backgroundColor = UIColor.red
        view.addSubview(rangeSlider)
        
        rangeSlider.addTarget(self, action: #selector(rangeSliderValueChanged(rangeSlider:)), for: .valueChanged)
        
    }
    
    override func viewDidLayoutSubviews() {
        
        let margin: CGFloat = 20.0
        let width: CGFloat = view.bounds.width - 2.0 * margin
        rangeSlider.frame = CGRect(x: margin, y: margin + topLayoutGuide.length,
                                   width: width, height: 31.0)
        rangeSlider.center = self.view.center
    }
    
    @objc func rangeSliderValueChanged(rangeSlider: RangeSlider) {
        print("Range slider value changed: (\(rangeSlider.lowerValue) \(rangeSlider.upperValue))")
    }
    
}

