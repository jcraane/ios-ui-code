//
//  CustomCell.swift
//  UIFromCode
//
//  Created by Jamie Craane on 12/12/2019.
//  Copyright © 2019 Jamie Craane. All rights reserved.
//

import UIKit
    
class CustomCell : UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupGraphic()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupGraphic() {
        let dotView = UIView()
        dotView.layer.cornerRadius = 4.0
        dotView.backgroundColor = .systemBlue
        dotView.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(dotView)
        
        NSLayoutConstraint.activate([
            dotView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 24.0),
            dotView.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor),
            dotView.widthAnchor.constraint(equalToConstant: 8.0),
            dotView.heightAnchor.constraint(equalToConstant: 8.0)
        ])
    }
}
