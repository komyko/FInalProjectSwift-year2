//
//  detailVC.swift
//  sqliteDB-SampleiOS
//
//  Created by supakit on 7/12/2564 BE.
//

import UIKit

class detailVC: UIViewController {
    
    @IBOutlet weak var sinka: UILabel!
    @IBOutlet weak var detailol: UITextView!
    @IBOutlet weak var nameol: UILabel!
    @IBOutlet weak var imgol: UIImageView!
    var img1:String = ""
    var name1:String = ""
    var detail1:String = ""
    var stock1:String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        imgol.image = UIImage(named: img1)
        nameol.text = name1
        detailol.text = detail1
        sinka.text = stock1
    

        // Do any additional setup after loading the view.
    }
    
   
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
