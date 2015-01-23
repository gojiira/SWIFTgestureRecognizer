//
//  ViewController.swift
//  SPROJ1
//
//  Created by Philipp Ulsamer on 17.01.15.
//  Copyright (c) 2015 TheJutsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tapView: UIView!
    @IBOutlet weak var pinchView: UIView!
    @IBOutlet weak var rotateView: UIView!
    @IBOutlet weak var panView: UIView!
    @IBOutlet weak var longPressView: UIView!
    @IBOutlet weak var swipeView: UIView!
    
    @IBAction func HelloAction(sender: UIButton) {
        println("hello")
    }
    
    @IBAction func handlePinch(recognizer : UIPinchGestureRecognizer) {
        recognizer.view!.transform = CGAffineTransformScale(recognizer.view!.transform,
            recognizer.scale, recognizer.scale)
        recognizer.scale = 1
    }
    
    @IBAction func handleRotate(recognizer : UIRotationGestureRecognizer) {
        recognizer.view!.transform = CGAffineTransformRotate(recognizer.view!.transform, recognizer.rotation)
        recognizer.rotation = 0
    }
    
    @IBAction func handlePan(recognizer:UIPanGestureRecognizer) {
        let translation = recognizer.translationInView(self.view)
        recognizer.view!.center = CGPoint(x:recognizer.view!.center.x + translation.x,
            y:recognizer.view!.center.y + translation.y)
        recognizer.setTranslation(CGPointZero, inView: self.view)
    }
    
    @IBAction func swipeAction(sender: UISwipeGestureRecognizer) {
        println("swipe")
    }
    
    @IBAction func longPressAction(sender: UILongPressGestureRecognizer) {
        println("longPress")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        var tapGesture = UITapGestureRecognizer(target: self, action: "tappedView:")
        tapGesture.numberOfTapsRequired = 1
        
        tapView.addGestureRecognizer(tapGesture)
    }
    
    func tappedView(philippsGestureRecognizer: UITapGestureRecognizer){
        println("tap")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

