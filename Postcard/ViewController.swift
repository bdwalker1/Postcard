//
//  ViewController.swift
//  Postcard
//
//  Created by Bruce Walker on 2/25/15.
//  Copyright (c) 2015 Bruce D Walker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblMessage: UILabel!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtMsg: UITextField!
    @IBOutlet weak var btnSendMail: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func beginEditTxtName(sender: AnyObject) {
        txtName.becomeFirstResponder()

        btnSendMail.setTitle("Send Mail", forState: UIControlState.Normal )
    }
    
    @IBAction func pressBtnSendMail(sender: UIButton) {
        lblMessage.textColor = UIColor.greenColor()
        lblMessage.text = txtName.text + ",\r\n\t" + txtMsg.text
        lblMessage.hidden = false
        txtName.text = ""
        txtMsg.text = ""
        txtMsg.resignFirstResponder();

        btnSendMail.setTitle("Mail Sent", forState: UIControlState.Normal )
    }

}

