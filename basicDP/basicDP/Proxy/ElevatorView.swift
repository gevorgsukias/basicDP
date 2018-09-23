//
//  ElevatorView.swift
//  basicDP
//
//  Created by Gevorg Sukiasyan on 9/23/18.
//  Copyright © 2018 Gevorg Sukiasyan. All rights reserved.
//

import UIKit

protocol Elevator {
    func up()
    func down()
}

class ElevatorView: UIView, Elevator {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet var floors: [UIView]!
    
    var currentFloor = 2
    //00A0FF
    let passive = UIColor.init(red: 0, green: 160.0/255.0, blue: 1, alpha: 1)
    //FFED8D
    let active = UIColor.init(red: 1, green: 237.0/255.0, blue: 141.0/255.0, alpha: 1)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        let nibName = "ElevatorView"
        Bundle.main.loadNibNamed(nibName, owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    
    func up() {
        if currentFloor > 0 {
            for floor in floors {
                if floor.tag == currentFloor - 1 {
                    floor.backgroundColor = active
                } else {
                    floor.backgroundColor = passive
                }
            }
            currentFloor = currentFloor - 1
        }
        print("up button pressed.")
    }
    
    func down() {
        if currentFloor < floors.count - 1 {
            for floor in floors {
                if floor.tag == currentFloor + 1 {
                    floor.backgroundColor = active
                } else {
                    floor.backgroundColor = passive
                }
            }
            currentFloor = currentFloor + 1
        }
        print("down button pressed.")
    }
}
