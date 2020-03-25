//
//  ViewController.swift
//  final_Ramya_1834243
//
//  Created by english on 2019-12-11.
//  Copyright © 2019 english. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 var usr = "" // for firstview
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
    }
    
    
    @IBOutlet weak var nameText: UITextField!
    //@IBOutlet weak var enterlog: UIButton!
   //enter.isEnabled = false // for buton enable
    @IBAction func login(_ sender: UIButton)
    {
//
//        if nameText.text!.isEmpty
//        {
//            enterlog.isUserInteractionEnabled = false
//        }
//        else
//        {
//            enterlog.isUserInteractionEnabled = true
            performSegue(withIdentifier: "SecondView", sender: nil)
        //}
    
    }
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        
        let destination = segue.destination as! SecondViewController
        destination.usr = nameText.text!
        
    }
    }





