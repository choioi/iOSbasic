//
//  ViewController.swift
//  json2
//
//  Created by phung on 4/15/16.
//  Copyright © 2016 phung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mangid = [Int]()
    var mangname = [String]()
    var mangprice = [String]()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func click(sender: AnyObject) {
        //khai báo url
        let url = NSURL(string: "http://hidaacademy.com/baitap.json")
        //Lấy nội dung của URL gán cho biến data
        let data = NSData(contentsOfURL: url!)
        
        do {
        
        let duyetjason = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers)
            //print(kq)
            //print(kq.count)
            
            //print(kq["ketqua"]!!)
            //print(kq["ketqua"]!!["product"]!!)
            // kiểm tra dữ iệu ko bị crash khi ko có dữ liêu
            if let kqresult = duyetjason["result"] as? Array<Dictionary<String,AnyObject>> {
                 // kiểm tra product co phai la 1 mang Dictionary không
                    for i in 0..<kqresult.count{
                        if let productid = kqresult[i]["categoryId"] as? Int{ // kiểm tra ID của product có phải la INT ko
                            mangid.append(productid) // add vào mảng
                        }
                    }
                }
            
        
        
        }
        
        catch {
        print("loi")
            return
        }
        print(mangid)
//        print(mangname)
//        print(mangprice)
        //TEst PHP
//        let url1 = NSURL(string: "http://localhost/creat_json.php")
//        //Lấy nội dung của URL gán cho biến data
//        let data1 = NSData(contentsOfURL: url1!)
//        //print(data1) //doc NSData
//        let task = NSURLSession.sharedSession().dataTaskWithURL(url1!) { (data, phanhoi, loi) -> Void in
//            if error == nil {
//                do {
//                    let kq = try NSJSONSerialization.JSONObjectWithData(data!, options: [])
//                    print(kq)
//                }
//            }
//        }
//        task.
//        //print(NSString(data: data1!, encoding: NSUTF8StringEncoding))
//        

        
    
    }

}



