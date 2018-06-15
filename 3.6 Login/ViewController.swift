//
//  ViewController.swift
//  3.6 Login
//
//  Created by The Duke on 6/14/18.
//  Copyright © 2018 The Duke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var forgotUserNameButton: UIButton!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    @IBAction func forgotUserNameButton(_ sender: Any) {
        performSegue(withIdentifier: "forgotUserNameOrPassword", sender: forgotUserNameButton)
    }
    
    @IBAction func forgotPasswordButton(_ sender: Any) {
        performSegue(withIdentifier: "forgotUserNameOrPassword", sender: forgotPasswordButton)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot User Name"
        } else if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else {
            segue.destination.navigationItem.title = userName.text
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

