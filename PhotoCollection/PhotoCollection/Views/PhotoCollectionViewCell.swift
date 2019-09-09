//
//  PhotoCollectionViewCell.swift
//  PhotoCollection
//
//  Created by Spencer Curtis on 8/2/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {

    var photo: Photo?
    
    private func setUpSubviews(){
        let photoImage = UIImageView()
        photoImage.translatesAutoresizingMaskIntoConstraints = false
        photoImage.contentMode = .scaleAspectFit
        addSubview(photoImage)
        
        NSLayoutConstraint(item: photoImage,
                           attribute: .top,
                           relatedBy: .equal,
                           toItem: self,
                           attribute: .top,
                           multiplier: 1,
                           constant: 4).isActive = true
        
        NSLayoutConstraint(item: photoImage,
                           attribute: .leading,
                           relatedBy: .equal,
                           toItem: self,
                           attribute: .leading,
                           multiplier: 1,
                           constant: 4).isActive = true
        
        NSLayoutConstraint(item: photoImage,
                           attribute: .trailing,
                           relatedBy: .equal,
                           toItem: self,
                           attribute: .trailing,
                           multiplier: 1,
                           constant: -4).isActive = true
        
        NSLayoutConstraint(item: photoImage,
                           attribute: .height,
                           relatedBy: .equal,
                           toItem: photoImage,
                           attribute: .width,
                           multiplier: 1,
                           constant: 0).isActive = true
        
        self.photoImage = photoImage
        
    }
    
}
