//
//  ApplicationViewController.swift
//  BeiDou
//
//  Created by Jyer on 2017/1/22.
//  Copyright © 2017年 zjyzbfxgxzh. All rights reserved.
//

import UIKit

class ApplicationViewController: UITableViewController {
    
    private let applicationCell = "ApplicationCell"
    var titles: [[String:String]]!
    var contents: [[String:String]]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "Application", ofType: "plist")
        let Info = NSDictionary.init(contentsOfFile: path!)
        titles = Info?["times"]! as! [NSDictionary] as! [[String:String]]
        contents = Info?["applications"]! as! [NSDictionary] as! [[String:String]]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return titles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        // Configure the cell...
        let cell = tableView.dequeueReusableCell(withIdentifier: applicationCell, for: indexPath) as UITableViewCell
        cell.textLabel?.text = titles[indexPath.row]["title"]
        cell.detailTextLabel?.text = titles[indexPath.row]["time"]
        return cell
    }
 
    
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return false
    }
 
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
    // MARK: - Navigation
     
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let detailVC = segue.destination as! DetailViewController
        let indexPath = tableView.indexPath(for: sender as! UITableViewCell)!
        let titleName = contents[indexPath.row]["title"]
        detailVC.navigationItem.title = titleName
        detailVC.content = contents[indexPath.row]["content"]!
    }
 

}

