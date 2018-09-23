//
//  LightSwitcher.swift
//  basicDP
//
//  Created by Gevorg Sukiasyan on 9/23/18.
//  Copyright © 2018 Gevorg Sukiasyan. All rights reserved.
//

import Foundation

//Target
protocol LightState {
    func switchLightState()
}

//Adaptee
class Switcher {
    var state = true
    
    func switchState() {
        state = !state
        let stateStr = state ? "on" : "off"
        print("turned " + stateStr)
    }
}

//Adapter
class LightSwitcher: Switcher, LightState {
    func switchLightState() {
        switchState()
    }
}
