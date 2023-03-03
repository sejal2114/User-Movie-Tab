//
//  UserTableViewCell.swift
//  User-Movie-Tab
//
//  Created by Sejal on 03/03/23.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var age: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        backgroundColor = .darkGray
        self.layer.borderWidth = 0
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    
}
