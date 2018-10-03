//
//  FirstTableViewCell.swift
//  TableViewDemo
//
//  Created by dilip kumar on 27/07/18.
//  Copyright © 2018 dilip kumar. All rights reserved.
//

import UIKit

class FirstTableViewCell: UITableViewCell {

    
     @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
