//
//  ViewController.swift
//  EmployeeDetail
//
//  Created by RLogixxTraining on 24/07/23.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAge: UITextField!
    @IBOutlet weak var txtGender: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    
    @IBOutlet weak var showtxtName: UITextField!
    @IBOutlet weak var ShowtxtAge: UITextField!
    @IBOutlet weak var ShowtxtGender: UITextField!
    @IBOutlet weak var ShowtxtCity: UITextField!
    
    @IBOutlet weak var txtSerach: UITextField!
    
    var arrEmp = [[String:String]]()
    var count = -1
    var dict = [[String:String]]()
    var sq = 0
    var flag = 0
    let sb = UIStoryboard(name: "Main", bundle: nil)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnAdd(_ sender: Any) {
       

        var dict = ["name" :txtName.text ?? "" ,"age" :txtAge.text ?? "" ,"gender" :txtGender.text ?? "" ,"city" :txtCity.text ?? "" ]
        arrEmp.append(dict)
         sq = arrEmp.count
        print(dict)
        print(sq)
        
    }
    
    @IBAction func btnReset(_ sender: Any) {
        
        txtName.text = ""
        txtAge.text = ""
        txtGender.text = ""
        txtCity.text = ""
    }
    @IBAction func btnNext(_ sender: Any) {
        if count < (sq - 1){
            count += 1
            
            var dict = arrEmp[count]
            
            print(count)
            showtxtName.text = dict["name"]
            ShowtxtAge.text = dict["age"]
            ShowtxtGender.text = dict["gender"]
            ShowtxtCity.text = dict["city"]
            
        }else{
            let alertController = UIAlertController(title: "Alert", message: "List Ended", preferredStyle: .alert)
            let OKAction = UIAlertAction(title: "OK", style: .default) {
                (action: UIAlertAction!) in
                // Code in this block will trigger when OK button tapped.
                print("Ok button tapped");
            }
            alertController.addAction(OKAction)
            self.present(alertController, animated: true, completion: nil)
        }

        
        
    }
  
    
    
    @IBAction func btnSearch(_ sender: Any) {
        for x in arrEmp{
            //print(x)
            if txtSerach.text == x["name"]{
                //print(x)
            
                showtxtName.text = x["name"]
                ShowtxtAge.text = x["age"]
                ShowtxtGender.text = x["gender"]
                ShowtxtCity.text = x["city"]
            }else{
                flag += 1
            }
        }
//        if flag >= 1{
//            let alertController = UIAlertController(title: "Alert", message: "No Name Found", preferredStyle: .alert)
//            let OKAction = UIAlertAction(title: "OK", style: .default) {
//                (action: UIAlertAction!) in
//                // Code in this block will trigger when OK button tapped.
//                print("Ok button tapped");
//            }
//            alertController.addAction(OKAction)
//            self.present(alertController, animated: true, completion: nil)
//            
//        }else{
//            print("Item Found")
//        }
   }
    
   
//    @IBAction func btnNavigate(_ sender: Any) {
//        let secondVC = sb.instantiateViewController(identifier: "Second")
//                    self.navigationController?.pushViewController(secondVC, animated: true)
//    }
        
    
    
    @IBAction func btnPrev(_ sender: Any) {
        print("sq will be \(sq)")
        if (count) > -1{
           
            let dict = arrEmp[count]
            showtxtName.text = dict["name"]
            ShowtxtAge.text = dict["age"]
            ShowtxtGender.text = dict["gender"]
            ShowtxtCity.text = dict["city"]
            count -= 1
        }else{
            let alertController = UIAlertController(title: "Alert", message: "List Ended", preferredStyle: .alert)
            let OKAction = UIAlertAction(title: "OK", style: .default) {
                (action: UIAlertAction!) in
                // Code in this block will trigger when OK button tapped.
                print("Prev button tapped ended list ");
            }
            alertController.addAction(OKAction)
            self.present(alertController, animated: true, completion: nil)
        }
        }
    
   
   
        
    
}

