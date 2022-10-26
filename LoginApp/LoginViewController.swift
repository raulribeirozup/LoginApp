//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Raul Ribeiro on 26/10/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func exibeAlertLogando() {
        let title = "Logando"
        let message = "Fazendo login na sua conta..."
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func exibeAlertForgotPassword() {
        let title = "Redefinir senha"
        let message = "Eviamos um email para \(emailTextField.text!).\nSiga as instruções para criar uma nova senha segura."
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func botaoLoginPressionado(_ sender: UIButton) {
        exibeAlertLogando()
    }
    
    @IBAction func botaoForgotPasswordPressionado(_ sender: UIButton) {
        exibeAlertForgotPassword()
    }
}
