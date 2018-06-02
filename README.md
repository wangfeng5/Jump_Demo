# Jump iOS跳转系统设置和打开其他 APP

*详情请查看我的博客 [muhlenXi](http://muhlenxi.com/2017/03/07/iOS%E8%B7%B3%E8%BD%AC%E7%B3%BB%E7%BB%9F%E8%AE%BE%E7%BD%AE%E5%92%8C%E6%89%93%E5%BC%80%E5%85%B6%E4%BB%96APP/)*

### 亲测可以正常使用的 URL Scheme !!!

#### 系统设置

| 要跳转的设置界面  | URL String    | 备注  |
| ------------- |:-------------:| -----:|
| WIFI | App-Prefs:root=WIFI |
| Bluetooth | App-Prefs:root=Bluetooth |
| 蜂窝移动网络 | App-Prefs:root=MOBILE_DATA_SETTINGS_ID |
| 个人热点 | App-Prefs:root=INTERNET_TETHERING |
| VPN | App-Prefs:root=VPN |
| 运营商| App-Prefs:root=Carrier |
| 通知 | App-Prefs:root=NOTIFICATIONS_ID |
| 定位服务 | App-Prefs:root=Privacy&path=LOCATION |
| 通用 | App-Prefs:root=General |
| 关于本机 | App-Prefs:root=General&path=About |
| 键盘 | App-Prefs:root=General&path=Keyboard |
| 辅助功能 | App-Prefs:root=General&path=ACCESSIBILITY |
| 语言与地区 | App-Prefs:root=General&path=INTERNATIONAL |
| 还原 | App-Prefs:root=General&path=Reset |
| 墙纸 | App-Prefs:root=Wallpaper |
| Siri | App-Prefs:root=SIRI |
| 隐私 | App-Prefs:root=Privacy |
| Safari | App-Prefs:root=SAFARI |
| 音乐 | App-Prefs:root=MUSIC |
| 照相与照相机 | App-Prefs:root=Photos |
| FaceTime | App-Prefs:root=FACETIME |
| 电池电量 | App-Prefs:root=BATTERY_USAGE |
| 存储空间 | App-Prefs:root=General&path=STORAGE_ICLOUD_USAGE/DEVICE_STORAGE |
| 显示与亮度 |App-Prefs:root=DISPLAY |
| 声音设置 | App-Prefs:root=Sounds |
| App Store | App-Prefs:root=STORE |
| iCloud | App-Prefs:root=CASTLE |
| 语言设置 | App-Prefs:root=General&path=INTERNATIONAL |

#### 自带 App 和第三方 App

| 要打开的APP     | URL Scheme    | Bundle Identifier  |
| ------------- |:-------------:| -----:|
|  |  |  |
| 打10086 | tel://10086 |  |
| App Store | itms-apps:// |  |
| Safari | http://muhlenxi.com/ |  |
| Maps | maps:// |  |
| 备忘录 | mobilenotes:// |  |
| SMS | sms:// |  |
| Mail | mailto:// |  |
| iBooks | ibooks:// |  |
| Music |  music:// |  |
| Videos | videos:// |  |
|  |  |
| QQ | mqq:// |  |
|微信 | weixin:// ||
| 淘宝 | taobao://||
| 支付宝 | alipay:// | |
| 新浪微博 | sinaweibo:// | |
|知乎| zhihu://| |

*感谢阅读，有什么问题可以给我留言。如果觉得不错的话，可以点个Star支持一下作者！本文不阶段更新中...*
