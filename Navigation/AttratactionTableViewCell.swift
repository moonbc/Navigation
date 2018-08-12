//
//  AttratactionTableViewCell.swift
//  Navigation
//
//  Created by 402-07 on 2018. 8. 4..
//  Copyright © 2018년 moonbc. All rights reserved.
//

import UIKit

class AttratactionTableViewCell: UITableViewCell {

    @IBOutlet weak var attractionImage: UIImageView!
    @IBOutlet weak var attractionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
