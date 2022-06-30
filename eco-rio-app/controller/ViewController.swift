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
    
   
    
    @IBOutlet weak var cadastroLogin: UITextField!
    
    @IBOutlet weak var confirmSenhaCadastro: UITextField!
    
    @IBOutlet weak var senhaCadastro: UITextField!
    
    @IBAction func returnLoginBtn(_ sender: Any) {
        performSegue(withIdentifier: "telaToLogin", sender: self)
    }
    
    @IBAction func cadastroBtn(_ sender: Any) {
        
        
        if(confirmSenhaCadastro.text?.isEmpty ?? true  || senhaCadastro.text?.isEmpty ?? true == nil || cadastroLogin.text?.isEmpty ?? true  == nil){
            let alert=UIAlertController(title: "Alerta",
                                message:"Por favor, preencha todas as informações necessárias ", preferredStyle:UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true,completion: nil)
        }else{
            let emailtmp:String = cadastroLogin.text!
            let passtmp:String = senhaCadastro.text!
            let passconfirmtmp:String = confirmSenhaCadastro.text!

            let loginObject = Login(user:emailtmp, password: passtmp)
            if(passtmp == passconfirmtmp){
                let userTmp = User(id: UserDAO.usersList.count+1, email: emailtmp, name: emailtmp, userName: emailtmp, password: passtmp, location: nil, evaluations: []);
                
                UserDAO.usersList.append(userTmp)
                performSegue(withIdentifier: "telaListAll", sender: self)
                
                
                
            }else{
                    let alert=UIAlertController(title: "Alerta",
                                        message:"As senhas não coincidem", preferredStyle:UIAlertController.Style.alert)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                    self.present(alert, animated: true,completion: nil)
                    
                    
                }
            }
        
    }
    
    
    @IBAction func loginBtn(_ sender: Any) {
        if(passwordText.text?.isEmpty ?? true  || userText.text?.isEmpty ?? true ){
            let alert=UIAlertController(title: "Alerta",
                                message:"Por favor, preencha todas as informações necessárias ", preferredStyle:UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true,completion: nil)
            print("Login/senha inalido!!!")    }
        else{
            let emailtmp:String = userText.text!
            let passtmp:String = passwordText.text!
            
            let loginObject = Login(user:emailtmp, password: passtmp)
            if(loginObject.authenticate()){
                performSegue(withIdentifier: "telaListAll", sender: self)
                //print("login Success!!!!")
                
            }else{
                    let alert=UIAlertController(title: "Alerta",
                                        message:"Login ou senha invalido", preferredStyle:UIAlertController.Style.alert)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                    self.present(alert, animated: true,completion: nil)
                    //print("Login/senha inalido!!!")
                    
                }
            }
    }
        
    @IBAction func registerBtn(_ sender: Any) {
        performSegue(withIdentifier: "talaCadastro", sender: self)
    }
}

