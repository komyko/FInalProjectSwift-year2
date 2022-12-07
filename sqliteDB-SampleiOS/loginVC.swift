//
//  loginVC.swift
//  sqliteDB-SampleiOS
//
//  Created by Supakit on 29/11/2564 BE.
//

import UIKit
import GRDB

class loginVC: UIViewController {
    var dbPath : String = ""
    var dbResourcePath : String = ""
    var config = Configuration()
    let fileManager = FileManager.default
    var defaults = UserDefaults.standard
    var user:[String]=[]

    
    @IBAction func btnSignin(_ sender: Any) {
        print("-------------BEGIN------------")
        readDB4memberID(memid: Int(txtMemid.text!)!, mempass: txtPassw.text!)
    }
    
    @IBOutlet weak var txtPassw: UITextField!
    @IBOutlet weak var txtMemid: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        connect2DB()
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
           if let x = string.rangeOfCharacter(from: NSCharacterSet.decimalDigits) {
           return true
        } else {
           return false
        }
    }
    
    func connect2DB(){
         config.readonly = true
         do{
          dbPath = try fileManager
             .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
             .appendingPathComponent("account_GRDB.sqlite")
             .path
             if !fileManager.fileExists(atPath: dbPath) { //
                 dbResourcePath = Bundle.main.path(forResource: "account_GRDB", ofType: "sqlite")!
                 try fileManager.copyItem(atPath: dbResourcePath, toPath: dbPath)
             }
         }catch{
             print("An error has occured")
         }
       }
    
    func alertWithTitle(title: String!, message: String) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel,handler: {_ in
                if title=="ERROR"{
                    self.txtPassw.becomeFirstResponder()
                }
            });
            alert.addAction(action)
            self.present(alert, animated: true, completion:nil)
        }
    
    func readDB4memberID(memid:Int,mempass:String){
        do {

        let dbQueue = try DatabaseQueue(path: dbPath, configuration: config)

            try dbQueue.inDatabase { db in

               
               let rows = try Row.fetchCursor(db, sql: "SELECT member_id,member_name,mem_passw FROM register where active=1 and member_id = (?) and mem_passw = (?)",
               arguments: [memid,mempass])

                while let row = try rows.next() {
                     if memid == row["member_id"] &&
                            mempass == row["mem_passw"] {
                        
                        alertWithTitle(title: "SUCCESS", message: "SignIn สำเร็จ")
                        let storyBoard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                        let mvc = storyBoard.instantiateViewController(identifier: "MainNC") as! NC1
                        user.append(row["member_id"])
                        user.append(row["member_name"])
                        user.append(row["mem_passw"])
                        defaults.set(user, forKey: "savedUser")

                        self.view.window?.rootViewController = mvc
                    }
                    else if memid == row["member_id"] &&
                    mempass != row["mem_passw"] {
                            alertWithTitle(title: "ERROR", message: "รหัสผ่านไม่ถูกต้อง")
                        }
                     else{
                        alertWithTitle(title: "ERROR", message: "รหัสผู้ใช้ไม่ถูกต้อง")
                    }
                }
            }
        } catch {
            print(error.localizedDescription)
           }
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
