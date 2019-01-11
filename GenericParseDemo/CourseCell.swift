//
//  CourseCell.swift
//  GenericParseDemo
//
//  Created by Ujjwal's iMac on 1/11/19.
//  Copyright © 2019 Redeem. All rights reserved.
//

import UIKit

class CourseCell: BaseCell<CourseDetail> {

    override var item: CourseDetail!{
        didSet{
            textLabel?.text = item.name
            self.backgroundColor = UIColor.yellow
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
