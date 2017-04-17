//
//  DetailViewController.swift
//  BeiDou
//
//  Created by Jyer on 2017/2/6.
//  Copyright © 2017年 zjyzbfxgxzh. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var content:String = ""
    @IBOutlet weak var detailText: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailText.isScrollEnabled = false
        detailText.text = content

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        detailText.isScrollEnabled = true
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
