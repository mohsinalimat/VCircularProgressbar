//
//  ViewController.swift
//  CircularProgressBar
//
//  Created by vishal on 11/14/17.
//  Copyright © 2017 vishal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var i = 0
    var timer = Timer()
    var obj = VCircularProgressBar()
    @IBOutlet weak var lblPercentage: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.loadViewCustom), userInfo: nil, repeats: true)
        
        //make Instanse of VCircularProgressBar
        obj = VCircularProgressBar.init(self.view, radius: 100)
        obj.ProgressColor = UIColor.black
        obj.ProgrssWidth = 20.0
    }
    
    @objc func loadViewCustom() {
        if i < 101 {
            lblPercentage.text = "\(i)%"
            //call the Method Of for draw ProgressBar circular
            obj.MakeProgressBar(ProgressPercentage: i)
            i += 1
        }else{
            timer.invalidate()
            i = 0
        }
    }

 

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
