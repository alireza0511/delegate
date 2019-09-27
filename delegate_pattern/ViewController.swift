//
//  ViewController.swift
//  delegate_pattern
//
//  Created by Jazzb Dev on 9/26/19.
//  Copyright © 2019 Jazzb Dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lable: UILabel!
    @IBOutlet weak var btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnAction(_ sender: Any) {
        
        let selectVC = storyboard?.instantiateViewController(identifier: "selection") as! SelectionViewController
        selectVC.selectDelegate = self
        present(selectVC, animated: true, completion: nil)
    }
    
}

extension ViewController: SelectionDelegate{
    func userChoose(selected: String) {
        lable.text = selected
    }
    
    
}
