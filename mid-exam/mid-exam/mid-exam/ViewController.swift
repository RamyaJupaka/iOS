//
//  ViewController.swift
//  mid-exam
//
//  Created by english on 2019-10-18.
//  Copyright © 2019 english. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var searchbyID: UITextField!
    
    @IBOutlet weak var searchbyName: UITextField!
    @IBOutlet weak var img1: UIImageView!
    
    @IBOutlet weak var img2: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
       
    }
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
  
    @IBAction func btnfunction(_ sender: UIButton)
    {
        let input1 = searchbyID.text!
        let input2 = searchbyName.text!
        if (sender.tag == 1 )
        {
        if (input1 == "1")
        {
        img1.image = UIImage (named : "paris.jpg")
        }
         else if (input1 == "2")
        {
          img1.image = UIImage (named : "montreal.jpg")
        }
         else if (input1 == "3")
        {
         img1.image = UIImage (named : "tokyo.jpg")
        }
         else
        {
            label1.text = "it is not correct"
        }
        }
      if (sender.tag == 2 )
       {
        if (input2 == "paris")
        {
          img2.image = UIImage (named : "paris.jpg")
        }
         else if (input2 == "montreal")
        {
         img2.image = UIImage (named : "montreal.jpg")}
        else if (input2 == "tokyo")
        {
         img2.image = UIImage (named : "tokyo.jpg")
         }
         else
        {
          label2.text = "it is not correct"
         }
   }
 }
}

