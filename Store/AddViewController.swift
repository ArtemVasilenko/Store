

import UIKit

class AddViewController: UIViewController, MyProtocol {
    
    @IBOutlet weak var txtFieldNumber: UITextField!
    @IBOutlet weak var txtFieldName: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addButton(_ sender: UIButton) {
        addNewStudent(txtFieldNumber.text ?? "", txtFieldName.text ?? "")
        
        dismiss(animated: true, completion: nil)
        
    }
}
