//
//  XYJAPPsTableViewController.swift
//  Jump
//
//  Created by muhlenXi on 2017/3/7.
//  Copyright © 2017年 XiYinjun. All rights reserved.
//

import UIKit

class XYJAPPsTableViewController: UITableViewController {

    let dataSource = ["打10086",
                      "App Store","Safari",
                      "Maps","备忘录",
                      "SMS","Mail",
                      "iBooks","Music",
                      "Videos",
                      "QQ","微信",
                      "淘宝","支付宝",
                      "新浪微博","知乎"]
    let urlStrings = ["tel://10086",
                      "itms-apps://","http://muhlenxi.com/",
                      "maps://","mobilenotes://",
                      "sms://","mailto://",
                      "ibooks://","music://",
                      "videos://",
                      "mqq://","weixin://",
                      "taobao://","alipay://",
                      "sinaweibo://","zhihu://"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dataSource.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AppCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = dataSource[indexPath.row]

        return cell
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let urlStr = urlStrings[indexPath.row]
        if let url = URL(string:urlStr) {
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(url, options: Dictionary(), completionHandler: nil)
            } else {
                // Fallback on earlier versions
                UIApplication.shared.openURL(url)
            }
        }
    }
}
