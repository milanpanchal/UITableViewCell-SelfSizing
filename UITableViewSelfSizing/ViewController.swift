//
//  ViewController.swift
//  UITableViewSelfSizing
//
//  Created by MilanPanchal on 12/12/14.
//  Copyright (c) 2014 Pantech. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    @IBOutlet var titleLabel:UILabel!
    @IBOutlet var valueLabel:UILabel!



    var basicInfoDict:[String:String] = ["Name":"Milan Panchal",
                                    "Email":"sam07it22@gmail.com / milan.panchal@icloud.com",
                                    "LinkedIn":"https://www.linkedin.com/in/milanpanchal",
                                    "GitHub":"https://github.com/milanpanchal",
                                    "Stackoverflow":"http://stackoverflow.com/users/1748956/milanpanchal",
                                    "Google Plus":"https://plus.google.com/+MilanSamPanchal/",
                                    "Skype":"milan_panchal24",
                                    "Twitter":"https://twitter.com/milan_panchal24",
                                    "Slideshare":"http://www.slideshare.net/MilanPantech/",
                                    "Blog":"http://techfuzionwithsam.wordpress.com/"
                                    ]
    
    var basicInfoTitles:[String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        basicInfoTitles = [String](basicInfoDict.keys)

        tableView.estimatedRowHeight = 80.0
        tableView.rowHeight = UITableViewAutomaticDimension
        
    }
    
    override func viewDidAppear(animated: Bool) {
        tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return basicInfoTitles.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "CustomCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as CustomCell
        
        let infoTitle = basicInfoTitles[indexPath.row]
        cell.titleLabel.text = infoTitle
        cell.valueLabel.text = basicInfoDict[infoTitle]
        
        return cell
    }

    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Personal Info"
    }
}

