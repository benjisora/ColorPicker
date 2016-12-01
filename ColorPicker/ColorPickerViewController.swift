//
//  ColorPickerViewController.swift
//  ColorPicker
//
//  Created by iem on 01/12/2016.
//  Copyright © 2016 benjisora. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController {

    //var delegate:ColorPickerDelegate? = nil;
    var colorvalue: UIColor = UIColor.black;
    
    
    // MARK: - ClosureFunction
    var completionHandler: ((UIColor) -> ())?
    
    struct Color {
        static let redColor = UIColor(red: 129/255.0, green: 22/255.0, blue:62/255.0, alpha:1.0);
        static let greenColor = UIColor(red: 32/255.0, green: 203/255.0, blue:136/255.0, alpha:1.0);
        static let orangeColor = UIColor(red: 236/255.0, green: 102/255.0, blue:30/255.0, alpha:1.0);
    }
    
    @IBAction func onOrangeClick(_ sender: AnyObject) {
        colorvalue = Color.orangeColor;
        completionHandler?(colorvalue)
    }
    
    @IBAction func onRedClick(_ sender: UIButton) {
        colorvalue = Color.redColor;
        completionHandler?(colorvalue)
    }
    
    @IBAction func OnGreenClick(_ sender: UIButton) {
        colorvalue = Color.greenColor;
        completionHandler?(colorvalue)
    }
    
}
