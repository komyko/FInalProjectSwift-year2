//
//  IMGCollectionViewCell.swift
//  sqliteDB-SampleiOS
//
//  Created by supakit on 8/12/2564 BE.
//

import UIKit

class IMGCollectionViewCell: UICollectionViewCell {
    static let identifier = "IMGCollectionViewCell"
    
    private let imageview: UIImageView = {
        let imageview=UIImageView()
        imageview.contentMode = .scaleAspectFill
        imageview.clipsToBounds = true
        return imageview
        
        
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageview)
        
        let images = [
            UIImage(named: "p1"),
            UIImage(named: "p2"),
            UIImage(named: "p3"),
            UIImage(named: "p4"),
            UIImage(named: "p5"),
            UIImage(named: "p6"),
            UIImage(named: "p7"),
            UIImage(named: "p8"),
            UIImage(named: "p9"),
        ].compactMap({$0})
        imageview.image = images.randomElement()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageview.frame = contentView.bounds
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        imageview.image = nil
    }
}
