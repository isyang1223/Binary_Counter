//
//  BCVControllerDelegate.swift
//  Binary Counter
//
//  Created by Ian Yang on 3/14/18.
//  Copyright © 2018 Ian Yang. All rights reserved.
//

import UIKit
protocol BCVControllerDelegate: class {
    
    func add(by: CustomCell, num: Int)
    func sub(by: CustomCell, num: Int)
}
