//
//  ProxyViewController.swift
//  basicDP
//
//  Created by Gevorg Sukiasyan on 9/23/18.
//  Copyright © 2018 Gevorg Sukiasyan. All rights reserved.
//

import UIKit

class ProxyViewController: UIViewController {
    
    @IBOutlet weak var elevatorView: ElevatorView!
    
    var elevatorController : ElevatorController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        elevatorController = ElevatorController(elevator: elevatorView)
    }
    
    @IBAction func upBtnPressed(_ sender: Any) {
        elevatorController.up()
    }
    
    @IBAction func downBtnPressed(_ sender: Any) {
        elevatorController.down()
    }
}
