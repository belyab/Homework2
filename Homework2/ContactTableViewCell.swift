//
//  ContactTableViewCell.swift
//  Homework2
//
//  Created by Эльмира Байгулова on 02.07.2021.
//

import UIKit

class ContactTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setData(contact: ContactsCellData) {
        nameLabel.text = contact.name
        numberLabel.text = contact.phoneNumber
        
        
    }

}
