//
//  ViewController.swift
//  ColorPicker
//
//  Created by iem on 01/12/2016.
//  Copyright © 2016 benjisora. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue"{
            let vc = segue.destination as! ColorPickerViewController;
            vc.delegate = self;
        }
    }
}

// MARK: - Color Picker Delegate
extension ViewController: ColorPickerDelegate {
    func colorIsReturning(controller: ColorPickerViewController, color: UIColor) {
        
        let previousColor = self.view.backgroundColor;
        self.view.backgroundColor = color;
        
        dismiss(animated: true, completion: {});
        
        let refreshAlert = UIAlertController(title: "Color Change", message: "Do you want to keep this color, or to go back to the previous one ?", preferredStyle: UIAlertControllerStyle.alert);
        
        refreshAlert.addAction(UIAlertAction(title: "Keep it", style: .default, handler: { (action: UIAlertAction!) in
        }));
        
        refreshAlert.addAction(UIAlertAction(title: "Go back", style: .cancel, handler: { (action: UIAlertAction!) in
            self.view.backgroundColor = previousColor;
        }));
        
        present(refreshAlert, animated: true, completion: nil);
    }

}
