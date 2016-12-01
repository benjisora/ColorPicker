//
//  ColorPickerViewController.swift
//  ColorPicker
//
//  Created by iem on 01/12/2016.
//  Copyright © 2016 benjisora. All rights reserved.
//

import UIKit

protocol ColorPickerDelegate{
    func colorIsReturning(controller:ColorPickerViewController,color:UIColor);
}

class ColorPickerViewController: UIViewController {

    var delegate:ColorPickerDelegate? = nil;
    var colorvalue: UIColor = UIColor.black;
    
    struct Color {
        static let redColor = UIColor(red: 129/255.0, green: 22/255.0, blue:62/255.0, alpha:1.0);
        static let greenColor = UIColor(red: 32/255.0, green: 203/255.0, blue:136/255.0, alpha:1.0);
        static let orangeColor = UIColor(red: 236/255.0, green: 102/255.0, blue:30/255.0, alpha:1.0);
    }
    
    @IBAction func onOrangeClick(_ sender: AnyObject) {
        colorvalue = Color.orangeColor;
        sendDataBack();
    }
    
    @IBAction func onRedClick(_ sender: UIButton) {
        colorvalue = Color.redColor;
        sendDataBack();
    }
    
    @IBAction func OnGreenClick(_ sender: UIButton) {
        colorvalue = Color.greenColor;
        sendDataBack();
    }
    
    func sendDataBack(){
        guard let delegate = self.delegate else {
            print("Delegate for ColorPickerViewController not Set");
            return;
        }
        delegate.colorIsReturning(controller: self, color: colorvalue);
        
        
    }
    
}
