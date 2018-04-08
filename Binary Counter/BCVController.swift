//
//  ViewController.swift
//  Binary Counter
//
//  Created by Ian Yang on 3/14/18.
//  Copyright © 2018 Ian Yang. All rights reserved.
//

import UIKit

class BCVController: UITableViewController, BCVControllerDelegate {
    
    func add(by: CustomCell, num: Int) {
        counter += num
        totalLabel.text = "Total: \(counter)"
        
    }
    func sub(by: CustomCell, num: Int) {
        counter -= num
        totalLabel.text = "Total: \(counter)"
        
    }
    
    
    
    @IBOutlet weak var totalLabel: UILabel!
    
    var nums: [Int] = []
    var counter: Int = 0
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomCell
        cell.rightLabel.text = String(nums[indexPath.row])
        cell.delegate = self
        // return cell so that Table View knows what to draw in each row
        return cell
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nums.count
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        var counter = 1
        for _ in 1...16 {
            nums.append(1 * counter)
            counter *= 10
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

