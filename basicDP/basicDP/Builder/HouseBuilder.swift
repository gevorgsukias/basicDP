//
//  HouseBuilder.swift
//  basicDP
//
//  Created by Gevorg Sukiasyan on 9/23/18.
//  Copyright © 2018 Gevorg Sukiasyan. All rights reserved.
//

import Foundation

class HouseBuilder {
    //windows roof door values binary: WRD
    private var buildSettings = 0
    
    //first value:  00X
    @discardableResult
    func addDoor() -> HouseBuilder {
        buildSettings |= 1
        return self
    }
    
    @discardableResult
    func removeDoor() -> HouseBuilder {
        buildSettings &= 6
        return self
    }
    
    //second value: 0X0
    @discardableResult
    func addRoof() -> HouseBuilder {
        buildSettings |= 2
        return self
    }
    
    @discardableResult
    func removeRoof() -> HouseBuilder {
        buildSettings &= 5
        return self
    }
    
    //third value:  X00
    @discardableResult
    func addWindows() -> HouseBuilder {
        buildSettings |= 4
        return self
    }
    
    @discardableResult
    func removeWindows() -> HouseBuilder! {
        buildSettings &= 3
        return self
    }
    
    func build() {
        switch buildSettings {
        case 0:
            print("no door, no roof, no windows? hmmm.. okay, done.")
        case 1:
            print("only a door? well, it's your choice.")
        case 2:
            print("only a roof? well, it's your choice.")
        case 3:
            print("without windows electricity bills are gonna be high.")
        case 4:
            print("only windows? well, it's your choice.")
        case 5:
            print("without a roof? I guess you're not afraid to get wet or get cold.")
        case 6:
            print("without a door? at least you can use windows to get in.")
        case 7:
            print("door, roof, windows, you've got everything you need, great job.")
        default:
            print("something went wrong, try again.")
        }
    }
}
