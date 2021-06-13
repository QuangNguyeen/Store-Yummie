//
//  OnBoadingCollectionViewCell.swift
//  Yummie
//
//  Created by Quang Nguyen on 6/13/21.
//

import UIKit
import Reusable

final class OnBoadingCollectionViewCell: UICollectionViewCell, NibReusable {

    @IBOutlet private weak var iamge: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func configure(model: OnboardingSlide) {
        titleLabel.text = model.title
        descriptionLabel.text = model.description
        iamge.image = model.image
    }
}
