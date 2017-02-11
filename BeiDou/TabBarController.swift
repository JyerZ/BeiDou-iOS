//
//  TabBarController.swift
//  BeiDou
//
//  Created by Jyer on 2017/2/11.
//  Copyright © 2017年 zjyzbfxgxzh. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        for item:UITabBarItem in self.tabBar.items! {
            let image = item.image
            let selectImage = item.selectedImage
            item.image = image?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
            item.selectedImage = selectImage?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
