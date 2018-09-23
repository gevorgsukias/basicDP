//
//  Buttons.swift
//  basicDP
//
//  Created by Gevorg Sukiasyan on 9/23/18.
//  Copyright © 2018 Gevorg Sukiasyan. All rights reserved.
//

import UIKit

protocol SecurityButton {
    func press()
}

class AlertButton: SecurityButton {

    func press() {
        print("Alert button pressed!")
    }
}

class PhaseButton: SecurityButton {
    
    func press() {
        print("Phase button pressed")
    }
}

protocol ColoredSecurityButton {
    var button : SecurityButton { get set }
    func press()
}

class RedSecurityButton: ColoredSecurityButton {
    var button: SecurityButton
    
    init(button: SecurityButton) {
        self.button = button
    }
    
    func press() {
        button.press()
        print("Code: Red.")
    }
}

class YellowSecurityButton: ColoredSecurityButton {
    var button: SecurityButton
    
    init(button: SecurityButton) {
        self.button = button
    }
    
    func press() {
        button.press()
        print("Code: Yellow.")
    }
}

class GreenSecurityButton: ColoredSecurityButton {
    var button: SecurityButton
    
    init(button: SecurityButton) {
        self.button = button
    }
    
    func press() {
        button.press()
        print("Code: Green.")
    }
}

class MagentaSecurityButton: ColoredSecurityButton {
    var button: SecurityButton
    
    init(button: SecurityButton) {
        self.button = button
    }
    
    func press() {
        button.press()
        print("Code: Magenta.")
    }
}

class CyanSecurityButton: ColoredSecurityButton {
    var button: SecurityButton
    
    init(button: SecurityButton) {
        self.button = button
    }
    
    func press() {
        button.press()
        print("Code: Cyan.")
    }
}

class IndigoSecurityButton: ColoredSecurityButton {
    var button: SecurityButton
    
    init(button: SecurityButton) {
        self.button = button
    }
    
    func press() {
        button.press()
        print("Code: Indigo.")
    }
}
