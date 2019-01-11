//
//  VideoCell.swift
//  GenericParseDemo
//
//  Created by Ujjwal's iMac on 1/11/19.
//  Copyright © 2019 Redeem. All rights reserved.
//

import UIKit

class VideoCell: BaseCell<Video> {

    override var item: Video!{
        didSet{
            textLabel?.text = item.name
            self.backgroundColor = UIColor.red
        }
    }
}
