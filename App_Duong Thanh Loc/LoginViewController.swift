//
//  LoginViewController.swift
//  App_Duong Thanh Loc
//
//  Created by apple on 5/23/17.
//  Copyright © 2017 apple. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    //khai báo propetive
    @IBOutlet weak var lblStatus: UILabel!
    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtUserPassWord: UITextField!
    
//    class Users: NSObject {
//        var username: String = ""
//        var password: String = ""
//        
//    }
    var Users:Dictionary = [
        "username" : "a",
        "password" : "b"
    ]
    //khai bao Userdefaut
    let ud = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        //gan value cho userDedaut la Object
//        let User:NSObject = ud.object(forKey: "user") as? user
//        //gan Object User vao key user
//        ud.set(Users.self, forKey: "user")
//        //luu gia tri Userdefaut
//        ud.synchronize()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    //dinh nghia methord cho cac doi tuong
    //1.Dang nhap
    @IBAction func loginButton(_ sender: Any) {
        
        if let username = txtUserName.text,let password = txtUserPassWord.text { //neu textfield != nil
            //lay object user tu Userdefaut
            //check user da ton tai
            if let User = ud.dictionary(forKey: "\(username)") {//check username da ton tai
                //check user va pwd
                if username == User["\(username)"] as! String && password == User["password"] as! String  {                 //password dung
                    print("da dang nhap")
                }
                else { //password sai
                    print("sai Password")
                }
            }//username chua ton tai
            else{
                print("Ban chua dang ky")
            }
        }//neu textfied == nil
        else {
            print("vui long nhap User/password")
        }
    }
    //2.Dang ky
    @IBAction func registerButton(_ sender: Any) {
        if let username = txtUserName.text,let password = txtUserPassWord.text { //neu textfield != nil
        //set gia tri object user == user/pass ng dung moi dag ky
            //-- su dung Object
//        Users.setValue(username, forKey: "\(username)")
//        Users.setValue(password, forKey: "password")
            
            //--su dung Dictionary
                Users.updateValue(username, forKey: "\(username)")
                Users.updateValue(password, forKey: "password")

        //cap nhat gia tri object-Users vao Userdefaut-User
        ud.set(Users.self, forKey: "\(username)")
        //luu gia tri Userdefaut
        ud.synchronize()
        }
    }
    //3.Dang xuat
    @IBAction func logOutButton(_ sender: Any) {
    }
    
    
}
