//
//  LoginViewController.swift
//  SnapKitPractice
//
//  Created by Yiyi on 12/1/24.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    
    let userNameTextField = UITextField()
    let passwordTextField = UITextField()
    let loginButton = UIButton(type: .system)
    
    private final let PASSWORD = "password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup(){
        userNameTextField.placeholder = "Enter your username"
        userNameTextField.borderStyle = .roundedRect
        userNameTextField.tintColor = .lightGray
        
        passwordTextField.placeholder = "Enter your password"
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.tintColor = .lightGray
        
        loginButton.setTitle("Enter", for: .normal)
        loginButton.backgroundColor = .lightGray
        loginButton.addTarget(self, action: #selector(handleButtonPress), for: .touchUpInside)
        
        view.addSubview(userNameTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        
        userNameTextField.snp.makeConstraints { make in
            make.left.equalTo(view).inset(20)
            make.right.equalTo(view).inset(20)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).inset(200)
            make.height.equalTo(50)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.left.equalTo(view).inset(20)
            make.right.equalTo(view).inset(20)
            make.top.equalTo(userNameTextField.snp.bottom).inset(-15)
            make.height.equalTo(50)
        }
        
        loginButton.snp.makeConstraints { make in
            make.left.equalTo(view).inset(20)
            make.right.equalTo(view).inset(20)
            make.top.equalTo(passwordTextField.snp.bottom).inset(-15)
            make.height.equalTo(50)
        }
        
    }
    
    @objc private func handleButtonPress(){
        guard passwordTextField.text == PASSWORD else {
            showAlert(message: "The password is incorrect")
            return
        }
        
        showAlert(message: "Welcome back, \(userNameTextField.text ?? "")")
    }
    
    
    private func showAlert(message: String) {
        let alerController = UIAlertController(title: "Notice", message: message, preferredStyle: .alert)
        alerController.addAction(UIAlertAction(title: "Confirm", style: .default))
        present(alerController, animated: true)
    }
    
}
