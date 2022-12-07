//
//  TBviewcontrol.swift
//  sqliteDB-SampleiOS
//
//  Created by supakit on 5/12/2564 BE.
//

import UIKit
import GRDB
class TBviewcontrol: UITableViewController {

    var pdimg : [String] = []
    var pdName : [String] = []
    var pddt : [String] = []
    var pdprice : [String] = []
    var pdsinka : [String] = []
    var dbPath : String = ""
    var dbResourcePath : String = ""
    var config = Configuration()
    let fileManager = FileManager.default
    
    
    @IBOutlet var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.rowHeight = 135
        connect2DB()
        readDB()
        print(pdimg)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pdName.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "data", for: indexPath) as! TableViewCell
        
//        cell.ImgWeb.image = UIImage.init(named: atimg[indexPath.row])
        cell.namepd.text = pdName[indexPath.row]
        cell.pic.image = UIImage.init(named: pdimg[indexPath.row])
        cell.pricepd.text = pdprice[indexPath.row]
    //    cell.sinka.text = pdsinka[indexPath.row]
        
        
        
        
        return cell
    }
    
   

    func connect2DB(){
        config.readonly = true

        do{
            dbPath = try fileManager
          .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
          .appendingPathComponent("db.db")
          .path
            if !fileManager.fileExists(atPath: dbPath) {
                dbResourcePath = Bundle.main.path(forResource: "db", ofType: "db")!
                try fileManager.copyItem(atPath: dbResourcePath, toPath: dbPath)
            }
        }catch{
          print("An error has occured")
        }

    }
        

    
    func readDB(){
            do {

            let dbQueue = try DatabaseQueue(path: dbPath, configuration: config)

                try dbQueue.inDatabase { db in
                    
                    let rows = try Row.fetchCursor(db, sql: "SELECT name, price, detail, image, stock FROM product ORDER BY id")
                    print(rows)
                    while let row = try rows.next() {
                        pdName.append(row["name"])
                        pdimg.append(row["image"])
                        pddt.append(row["detail"])
                        pdprice.append(row["price"])
                        pdsinka.append(row["stock"])
                        
                    }
                }
            } catch {

                print(error.localizedDescription)
               }
        }
    
    

 
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let rowData = self.tableView.indexPathForSelectedRow?.row
        if segue.identifier == "passko" {
            let vc = segue.destination as! detailVC
            vc.img1 = pdimg[rowData!]
            vc.name1 = pdName[rowData!]
            vc.detail1 = pddt[rowData!]
            vc.stock1 = pdsinka[rowData!]
        }
    }
}

