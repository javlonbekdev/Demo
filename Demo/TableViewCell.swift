//
//  TableViewCell.swift
//  Demo
//
//  Created by Javlonbek on 11/03/23.
//

import UIKit
import SkeletonView

class TableViewCell: UITableViewCell {
    
    static let identifier = "TableViewCell"
    
    let myLabel = UILabel()
    let myImageView = UIImageView()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        isSkeletonable = true
        contentView.isSkeletonable = true
        
        myImageView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(myImageView)
        myImageView.top(contentView.topAnchor, 10)
        myImageView.left(contentView.leftAnchor, 10)
        myImageView.bottom(contentView.bottomAnchor, -10)
        myImageView.width(100)
        myImageView.height(100)
        myImageView.isSkeletonable = true
        
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(myLabel)
        myLabel.top(contentView.topAnchor, 10)
        myLabel.left(myImageView.rightAnchor, 20)
        myLabel.right(contentView.rightAnchor, -10)
        myLabel.bottom(contentView.bottomAnchor, -10)
        myLabel.numberOfLines = 0
        myLabel.isSkeletonable = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
