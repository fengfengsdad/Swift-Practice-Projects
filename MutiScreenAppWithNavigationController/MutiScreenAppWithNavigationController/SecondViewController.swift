//
//  SecondViewController.swift
//  MutiScreenAppWithNavigationController
//
//  Created by Yiyi on 12/1/24.
//

import UIKit
import SnapKit

class SecondViewController: UIViewController {
    var data: String?
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
        
        let rightBarButtomItem = UIBarButtonItem(title: "Next", image: nil, target: self, action: #selector(buttonClicked))
        navigationItem.rightBarButtonItem = rightBarButtomItem
        navigationItem.title = "Second"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
    }
    
    @objc func buttonClicked(){
        let thirdViewController = ThirdViewController()
        thirdViewController.data = "From first view controller"
        navigationController?.pushViewController(thirdViewController, animated: true)
    }
}
