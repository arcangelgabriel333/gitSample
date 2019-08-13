//
//  ViewController.swift
//  gitSample
//
//  Created by Usuario on 13/08/2019.
//  Copyright © 2019 Antonio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelText: UILabel!
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("hola mundo")
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(handleTimer), userInfo: nil, repeats: true)

    }
    
    @objc func handleTimer() {
        let formatter = DateFormatter()
        formatter.dateFormat = "hh-mm-ss"
        labelText.text = formatter.string(from: Date())
    }
}

