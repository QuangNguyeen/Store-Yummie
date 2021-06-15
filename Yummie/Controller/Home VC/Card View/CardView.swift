//
//  CardView.swift
//  Yummie
//
//  Created by Quang Nguyen on 6/14/21.
//

import Foundation
import UIKit

class CardView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialSetup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initialSetup()
    }
    
    private func initialSetup() {
        layer.do {
            $0.shadowColor = UIColor.black.cgColor
            $0.shadowOffset = .zero
            $0.cornerRadius = 13
            $0.shadowOpacity = 0.15
        }
    }
}
