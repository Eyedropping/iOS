import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.textColor = UIColor.red
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        nameTextField.textColor = UIColor.blue
        nameTextField.delegate = self
    }
    @IBAction func nameChanged(_ sender: Any) {
        nameLabel.text = "Hello, \(nameTextField.text!)"
    }
    
}

extension ViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if string == "a" || string == "o" { return false }
        return true
    }
}
