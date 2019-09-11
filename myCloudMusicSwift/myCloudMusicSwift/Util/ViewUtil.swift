//
//  ViewUtil.swift
//  View相关的工具类，包括：圆角、边框
//
//  Created by 徐展华 on 2019/9/7.
//  Copyright © 2019 Zhanhua Xu. All rights reserved.
//

import UIKit

class ViewUtil {
    //设置大圆角
    /// - Parameter view: <#view description#>
    static func showLargeRadius(view:UIView) {
        view.layer.cornerRadius = CGFloat(SIZE_LARGE_RADIUS)
        
        //裁剪多余的内容
        //例如：给ImageView设置了圆角
        //如果不裁剪多余的内容，就不会生效
        view.clipsToBounds = true
    }
}
