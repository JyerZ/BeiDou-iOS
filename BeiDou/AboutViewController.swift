//
//  AboutViewController.swift
//  BeiDou
//
//  Created by Jyer on 2017/1/22.
//  Copyright © 2017年 zjyzbfxgxzh. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var aboutTV: UITextView!
    var about:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let path = Bundle.main.path(forResource: "About", ofType: "plist")
        let Info = NSDictionary.init(contentsOfFile: path!)
        about = Info?["about"]! as! String
        aboutTV.text = about
        
        let button = UIButton(frame:CGRect.init(x: 0, y: 0, width: 20, height: 20))
        button.setImage(UIImage(named: "aboutapp"), for: .normal)
        button.addTarget(self,action:#selector(bottonTaped),for:.touchUpInside)
        let barButton = UIBarButtonItem(customView: button)
        self.navigationItem.leftBarButtonItem = barButton
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func bottonTaped() {
        let title = "关于开发者"
        let msg = "指导老师：陆骥 \n 开发小组： \n 张建银，张宝峰，席国庆，曾浩 \n CopyRight © 2017 ZZXZ.Group \n 保留所有权利"
        let controller = UIAlertController(title: title,message: msg,preferredStyle: .alert)
        let cancelTitle = "确定"
        let cancelAction = UIAlertAction(title: cancelTitle,style: .cancel,handler: nil)
        controller.addAction(cancelAction)
        self.present(controller,animated: true,completion: nil)
    }

}

