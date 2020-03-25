//
//  SecondViewController.swift
//  final_Ramya_1834243
//
//  Created by english on 2019-12-11.
//  Copyright © 2019 english. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITableViewDataSource,UITableViewDelegate
{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return GivenList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        
        cell.textLabel?.text = GivenList[indexPath.row]
        return cell
    }
    
 
    
    @IBOutlet weak var lblSecond: UILabel!
    @IBOutlet weak var textentered: UITextField!
    @IBOutlet weak var tableview: UITableView!
    
    var usr = "" // for firstview
    var GivenList:[String] = []
    var todoListItems = ""
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        lblSecond.text = usr
        GivenList = UserDefaults.standard.stringArray(forKey: "list") ?? [String]()
    }
  
    
    @IBAction func enter(_ sender: UIButton)
    {
        GivenList.append(textentered.text!) // increment the list
        
        UserDefaults.standard.set(GivenList, forKey: "list")
        
        tableview.reloadData() // calling to reload
    }
    
    
    
   

}
