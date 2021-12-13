//
//  ViewController.swift
//  Binary Counter
//
//  Created by admin on 12/12/2021.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , BinaryTableViewCell {
    func valueChangedBy(value: Int) {
        total += value
        totalLabel.text = "Total : \(total)"
    }
    
    var values = [Decimal]()
    var total = 0
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        values.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "powerCell", for: indexPath) as! PowerofTenCell
        cell.powerofTenLabel.text = "\(values[indexPath.row])"
        cell.delegate = self
        return cell
    }
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var powerTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for i in 0...15{
            let value = pow(10, i)
            values.append(value)
        }
        
        powerTableView.dataSource = self
        
    }


}

