//
//  HomeViewController.swift
//  Yummie
//
//  Created by Quang Nguyen on 6/13/21.
//

import UIKit

final class HomeViewController: UIViewController {

    @IBOutlet private weak var catetogoryCollectionView: UICollectionView!
    @IBOutlet private weak var populationCollectionView: UICollectionView!
    @IBOutlet private weak var lanscapeCollectionView: UICollectionView!
    
    var category: [DishCatetogory] = [
        .init(id: "id1", image: "https://picsum.photos/100/200", name: "VietNam Dish"),
        .init(id: "id1", image: "https://picsum.photos/100/200", name: "VietNam Dish"),
        .init(id: "id1", image: "https://picsum.photos/100/200", name: "VietNam Dish"),
        .init(id: "id1", image: "https://picsum.photos/100/200", name: "VietNam Dish"),
        .init(id: "id1", image: "https://picsum.photos/100/200", name: "VietNam Dish")
    ]
    
    var population: [Dish] = [
        .init(id: "id", name: "Idomie", description: "This is best food i have ever tasted", image: "https://picsum.photos/100/200", calories: 42.232242),
        .init(id: "id", name: "Idomie", description: "This is best food i have ever tasted", image: "https://picsum.photos/100/200", calories: 42.232242),
        .init(id: "id", name: "Idomie", description: "This is best food i have ever tasted", image: "https://picsum.photos/100/200", calories: 42.232242),
        .init(id: "id", name: "Idomie", description: "This is best food i have ever tasted", image: "https://picsum.photos/100/200", calories: 42.232242),
        .init(id: "id", name: "Idomie", description: "This is best food i have ever tasted", image: "https://picsum.photos/100/200", calories: 42.232242)
    ]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        configNavBar()
        configCatetogoryCollectionView()
        configPopulationCollectionView()
        configLanscapeCollectionView()
    }
    
    func configNavBar() {
        title = "Yummie"
        navigationController?.navigationBar.do {
            $0.barTintColor = .systemPink
        }
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage.init(systemName: "cart.circle.fill"), style: .done, target: self, action: nil)
        navigationItem.rightBarButtonItem?.tintColor = .systemPink
    }
    
    func configCatetogoryCollectionView() {
        catetogoryCollectionView.do {
            $0.delegate = self
            $0.dataSource = self
            $0.showsVerticalScrollIndicator = false
            $0.showsHorizontalScrollIndicator = false
            $0.register(cellType: CategoryCollectionViewCell.self)
            $0.clipsToBounds = false
            
            let layout = UICollectionViewFlowLayout().then {
                $0.scrollDirection = .horizontal
                $0.sectionInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 30)
                $0.itemSize = CGSize(width: 250, height: 100)
                $0.minimumLineSpacing = 10
                $0.minimumInteritemSpacing = 0
            }
            
            $0.collectionViewLayout = layout
        }
    }
    
    func configPopulationCollectionView() {
        populationCollectionView.do {
            $0.delegate = self
            $0.dataSource = self
            $0.showsVerticalScrollIndicator = false
            $0.showsHorizontalScrollIndicator = false
            $0.register(cellType: DishPortraitCollectionViewCell.self)
            $0.clipsToBounds = false
            
            let layout = UICollectionViewFlowLayout().then {
                $0.scrollDirection = .horizontal
                $0.sectionInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 30)
                $0.itemSize = CGSize(width: 150, height: 300)
                $0.minimumLineSpacing = 10
                $0.minimumInteritemSpacing = 0
            }
            
            $0.collectionViewLayout = layout
        }
    }
    
    func configLanscapeCollectionView() {
        lanscapeCollectionView.do {
            $0.delegate = self
            $0.dataSource = self
            $0.showsVerticalScrollIndicator = false
            $0.showsHorizontalScrollIndicator = false
            $0.register(cellType: DishLanscapeCollectionViewCell.self)
            $0.clipsToBounds = false
            
            let layout = UICollectionViewFlowLayout().then {
                $0.scrollDirection = .horizontal
                $0.sectionInset = UIEdgeInsets(top: 10, left: 15, bottom: 0, right: 30)
                $0.itemSize = CGSize(width: view.frame.width - 50, height: 65)
                $0.minimumLineSpacing = 15
                $0.minimumInteritemSpacing = 0
            }
            
            $0.collectionViewLayout = layout
        }
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case catetogoryCollectionView:
            return category.count
        case populationCollectionView:
            return population.count
        case lanscapeCollectionView:
            return population.count
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case catetogoryCollectionView:
            let cell = catetogoryCollectionView.dequeueReusableCell(for: indexPath) as CategoryCollectionViewCell
            cell.configure(model: category[indexPath.row])
            return cell
            
        case populationCollectionView:
            let cell = populationCollectionView.dequeueReusableCell(for: indexPath) as DishPortraitCollectionViewCell
            cell.configure(model: population[indexPath.row])
            return cell
            
        case lanscapeCollectionView:
            let cell = lanscapeCollectionView.dequeueReusableCell(for: indexPath) as DishLanscapeCollectionViewCell
            cell.configure(model: population[indexPath.row])
            return cell
        default:
            return UICollectionViewCell()
        }
    }
}
