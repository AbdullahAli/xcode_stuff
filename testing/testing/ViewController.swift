//
//  ViewController.swift
//  testing
//
//  Created by Abdullah Ali on 22/06/2015.
//  Copyright (c) 2015 Abdullah Ali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        println("size is \(self.image.frame.size)")
//        UIView.animateWithDuration(2) {
//            var oldFrame = self.image.frame
//        
//            var newFrame = CGRectMake(oldFrame.origin.x, oldFrame.origin.y + 100, oldFrame.size.width, oldFrame.size.height)
//        
//            self.image.frame = newFrame
//             println(self.image.center)
//        }
//        image.layer.cornerRadius = 50
        
//        UIView.animateWithDuration(0.5) {
//            self.image.transform = CGAffineTransformMakeRotation(CGFloat((180 / 180.0 * M_PI)))
//            
//            self.image.transform = CGAffineTransformMakeScale(2, 2)
//        }
        
        // origin -> center     (- height/2)   50/2   ->  -25
        let positon = (x: self.view.frame.width/2, y:self.view.frame.height/2)
        let paintView = UIView(frame: CGRectMake(positon.x-25, positon.y-25, 50, 50))
        paintView.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(paintView)
        paintView.center.x = positon.x
        paintView.center.y = positon.y
        
        
        println("\(self.view.frame.size)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

