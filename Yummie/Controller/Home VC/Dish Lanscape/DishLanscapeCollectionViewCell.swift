//
//  DishLanscapeCollectionViewCell.swift
//  Yummie
//
//  Created by Quang Nguyen on 6/15/21.
//

import UIKit
import Reusable

final class DishLanscapeCollectionViewCell: UICollectionViewCell, NibReusable {

    @IBOutlet private weak var dishImage: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var caloriesLable: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure (model: Dish) {
        dishImage.kf.setImage(with: model.image?.asUrl)
        titleLabel.text = model.name
        caloriesLable.text = model.formattedCalories
        descriptionLabel.text = model.description
    }
}
