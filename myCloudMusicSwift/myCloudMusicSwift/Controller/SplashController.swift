//
//  SplashController.swift
//  第二个启动界面；例如可以添加判断用户是否登录，从而跳转至不同的界面，也可以判断是否显示引导界面，获取广告等功能
//
//  Created by 徐展华 on 2019/8/31.
//  Copyright © 2019 Zhanhua Xu. All rights reserved.
//

import UIKit

class SplashController: UIViewController {
    
//    加载视图成功后调用
//    类似安卓中Activity的onCreate方法
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //延时3秒钟
        DispatchQueue.main.asyncAfter(deadline: .now()+3) {
            self.next()
        }
    }
    
//    延时3秒后调用
    func next(){
        print("SplashController next")
        
        
        //获取当前应用的AppDelegate对象
        //全局只有一个
        
        //这里可能会报错 找不到AppDelegate 这属于正常现象
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        //调用它里面的方法显示引导界面
        appDelegate.toGuide()
    }
    
}
