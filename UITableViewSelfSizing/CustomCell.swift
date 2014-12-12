//
//  CustomCell.swift
//  UITableViewSelfSizing
//
//  Created by MilanPanchal on 12/12/14.
//  Copyright (c) 2014 Pantech. All rights reserved.
//

import UIKit


class CustomCell: UITableViewCell {
    
    @IBOutlet var titleLabel:UILabel!
    @IBOutlet var valueLabel:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}