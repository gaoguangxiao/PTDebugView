//
//  RSBaseViewController+DebugView.swift
//  RSReading
//
//  Created by 高广校 on 2023/12/22.
//

import Foundation
//import GXSwiftNetwork
import GGXSwiftExtension
//import ZKBaseSwiftProject
//import RSBridgeOfflineWeb

public extension UIViewController {
    
    var debugView: PTDebugView {
        get {
            let view = PTDebugView()
            view.headInfoLog = getHeadLogIngo()
            view.tapCorner = .rightUp
            return view
        }
        set {
            _ = newValue
        }
    }
    
    func getHeadLogIngo() -> String {
//        let url = "Base URL : " + RSConfig.APiUrl + "\n"
//        let weburl = "Web  URL : " + RSConfig.WebUrl  + "\n"
        let appVersion = kAppVersion ?? ""
//        let appBuildVersion = UserDefaults.webVersion ?? ""
//        let build = "App Version : " + appVersion + "   web version : " + appBuildVersion  + "\n\n\n"
        return appVersion
    }

    @objc func debugTest() {
//        guard DevelopmentMode.isTest  == true else {
//            return
//        }
        debugView.supportIn(superView: self.view, apiURL: "") { [weak self] (event) in
//            guard let `self` = self else { return }
            switch event {
            case .ChangeUrl(let debugVw) :
//                let vc = RSURLTestViewController()
//                vc.block = { [weak self] str , apiUrl in
//                    guard let self else { return  }
//                    debugVw.isHidden = true
//                    debugVw.headInfoLog = getHeadLogIngo()
//                    if let str = str {
//                        homepageVc.urlString = str
//                    }
//                    //更新API的apihost
//                    if let apiUrl = apiUrl {
//                        MSBApiConfig.shared.updateApiHost(apiUrl)
//                    }
//                }
//                self.present(vc, animated: true, completion: nil)
                break
            case .pkgAction(let tag):
//                if tag == 7 {
//                    //禁用
//                    RSWebOfflineManager.share.enable_cache = false
//                    PTDebugView.addLog("set enable_cache: false")
//                } else if tag == 8 {
//                    
//                    RSWebOfflineManager.share.removeAll()
//                } else if tag == 6 {
//                    
//                    RSWebOfflineManager.share.enable_cache = true
//                    PTDebugView.addLog("set enable_cache: false")
//                }
//                print("离线包操作：\(tag)")
                break
            case .ReloadWeb:
                //                self.webView.reload()
//                homepageVc.urlString = RSConfig.WebUrl
                break;
            case .otherAction(let index):
                switch index {
                case 5://显示录音按钮
                    NotificationCenter.default.post(name: NSNotification.Name("Debug_RecordClick"), object: nil)
                    break
                default:
                    break
                }
                break
            default:
                break
            }
        }
    }
}
