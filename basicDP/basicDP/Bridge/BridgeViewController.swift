//
//  BridgeViewController.swift
//  basicDP
//
//  Created by Gevorg Sukiasyan on 9/23/18.
//  Copyright © 2018 Gevorg Sukiasyan. All rights reserved.
//

import UIKit

class BridgeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func greenBtnPressed(_ sender: Any) {
        let greenAlertButton = GreenSecurityButton(button: AlertButton())
        greenAlertButton.press()
    }
    
    @IBAction func yellowBtnPressed(_ sender: Any) {
        let yellowAlertButton = YellowSecurityButton(button: AlertButton())
        yellowAlertButton.press()
    }
    
    @IBAction func redBtnPressed(_ sender: Any) {
        let redAlertButton = RedSecurityButton(button: AlertButton())
        redAlertButton.press()
    }
    
    @IBAction func magentaBtnPressed(_ sender: Any) {
        let magentaPhaseButton = MagentaSecurityButton(button: PhaseButton())
        magentaPhaseButton.press()
    }
    
    @IBAction func indigoBtnPressed(_ sender: Any) {
        let indigoPhaseButton = IndigoSecurityButton(button: PhaseButton())
        indigoPhaseButton.press()
    }
    
    @IBAction func cyanBtnPressed(_ sender: Any) {
        let cyanPhaseButton = CyanSecurityButton(button: PhaseButton())
        cyanPhaseButton.press()
    }
}

