//
//  BuilderViewController.swift
//  basicDP
//
//  Created by Gevorg Sukiasyan on 9/23/18.
//  Copyright © 2018 Gevorg Sukiasyan. All rights reserved.
//

import UIKit

class BuilderViewController: UIViewController {

    let houseBuilder = HouseBuilder()
    
    @IBOutlet weak var doorSwitch: UISwitch!
    @IBOutlet weak var roofSwitch: UISwitch!
    @IBOutlet weak var windowsSwitch: UISwitch!
    @IBOutlet weak var defaultBtn: UIButton!
    @IBOutlet weak var buildBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        defaultBtn.layer.shadowRadius = 2
        defaultBtn.layer.shadowOpacity = 0.5
        defaultBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
        
        buildBtn.layer.shadowRadius = 2
        buildBtn.layer.shadowOpacity = 0.5
        buildBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
    }

    @IBAction func doorSwitchValueChanged(_ sender: UISwitch) {
        if sender.isOn {
            houseBuilder.addDoor()
        } else {
            houseBuilder.removeDoor()
        }
    }
    
    @IBAction func roofSwitchValueChanged(_ sender: UISwitch) {
        if sender.isOn {
            houseBuilder.addRoof()
        } else {
            houseBuilder.removeRoof()
        }
    }
    
    @IBAction func windowsSwitchValueChanged(_ sender: UISwitch) {
        if sender.isOn {
            houseBuilder.addWindows()
        } else {
            houseBuilder.removeWindows()
        }
    }
    
    @IBAction func buildBtnPressed(_ sender: Any) {
        houseBuilder.build()
    }
    
    @IBAction func defaultBtnPressed(_ sender: Any) {
        doorSwitch.isOn = true
        roofSwitch.isOn = true
        windowsSwitch.isOn = true
        
        houseBuilder.addDoor()
            .addRoof()
            .addWindows()
            .build()
    }
}

