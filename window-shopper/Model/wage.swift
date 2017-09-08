//
//  wage.swift
//  window-shopper
//
//  Created by Andrew Taylor on 08/09/2017.
//  Copyright © 2017 Andrew Taylor. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
