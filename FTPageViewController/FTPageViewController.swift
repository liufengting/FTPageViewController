//
//  FTPageViewController.swift
//  FTPageViewController
//
//  Created by liufengting on 2018/8/7.
//  Copyright © 2018年 liufengting. All rights reserved.
//

import UIKit

open class FTPageViewController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    public var selectedIndex: NSInteger = 0 {
        didSet {
            self.reload()
        }
    }
    
    public var subViewControllers: [UIViewController] = [] {
        didSet {
            self.reload()
        }
    }
    
    public override init(transitionStyle style: UIPageViewControllerTransitionStyle, navigationOrientation: UIPageViewControllerNavigationOrientation, options: [String : Any]? = nil) {
        super.init(transitionStyle: style, navigationOrientation: navigationOrientation, options: options)
        self.setup()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setup()
    }
    
    public func setup() {
        self.delegate = self
        self.dataSource = self
    }
    
    override open func viewDidLoad() {
        super.viewDidLoad()
    }
    
    public func reload() {
        if self.subViewControllers.count > 0 && self.selectedIndex <= self.subViewControllers.count - 1 {
            let VC : UIViewController = self.subViewControllers[self.selectedIndex]
            self.setViewControllers([VC], direction: .forward, animated: false) { (completion) in }
        }
    }
    
    //    MARK: - UIPageViewControllerDelegate, UIPageViewControllerDataSource
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let index = self.subViewControllers.firstIndex(of: viewController)
        return (index == 0 || index == NSNotFound || index == nil) ? nil : self.subViewControllers[index!-1];
    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let index = self.subViewControllers.firstIndex(of: viewController)
        return (index == 0 || index == NSNotFound || index == nil || index! >= self.subViewControllers.count - 1) ? nil : self.subViewControllers[index!+1];
    }
    
}
