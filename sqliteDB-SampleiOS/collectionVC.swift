//
//  collectionVC.swift
//  sqliteDB-SampleiOS
//
//  Created by supakit on 7/12/2564 BE.
//

import UIKit

class collectionVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    private let collectionview = UICollectionView(frame: .zero,
    collectionViewLayout: UICollectionViewFlowLayout()
    )
    

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionview.register(IMGCollectionViewCell.self,
                                forCellWithReuseIdentifier: IMGCollectionViewCell.identifier)
        collectionview.delegate = self
        collectionview.dataSource = self
        view.addSubview(collectionview)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionview.frame = view.bounds
    }
        
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionview.dequeueReusableCell(withReuseIdentifier: IMGCollectionViewCell.identifier, for: indexPath)
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(
            width: (view.frame.size.width/3)-3,
                    height: (view.frame.size.width/3)-3
        )
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    
}
