//
//  UserCell.swift
//  tableViewPractice
//
//  Created by Ellen Yang on 4/29/21.
//

import UIKit

class UserCell: UITableViewCell {

   @IBOutlet weak var nameLabel: UILabel!
   @IBOutlet weak var hometownLabel: UILabel!

   override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
