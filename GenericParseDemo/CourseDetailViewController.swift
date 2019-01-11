//
//  CourseDetailViewController.swift
//  GenericParseDemo
//
//  Created by Ujjwal's iMac on 1/11/19.
//  Copyright © 2019 Redeem. All rights reserved.
//

import UIKit

class CourseDetailViewController: BaseTableViewController<CourseCell,CourseDetail> {
        
    override func viewDidLoad() {
        super.viewDidLoad()

        fetchGenericData(urlString: "https://api.letsbuildthatapp.com/youtube/course_detail?id=1") { (courses: [CourseDetail]) in
            DispatchQueue.main.async {
                self.items = courses
                courses.forEach({print($0.name)})
                self.tableView.reloadData()
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
}
