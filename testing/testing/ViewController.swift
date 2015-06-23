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
        let side: CGFloat = 50
        let centerPosition = (x: self.view.frame.width/2, y: self.view.frame.height/2)
        let bottomCenterPosition = (x: centerPosition.x, y: self.view.frame.height)
        
        let originPosition = (x: bottomCenterPosition.x-side/2, y: bottomCenterPosition.y-side/2)
        
        let paintView = UIView(frame: CGRectMake(originPosition.x, originPosition.y, side, side))
        paintView.backgroundColor = UIColor.yellowColor()
        paintView.layer.cornerRadius = side/2
        self.view.addSubview(paintView)

        
//        UIView.animateWithDuration(0.4) {
//            paintView.transform = CGAffineTransformMakeRotation(CGFloat((180 / 180.0 * M_PI)))
//        
//            paintView.transform = CGAffineTransformMakeScale(12, 12)
//        }
        
        UIView.animateWithDuration(0.4, animations: {
            paintView.transform = CGAffineTransformMakeRotation(CGFloat((180 / 180.0 * M_PI)))
            
            paintView.transform = CGAffineTransformMakeScale(12, 12)
            }, completion: {
                (let b) in
                let animation = CABasicAnimation(keyPath: "cornerRadius")
                animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
                animation.fromValue = self.image.layer.cornerRadius
                animation.toValue = 0
                animation.duration = 1
                animation.repeatCount = 0
                animation.fillMode = kCAFillModeForwards;
                animation.removedOnCompletion = false

                paintView.layer.addAnimation(animation, forKey: "cornerRadius")
                
        })
        
//        sleep(UInt32(3))
        
        
        
        println("\(self.view.frame.size)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

