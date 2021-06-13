//
//  HomeViewController.swift
//  Yummie
//
//  Created by Quang Nguyen on 6/13/21.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configNavBar()
    }
    
    func configNavBar() {
        title = "Yummie"
        navigationController?.navigationBar.do {
            $0.barTintColor = .systemPink
        }
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage.init(systemName: "cart.circle.fill"), style: .done, target: self, action: nil)
        navigationItem.rightBarButtonItem?.tintColor = .systemPink
    }
}
