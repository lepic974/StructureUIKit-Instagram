//
//  IGFeedPostActionsTableViewCell.swift
//  StructureApp
//
//  Created by Joh_Macbook on 28/07/2021.
//

import UIKit

class IGFeedPostActionsTableViewCell: UITableViewCell {

    static let identifier = "IGFeedPostActionsTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .systemOrange

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure() {
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }


}
