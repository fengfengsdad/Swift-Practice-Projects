//
//  MainCoordinator.swift
//  MutiScreenAppWithNavigationController
//
//  Created by Yiyi on 12/1/24.
//

import UIKit

class MainCoordinator {
    var navigationController: UINavigationController
   
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let firstViewController = FirstViewController()
        firstViewController.coordinator = self
        navigationController.pushViewController(firstViewController, animated: true)
    }
    
    func showSecond(){
        let secondViewController = SecondViewController()
        secondViewController.coordinator = self
        navigationController.pushViewController(secondViewController, animated: true)
    }
    
    func showThird(){
        let thirdViewController = ThirdViewController()
        thirdViewController.coordinator = self
        navigationController.pushViewController(thirdViewController, animated: true)
    }
    
    func backtoRoot(){
        navigationController.popToRootViewController(animated: true)
    }
    
}
