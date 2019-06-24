//
//  MainViewController.swift
//  ViewsWithoutStoryboard
//
//  Created by Eliza Maria Porto de Carvalho on 23/06/19.
//  Copyright © 2019 Academy. All rights reserved.
//

import Foundation
import UIKit


class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        
        addButton()
        
    }
    
    
    @objc func buttonTapped(){
        print("button Tapped")
        let detailViewController = DeatilViewController()
        navigationController?.pushViewController(detailViewController, animated: true)
        
    }
    
    private func addButton(){
        let mainButton = UIButton()
        
        mainButton.translatesAutoresizingMaskIntoConstraints = false
        mainButton.addTarget(self, action: #selector(MainViewController.buttonTapped), for: .touchUpInside)
        mainButton.setTitle("Go to Hell!", for: .normal)
        mainButton.setTitleColor(.red, for: .normal)
        mainButton.backgroundColor = .blue
        
        view.addSubview(mainButton)
        
        
        let horizontalCenter = NSLayoutConstraint(item: mainButton, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0)
        
        let verticalCenter = NSLayoutConstraint(item: mainButton, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0)
        
        let width = NSLayoutConstraint(item: mainButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1.0, constant: 100)
        
        let heigth = NSLayoutConstraint(item: mainButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 75)
        
        var constraits: [NSLayoutConstraint] = [horizontalCenter,verticalCenter, width, heigth]
        
        NSLayoutConstraint.activate(constraits)
        
    }
}
