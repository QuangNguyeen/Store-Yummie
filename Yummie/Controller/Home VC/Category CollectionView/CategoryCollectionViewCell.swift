//
//  CategoryCollectionViewCell.swift
//  Yummie
//
//  Created by Quang Nguyen on 6/14/21.
//

import UIKit
import Reusable
import Kingfisher

final class CategoryCollectionViewCell: UICollectionViewCell, NibReusable {

    @IBOutlet private weak var categoryImage: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure (model: DishCatetogory) {
        print (model.name)
        titleLabel.text = model.name
        categoryImage.kf.setImage(with: model.image.asUrl)
    }
}
