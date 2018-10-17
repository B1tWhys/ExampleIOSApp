//
//  NavTableViewCell.swift
//  ExampleIOSApp
//
//  Created by Skyler Arnold on 10/17/18.
//  Copyright © 2018 Skyler Arnold. All rights reserved.
//

import UIKit

class NavTableViewCell: UITableViewCell {
	@IBOutlet weak var titleLabel: UILabel!
	@IBOutlet weak var countLabel: UILabel!
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
