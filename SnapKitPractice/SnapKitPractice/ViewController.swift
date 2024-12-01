//
//  ViewController.swift
//  SnapKitPractice
//
//  Created by Yiyi on 12/1/24.
//

import UIKit
import SnapKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addViewWithSnapKit()
    }

    func addViewWithSnapKit(){
        let box = UIView()
        box.backgroundColor = .blue
        view.addSubview(box)
        
        box.snp.makeConstraints { make in
            make.center.equalTo(view)
            make.width.height.equalTo(100)
        }
        
    }

}

