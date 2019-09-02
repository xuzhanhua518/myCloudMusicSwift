//
//  AppDelegate.swift
//  AppDelegate全局只有一个
//  它的功能就是代理系统的一些时间
//  例如：APP切换到后台或前台
//
//  Created by 徐展华 on 2019/8/30.
//  Copyright © 2019 Zhanhua Xu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    //定义一个静态的计算属性
    //返回AppDelegate对象实例
    open class var shared: AppDelegate{
        get{
            return UIApplication.shared.delegate as! AppDelegate
        }
    }
    
    
//    跳转到引导界面
    func toGuide() {
        //获取到Main.storyboard
        let mainStory = UIStoryboard(name: "Main", bundle: nil)
        
        //实例化Guide场景
        //因为场景关联了控制器
        //所以说也可以说实例化了一个控制
        //只是这个过程是系统创建的
        //不是我们手动完成的
        let
            controller = mainStory
            .instantiateViewController(withIdentifier:"Guide")
        
        //替换掉原来的根控制器
        //目的是，我们不希望用户还能返回到启动界面
        window!.rootViewController = controller
    }


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

