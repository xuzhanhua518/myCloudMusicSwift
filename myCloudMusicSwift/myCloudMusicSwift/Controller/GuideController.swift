//
//  GuideController.swift
//  引导界面
//
//  Created by 徐展华 on 2019/9/1.
//  Copyright © 2019 Zhanhua Xu. All rights reserved.
//

import UIKit

class GuideController: UIViewController {

    //底部容器
    @IBOutlet weak var vwFooterContainer: UIView!
    
    //登录注册按钮
    @IBOutlet weak var btLoginOrRegister: UIButton!

    //立即体验按钮
    @IBOutlet weak var btEnter: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //当布局完成后
    override func viewDidLayoutSubviews() {
        //拿到当前view的frame
        //let contentFrame = view.frame

        //计算底部按钮垂直位置 y轴的值
        let buttonY = (vwFooterContainer.frame.height - CGFloat(SIZE_BUTTON_ENTER_HEIGHT))/2

        //计算登录注册按钮的水平位置，x位置
        let btLoginOrRegintstX = (vwFooterContainer.frame.width - (CGFloat(SIZE_BUTTON_ENTER_WIDTH)*2))/3

        //设置登录注册按钮的位置以及大小
        btLoginOrRegister.frame = CGRect(x: btLoginOrRegintstX, y: buttonY, width: CGFloat(SIZE_BUTTON_ENTER_WIDTH), height: CGFloat(SIZE_BUTTON_ENTER_HEIGHT))
        
        //计算立即体验的X位置
        let btEnterX = btLoginOrRegintstX * 2 + CGFloat(SIZE_BUTTON_ENTER_WIDTH)
        
        //立即体验按钮的位置以及大小
        btEnter.frame = CGRect(x: btEnterX, y: buttonY, width: CGFloat(SIZE_BUTTON_ENTER_WIDTH), height: CGFloat(SIZE_BUTTON_ENTER_HEIGHT))
        
        //登录注册按钮圆角为20
        btLoginOrRegister.layer.cornerRadius = 22
        
        //立即体验按钮圆角为20
        btEnter.layer.cornerRadius = 22
        
        //设置立即体验按钮边框，1
        btEnter.layer.borderWidth = 1
        
        //设置立即体验按钮边框颜色
        btEnter.layer.borderColor = UIColor(red: 212/255, green: 0, blue: 0, alpha: 1.0).cgColor
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
