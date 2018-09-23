//
//  AdapterViewController.swift
//  basicDP
//
//  Created by Gevorg Sukiasyan on 9/23/18.
//  Copyright © 2018 Gevorg Sukiasyan. All rights reserved.
//

import UIKit

class AdapterViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    let lightSwitcher = LightSwitcher()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func lightSwitchValueChanged(_ sender: UISwitch) {
        if sender.isOn {
            view.backgroundColor = UIColor.white
            titleLabel.textColor = UIColor.black
            descriptionLabel.textColor = UIColor.black
        } else {
            view.backgroundColor = UIColor.black
            titleLabel.textColor = UIColor.white
            descriptionLabel.textColor = UIColor.white
        }
        lightSwitcher.switchLightState()
    }
}
