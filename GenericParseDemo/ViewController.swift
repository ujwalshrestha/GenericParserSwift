//
//  ViewController.swift
//  GenericParseDemo
//
//  Created by Ujjwal's iMac on 1/11/19.
//  Copyright © 2019 Redeem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        fetchGenericData(urlString: "https://api.letsbuildthatapp.com/youtube/home_feed") { (homeFeed: HomeFeed) in
            homeFeed.videos.forEach({print(($0.name, $0.id))})
        }
        fetchGenericData(urlString: "https://api.letsbuildthatapp.com/youtube/course_detail?id=1") { (courseDetails:[CourseDetail]) in
            courseDetails.forEach({print($0.name)})
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    

}




struct HomeFeed:Decodable {
    let videos: [Video]
}
struct Video: Decodable {
    let id: Int
    let name: String
}
