//
//  VC1.swift
//  sqliteDB-SampleiOS
//
//  Created by supakit on 29/11/2564 BE.
//

import UIKit


class VC1: UIViewController {
    
    @IBOutlet weak var lbUsername: UILabel!
    var userName:[String]=[]
        
    var defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(defaults.object(forKey: "savedUser") as! [String])

        userName=defaults.object(forKey: "savedUser") as! [String]

        print(userName[1])
        lbUsername.text="Welcome: K."+userName[1]
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
 
}
