//
//  ViewController.swift
//  Bot-Shop
//
//  Created by Anneka Curry on 5/12/22.
//

import UIKit

class NewOrderViewController: UIViewController {
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 30
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = UIColor(red:1.0, green:1.0, blue:1.0, alpha:0.0)

        collectionView.register(NewItemCell.self, forCellWithReuseIdentifier: "cell")

        return collectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemPink
        collectionView.dataSource = self
        collectionView.delegate = self
        setViews()
    }
    
    func setViews(){

        self.view.addSubview(collectionView)
        collectionView.widthAnchor.constraint(equalTo: self.view.layoutMarginsGuide.widthAnchor, multiplier: 1.0).isActive = true
        collectionView.heightAnchor.constraint(equalTo: self.view.layoutMarginsGuide.heightAnchor, multiplier: 1.0).isActive = true
        collectionView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        collectionView.centerYAnchor.constraint(equalTo: self.view.layoutMarginsGuide.centerYAnchor).isActive = true

    }


}

extension NewOrderViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! NewItemCell
        cell.backgroundColor = .green
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/2.2, height: collectionView.frame.height/3)
    }

}

