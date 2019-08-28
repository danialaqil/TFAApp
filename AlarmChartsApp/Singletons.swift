//
//  Singletons.swift
//  AlarmChartsApp
//
//  Created by Danial Aqil on 28/8/19.
//  Copyright © 2019 imdadsl. All rights reserved.
//

import Foundation
import UIKit

struct Global {
    //singletons for the x values for screen 2
    static var chiller1x: Double?
    static var chiller2x: Double?
    static var chiller3x: Double?
    static var chiller4x: Double?
    
    //state for graph matrix (idk how to make this work yet)
    /*
    static var chiller1matrix: touchMatrix?
    static var chiller2matrix: touchMatrix?
    static var chiller3matrix: touchMatrix?
    static var chiller4matrix: touchMatrix/
    */
    
    static func setChiller1x (chiller1x: Double) {
        Global.chiller1x = chiller1x
    }
    
    static func setChiller2x (chiller2x: Double) {
        Global.chiller2x = chiller2x
    }
    
    static func setChiller3x (chiller3x: Double) {
        Global.chiller3x = chiller3x
    }
    
    static func setChiller4x (chiller4x: Double) {
        Global.chiller4x = chiller4x
    }
}
