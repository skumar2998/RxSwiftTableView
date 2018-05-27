//
//  SKTableViewCell.swift
//  RxSwiftTableView
//
//  Created by Kumar, Sunil on 27/05/18.
//  Copyright © 2018 AppScullery. All rights reserved.
//

import UIKit

class SKTableViewCell: UITableViewCell {

    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var rightLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
