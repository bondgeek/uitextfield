//
//  ViewController.swift
//  uitextfield
//
//  Created by Bart Mosley on 1/29/15.
//  Copyright (c) 2015 bg research llc. All rights reserved.
//
import UIKit

/*
class myTextField: UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        println("frame")
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        var border = CALayer()
        var borderWidth = CGFloat(2.0)
        border.borderColor = UIColor.greenColor().CGColor
        border.frame = CGRect(
            x: 0,
            y: self.frame.size.height - borderWidth,
            width:  self.frame.size.width,
            height: self.frame.size.height
        )
        border.borderWidth = borderWidth
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
        
        println("coder")
        println("bs: \(self.borderStyle.rawValue)")
        println(self.frame.size.width)
    }
}
*/

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("view did load")
        
        /*
        var border = CALayer()
        var borderWidth = CGFloat(2.0)
        border.borderColor = UIColor.greenColor().CGColor
        border.frame = CGRect(
            x: 0,
            y: textField1.frame.size.height - borderWidth,
            width:  textField1.frame.size.width,
            height: textField1.frame.size.height
        )
        border.borderWidth = borderWidth
        textField1.layer.addSublayer(border)
        textField1.layer.masksToBounds = true
        */

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

