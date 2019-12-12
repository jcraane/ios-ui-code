//
//  ViewController.swift
//  UIFromCode
//
//  Created by Jamie Craane on 12/12/2019.
//  Copyright © 2019 Jamie Craane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Programmatic tutorial"
    }
    
    let infoMessage = "Hello, in this tutorial we are going to learn how to create UI programmatically without Storyboard."

    override func loadView() {
        super.loadView()
        let infoLabel = UILabel()
        infoLabel.numberOfLines = 0
        infoLabel.textAlignment = .center
        infoLabel.text = infoMessage
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(infoLabel)

        NSLayoutConstraint.activate([
            infoLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 16.0),
            infoLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16.0),
            infoLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16.0)
        ])
        
        let nextScreenButton = UIButton()
        nextScreenButton.backgroundColor = .systemBlue
        nextScreenButton.layer.cornerRadius = 24.0
        nextScreenButton.setTitleColor(.white, for: .normal)
        nextScreenButton.setTitle("Push", for: .normal)
        nextScreenButton.addTarget(self, action: #selector(pushNextScreenButtonAction), for: .touchUpInside)
        nextScreenButton.setTitleColor(.systemGray2, for: .highlighted)
        nextScreenButton.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(nextScreenButton)
                
        NSLayoutConstraint.activate([
            nextScreenButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 48.0),
            nextScreenButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -48.0),
            nextScreenButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -16.0),
            nextScreenButton.heightAnchor.constraint(equalToConstant: 48.0)
        ])
    }
    
    @objc private func pushNextScreenButtonAction() {
        let secondVC = SecondViewController()
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
}

