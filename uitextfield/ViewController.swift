//
//  ViewController.swift
//  uitextfield
//
//  Created by Bart Mosley on 1/29/15.
//  Copyright (c) 2015 bg research llc. All rights reserved.
//
import UIKit


@IBDesignable class myTextField: UITextField {
    var border = CALayer()
    
    @IBInspectable var bottomBorderWidth: CGFloat = 2.0 {
        didSet {
            border.borderWidth = bottomBorderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.lightGrayColor() {
        didSet {
            border.borderColor = borderColor.CGColor
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        println("frame")
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        
        self.borderStyle = UITextBorderStyle.None
        
        border.frame = CGRect(
            x: 0,
            y: self.frame.size.height - self.bottomBorderWidth,
            width:  self.frame.size.width,
            height: self.frame.size.height
        )
        
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
        
        println("coder")
        println("border width \(self.bottomBorderWidth)")
        println(self.frame.size.width)
    }
}


class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldOne: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("view did load")
        println("view size")
        println("x: \(view.frame.origin.x) y: \(view.frame.origin.y)")
        println("w: \(view.frame.size.width) h: \(view.frame.size.height)")
        
        textFieldOne.frame.size.width = 270
        
        println("Frame")
        println("x: \(textFieldOne.frame.origin.x) y: \(textFieldOne.frame.origin.y)")
        println("w: \(textFieldOne.frame.size.width) h: \(textFieldOne.frame.size.height)")
        
        println("Bounds")
        println("x: \(textFieldOne.bounds.origin.x) y: \(textFieldOne.bounds.origin.y)")
        println("w: \(textFieldOne.bounds.size.width) h: \(textFieldOne.bounds.size.height)")
        
        
        var border = CALayer()
        var borderWidth = CGFloat(1.0)
        border.borderColor = UIColor.greenColor().CGColor
        border.frame = CGRect(
            x: 0,
            y: textFieldOne.frame.size.height - borderWidth,
            width:  textFieldOne.frame.size.width,
            height: textFieldOne.frame.size.height
        )

        border.borderWidth = borderWidth
        textFieldOne.borderStyle = UITextBorderStyle.None
        textFieldOne.layer.addSublayer(border)
        textFieldOne.layer.masksToBounds = true
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

