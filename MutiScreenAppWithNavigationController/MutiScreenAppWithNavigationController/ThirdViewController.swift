//
//  ThirdViewController.swift
//  MutiScreenAppWithNavigationController
//
//  Created by Yiyi on 12/1/24.
//


import UIKit
import SnapKit

class ThirdViewController: UIViewController {
    var data: String?
    let button = UIButton()
    var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let data = data {
            print("Received data: \(data)")
        }
        setup()
        
    }
    
    private func setup(){
        view.backgroundColor = .white
        view.addSubview(button)
        
        button.setTitle("Go back to root ViewController", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        
        button.snp.makeConstraints { make in
            make.center.equalTo(view)
        }
        
        button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
    }
    
    @objc func buttonClicked(){
        navigationController?.popToRootViewController(animated: true)
    }
}
