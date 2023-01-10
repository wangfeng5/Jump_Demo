//
//  XYJJumpTableViewController.swift
//  Jump
//
//  Created by muhlenXi on 2017/3/7.
//  Copyright © 2017年 XiYinjun. All rights reserved.
//

import UIKit

class XYJJumpTableViewController: UITableViewController {

    let dataSource: Array = ["WIFI","Bluetooth",
                             "蜂窝移动网络","个人热点","VPN",
                             "运营商","通知","定位服务",
                             "通用","关于本机",
                             "键盘","辅助功能",
                             "语言与地区","还原",
                             "墙纸","Siri",
                             "隐私","Safari",
                             "音乐","照相与照相机",
                             "FaceTime","电池电量",
                             "存储空间","显示与亮度",
                             "声音设置","App Store",
                             "iCloud","语言设置",
                             "以下是在ios16.1上测试的url",
                             "健康权限页面",
                             "flowz的设置页面（包括屏幕使用时间访问限制）",
    "设置-健康-数据来源",
    "设置-隐私-Siri权限-flowz",
    "设置-隐私-定位服务-Home"];
    let urlStrings: Array = ["App-Prefs:root=WIFI","App-Prefs:root=Bluetooth",
                             "App-Prefs:root=MOBILE_DATA_SETTINGS_ID",
                             "App-Prefs:root=INTERNET_TETHERING",
                             "App-Prefs:root=VPN",
                             "App-Prefs:root=Carrier",
                             "App-Prefs:root=NOTIFICATIONS_ID",
                             "App-Prefs:root=Privacy&path=LOCATION",
                             "App-Prefs:root=General",
                             "App-Prefs:root=General&path=About",
                             "App-Prefs:root=General&path=Keyboard",
                             "App-Prefs:root=General&path=ACCESSIBILITY",
                             "App-Prefs:root=General&path=INTERNATIONAL",
                             "App-Prefs:root=General&path=Reset",
                             "App-Prefs:root=Wallpaper",
                             "App-Prefs:root=SIRI",
                             "App-Prefs:root=Privacy",
                             "App-Prefs:root=SAFARI",
                             "App-Prefs:root=MUSIC",
                             "App-Prefs:root=Photos",
                             "App-Prefs:root=FACETIME",
                             "App-Prefs:root=BATTERY_USAGE",
                             "App-Prefs:root=General&path=STORAGE_ICLOUD_USAGE/DEVICE_STORAGE",
                             "App-Prefs:root=DISPLAY",
                             "App-Prefs:root=Sounds",
                             "App-Prefs:root=STORE",
                             "App-Prefs:root=CASTLE",
                             "App-Prefs:root=General&path=INTERNATIONAL",
                             "",
                             "App-prefs:Privacy&path=HEALTH",
                             "App-prefs:tech.motionz.flowzland",
    "App-Prefs:HEALTH&path=SOURCES_ITEM",
    "App-prefs:SIRI&path=tech.motionz.flowzland",
    "App-prefs:Privacy&path=LOCATION/com.apple.Home"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.rowHeight = 50
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dataSource.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingCell", for: indexPath)

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
