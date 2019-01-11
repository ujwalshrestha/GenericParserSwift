//
//  VideoTableViewController.swift
//  GenericParseDemo
//
//  Created by Ujjwal's iMac on 1/11/19.
//  Copyright © 2019 Redeem. All rights reserved.
//

import UIKit

class VideoTableViewController: BaseTableViewController<VideoCell,Video> {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        fetchGenericData(urlString: "https://api.letsbuildthatapp.com/youtube/home_feed") {  (homeFeed: HomeFeed) in
            
            homeFeed.videos.forEach({print($0.name)})
            DispatchQueue.main.async {
                self.items = homeFeed.videos
                self.tableView.reloadData()
            }
        }
        
        func viewDidAppear(){
            super.viewDidAppear(true)
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
