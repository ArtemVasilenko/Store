
import UIKit

class ViewController: UIViewController, MyProtocol {
    
    var fm = FileManager.default
    let path = "school/students.text"
    let patchDir = "school"
    var url = URL(fileURLWithPath: "")
    var urlDir = URL(fileURLWithPath: "")
    
    func getUrl() {
        //let url: URL
        do {
        self.url = try fm.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true).appendingPathComponent(path)
            print(url)
        } catch {
            print(error)
        }
    }
    
    func createFile() {
        //let url = getUrl()
        let data: Data? = "papa".data(using: .utf8)
        fm.createFile(atPath: self.url.path, contents: data)
//        FileManager.default.createFile(atPath: "myFile.txt", contents: "mama".data(using: .utf8))
    }
    
    func getUrlDir() {
        do {
            self.urlDir = try fm.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true).appendingPathComponent(self.patchDir)
        } catch {
            print(error)
        }
        
    }
    
    
    func createDirectory() {
        do {
            try fm.createDirectory(at: urlDir, withIntermediateDirectories: true)
        } catch {
            print(error)
        }
    }
    
    @IBOutlet weak var mytextView: UITextView!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewWillAppear(_ animated: Bool) {
        mytextView.text = getList()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberTextField.isEnabled = false
        nameTextField.isEnabled = false
        getUrlDir()
        createDirectory()
        getUrl()
        createFile()
        
    }
    
    @IBAction func buttonClear(_ sender: UIButton) {
        clear()
        mytextView.text = getList()
    }
    
    
    @IBAction func buttonAdd(_ sender: UIButton) {
        
    }
    
    
}

