//
//  ViewController.swift
//  ViewControllerContainment
//
//  Created by dilip kumar on 04/09/18.
//  Copyright © 2018 dilip kumar. All rights reserved.
//https://www.youtube.com/watch?v=kq-lHR5ZOW0

import UIKit

class MasterViewController: UIViewController {

    @IBOutlet var segmentedControl: UISegmentedControl!
    
    lazy var summeryViewController : SummeryViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "SummeryViewController") as! SummeryViewController
        self.addviewControllerAsChildViewController(childViewControllers: viewController)
        return viewController
    }()
    
    lazy var sessionViewController : SessionViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "SessionViewController") as! SessionViewController
        self.addviewControllerAsChildViewController(childViewControllers: viewController)
        return viewController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        setupView();


    }
 
    // setup master view
    private func setupView(){
        setupSegmentedControl()
        
        updateView()
    }
    
    // update view
    private func updateView(){
        summeryViewController.view.isHidden = !(segmentedControl.selectedSegmentIndex==0)
        sessionViewController.view.isHidden = (segmentedControl.selectedSegmentIndex==0)

    }
    
    
    // setup segmented control
    private func setupSegmentedControl(){
        segmentedControl.removeAllSegments()
         segmentedControl.insertSegment(withTitle: "summery", at: 0, animated: true)
        segmentedControl.insertSegment(withTitle: "session", at: 1, animated: false)
        segmentedControl.addTarget(self, action: #selector(selecterDidChange(sender:)), for: .valueChanged)
        
        segmentedControl.selectedSegmentIndex = 0
    }
    
    @IBAction func segmentSelecterAction(_ sender: Any) {
        updateView();
    }
    @objc private func selecterDidChange(sender: UISegmentedControl){
//        updateView();
    }
    //
    private func addviewControllerAsChildViewController(childViewControllers: UIViewController){
        addChildViewController(childViewControllers)
        
         view.addSubview(childViewControllers.view)
        childViewControllers.view.frame = view.bounds
        childViewControllers.view.autoresizingMask = [.flexibleWidth,.flexibleHeight]
    }
}

