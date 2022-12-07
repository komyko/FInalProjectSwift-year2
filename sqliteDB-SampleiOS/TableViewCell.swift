//
//  TableViewCell.swift
//  sqliteDB-SampleiOS
//
//  Created by supakit on 5/12/2564 BE.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var pricepd: UILabel!
    @IBOutlet weak var namepd: UILabel!
    @IBOutlet weak var pic: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
