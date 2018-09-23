//
//  ElevatorController.swift
//  basicDP
//
//  Created by Gevorg Sukiasyan on 9/23/18.
//  Copyright © 2018 Gevorg Sukiasyan. All rights reserved.
//

import Foundation

//Proxy
class ElevatorController : Elevator {
    var elevator : Elevator
    
    init(elevator: Elevator) {
        self.elevator = elevator
    }
    
    func up() {
        elevator.up()
        print("handled by ElevatorController")
    }
    
    func down() {
        elevator.down()
        print("handled by ElevatorController")
    }
}
