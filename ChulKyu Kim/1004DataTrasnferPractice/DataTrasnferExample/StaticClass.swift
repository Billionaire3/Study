//
//  StaticClass.swift
//  DataTrasnferExample
//
//  Created by Maru on 04/10/2018.
//  Copyright © 2018 giftbot. All rights reserved.
//

import UIKit

class PracticeStatic {
    static let doStatic = PracticeStatic()
    private init() {}
    var staticText = "static"
}
