//
//  ViewController.swift
//  eco-rio-app
//
//  Created by Caroline Loppi on 20/06/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var userText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //todo


    @IBAction func loginBtn(_ sender: Any) {
        if(true){
            
        }else{
            let alert=UIAlertController(title: "Alerta",
                                message:"login senha invalido", preferredStyle:UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true,completion: nil)
            print("Login/senha inalido!!!")    }        }
        
    @IBAction func registerBtn(_ sender: Any) {
    }
}

