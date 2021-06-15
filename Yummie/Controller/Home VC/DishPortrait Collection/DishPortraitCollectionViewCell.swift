//
//  DishPortraitCollectionViewCell.swift
//  Yummie
//
//  Created by Quang Nguyen on 6/15/21.
//

import UIKit
import Reusable
import Kingfisher

final class DishPortraitCollectionViewCell: UICollectionViewCell, NibReusable {

    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var dishImage: UIImageView!
    @IBOutlet private weak var caloriesLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure (model: Dish) {
        titleLabel.text = model.name
        dishImage.kf.setImage(with: model.image?.asUrl)
        caloriesLabel.text = model.formattedCalories
        descriptionLabel.text = model.description
    }

}
