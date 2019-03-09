//
//  ViewController.swift
//  FTPageViewControllerDemo
//
//  Created by liufengting on 2018/8/7.
//  Copyright © 2018年 liufengting. All rights reserved.
//

import UIKit
import FTPageViewController

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func handleButtonTap(_ sender: UIButton) {
        
        var vcx: [UIViewController] = []
        for index in 0...10 {
            let sub: SubViewController = self.storyboard?.instantiateViewController(withIdentifier: "SubViewController") as! SubViewController
            sub.indexString = "\(index)"
            vcx.append(sub)
        }
        
        let ftPageViewController = FTPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
        ftPageViewController.subViewControllers = vcx
        ftPageViewController.currentIndex = 2
        self.present(ftPageViewController, animated: true) {
            
        }
    }
    
}

