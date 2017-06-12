//
//  FrontCell.swift
//  findlectures
//
//  Created by Shashwat Singh on 6/11/17.
//  Copyright © 2017 Shashwat Singh. All rights reserved.
//

import UIKit

class FrontCell: UITableViewCell {
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .black
        setupviews()
    }
    
    
    let nameLabel: UILabel = {
        let lable = UILabel()
        lable.text = "Test Text"
        lable.backgroundColor = .red
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    
    func setupviews(){
        
        addSubview(nameLabel)
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-50-[v0]-50-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":nameLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-50-[v0]-50-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":nameLabel]))
        nameLabel.frame = CGRect(x: 40, y: 0, width: 0, height: 0)

    
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
