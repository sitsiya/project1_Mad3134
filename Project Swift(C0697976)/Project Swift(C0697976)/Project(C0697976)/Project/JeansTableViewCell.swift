//
//  JeansTableViewCell.swift
//  Project
//
//  Created by MacStudent on 2017-07-04.
//  Copyright © 2017 com.chaitali. All rights reserved.
//

import UIKit

class JeansTableViewCell: UITableViewCell {

    @IBOutlet weak var imageJeans: UIImageView!
    @IBOutlet weak var lblProductName: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
