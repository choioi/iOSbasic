//
//  ScreenRegisterViewController.swift
//  AppChat
//
//  Created by ✪ Công Thái ✪ on 6/27/16.
//  Copyright © 2016 Huynh Cong Thai. All rights reserved.
//

import UIKit

class ScreenRegisterViewController: UIViewController {

    @IBOutlet weak var uvRegister: UIView!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPWD: UITextField!
    @IBOutlet weak var txtRPWD: UITextField!
    @IBOutlet weak var txtFullName: UITextField!
    @IBOutlet weak var imgAvatar: UIImageView!
    @IBOutlet weak var btnRegister: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btnRegister.skin(b: false)
        btnLogin.skin(b: false)
        imgAvatar.skin()
        uvRegister.Login()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
 
}
