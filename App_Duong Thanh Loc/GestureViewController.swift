//
//  GestureViewController.swift
//  App_Duong Thanh Loc
//
//  Created by apple on 5/24/17.
//  Copyright © 2017 apple. All rights reserved.
//

import UIKit

class GestureViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        let gestureViewController :UIViewController = GestureViewController()
//        gestureViewController.storyboard.
    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func TabGesture(_ sender: Any) {
    self.view.backgroundColor = UIColor.cyan
    }

    @IBAction func SwipeGesture(_ sender: Any) {
        self.view.backgroundColor = UIColor.green
    }

    @IBAction func PinchGesture(_ sender: Any) {
        //sd pinch zoom imgaeView
    }

    @IBAction func RotationGesture(_ sender: Any) {
        //sd rotation xoay imageview
    }
    
    @IBAction func PanGesture(_ sender: Any) {
        self.view.backgroundColor = UIColor.magenta
    }
    
    @IBAction func ScreenEdgePanGesture(_ sender: Any) {
        self.view.backgroundColor = UIColor.brown
    }
    @IBAction func LongPressGesture(_ sender: Any) {
        self.view.backgroundColor = UIColor.yellow
    }
 
    @IBAction func CustomGesture(_ sender: Any) {
        self.view.backgroundColor = UIColor.purple
    }
  
}
