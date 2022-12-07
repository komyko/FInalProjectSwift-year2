//
//  TBVCell1.swift
//  sqliteDB-SampleiOS
//
//  Created by supakit 25/11/2564 BE.
//

import UIKit

class TBVCell1: UITableViewCell {

    @IBOutlet weak var lbView: UILabel!
    @IBOutlet weak var lbArtist: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
