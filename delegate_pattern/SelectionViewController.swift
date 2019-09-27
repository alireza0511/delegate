//
//  SelectionViewController.swift
//  delegate_pattern
//
//  Created by Jazzb Dev on 9/26/19.
//  Copyright © 2019 Jazzb Dev. All rights reserved.
//

import Foundation
import UIKit

protocol SelectionDelegate {
    func userChoose(selected: String)
}

class SelectionViewController: UIViewController {
    
    var selectDelegate: SelectionDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func shirAction(_ sender: Any) {
       back(selected: "UP")
    }
    
    @IBAction func khatAction(_ sender: Any) {
        back(selected: "DOWN")
    }
    
    func back(selected: String){
        selectDelegate.userChoose(selected: selected)
        dismiss(animated: true, completion: nil)
    }
    
}
