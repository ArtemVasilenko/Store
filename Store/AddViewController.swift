//
//  AddViewController.swift
//  Store
//
//  Created by Артем on 2/5/19.
//  Copyright © 2019 Артем. All rights reserved.
//

import UIKit

class AddViewController: UIViewController, MyProtocol {
    
    //var students = Students()
//    var model = Model()
    
    @IBOutlet weak var txtFieldNumber: UITextField!
    @IBOutlet weak var txtFieldName: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func addButton(_ sender: UIButton) {
        addNewStudent(txtFieldNumber.text ?? "", txtFieldName.text ?? "")
        
        //(Student.init(number: txtFieldNumber.text ?? "", name: txtFieldName.text ?? ""))

        //students.addNewStudent(txtFieldNumber.text ?? "", txtFieldName.text ?? "")
//        print(students.getList())
        dismiss(animated: true, completion: nil)
        
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
