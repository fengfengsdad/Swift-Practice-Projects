//
//  FirstViewController.swift
//  MutiScreenAppWithNavigationController
//
//  Created by Yiyi on 12/1/24.
//

import UIKit
import SnapKit

class FirstViewController: UIViewController {
    
    let button = UIButton()
    var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup(){
        view.backgroundColor = .white
        view.addSubview(button)
        
        button.setTitle("Go to the next ViewController", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        
        button.snp.makeConstraints { make in
            make.center.equalTo(view)
        }
        
        button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        
        navigationItem.title = "First"
        navigationItem.largeTitleDisplayMode = .never
    }
    
    @objc func buttonClicked(){
//        let secondViewController = SecondViewController()
//        secondViewController.data = "From first view controller"
//        navigationController?.pushViewController(secondViewController, animated: true)
        coordinator?.showSecond()
    }
}

