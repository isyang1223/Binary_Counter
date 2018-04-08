//
//  CustomCell.swift
//  Binary Counter
//
//  Created by Ian Yang on 3/14/18.
//  Copyright © 2018 Ian Yang. All rights reserved.
//

import UIKit
class CustomCell: UITableViewCell {
    
    weak var delegate: BCVControllerDelegate?
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        let val = Int(rightLabel.text!)
        delegate?.add(by: self, num: val!)
       
    }
    @IBAction func subButtonPressed(_ sender: UIButton) {
        let val = Int(rightLabel.text!)
        delegate?.sub(by: self, num: val!)
        
    }
    
    
    
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var rightLabel: UILabel!
    
}
