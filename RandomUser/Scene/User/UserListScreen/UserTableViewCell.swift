//
//  UserTableViewCell.swift
//  RandomUser
//
//  Created by BOGU$ on 03/01/2019.
//  Copyright © 2019 Technoscence. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
