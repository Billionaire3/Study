//
//  main.swift
//  practice
//
//  Created by Maru on 13/09/2018.
//  Copyright © 2018 Maru. All rights reserved.
//

import Foundation

enum RemoteControl {
    case on, off
    
    mutating func turnOnOff() {
        self = .on
    }
    
}

var onOff = RemoteControl.on
onOff.turnOnOff()
