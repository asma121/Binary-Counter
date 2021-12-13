//
//  PowerofTenCell.swift
//  Binary Counter
//
//  Created by admin on 13/12/2021.
//

import UIKit

protocol BinaryTableViewCell : AnyObject {
    func valueChangedBy(value : Int)
}


class PowerofTenCell: UITableViewCell {
    
   

    @IBOutlet weak var powerofTenLabel: UILabel!
    
    weak var delegate : BinaryTableViewCell?
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

   
    @IBAction func buttonPressed(_ sender: UIButton) {
        var value = Int(powerofTenLabel.text!)!
        if sender.titleLabel?.text == "-"{
           value = -value
        }
        delegate?.valueChangedBy(value: value)
    }
    
}
