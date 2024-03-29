//
//  PageCell.swift
//  ImageScroll
//
//  Created by Isaac Raval on 5/11/19.
//  Copyright © 2019 Isaac Raval. All rights reserved.
//

import UIKit

class PageCell: UICollectionViewCell {
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "1"))
        imageView.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.height) //Center image, fill screen
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
