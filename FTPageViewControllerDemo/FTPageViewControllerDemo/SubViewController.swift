//
//  SubViewController.swift
//  FTPageViewControllerDemo
//
//  Created by liufengting on 2018/8/7.
//  Copyright © 2018年 liufengting. All rights reserved.
//

import UIKit

class SubViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    public var indexString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.label.text = indexString
    }

}
