

import UIKit

class ViewController: UIViewController {
    var num1 = 0.0 ;
    var num2 = 0.0 ;
    var op = "";
    
    @IBOutlet weak var displayRes: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func Btninteger(_ sender: UIButton) {
        var temp = 0.0;
        temp = Double(displayRes.text!)!;
        if(temp != 0){
            temp = temp - (2*temp);
        }
        displayRes.text = String(temp);
        
    }
    @IBAction func Btnpec(_ sender: UIButton) {
        num1 = Double(displayRes.text!)!/100;
        displayRes.text = String(num1);
    }
    @IBAction func BtnClear(_ sender: UIButton) {
        displayRes.text = "";
    }
    @IBAction func ButtonNumber(sender: UIButton) {
        displayRes.text = displayRes.text! + String(sender.tag);
    }
    
    
    
    @IBAction func BtnDot(_ sender: UIButton) {
        displayRes.text = displayRes.text! + "."
        
        
    }
    
    @IBAction func BtnMutilply(_ sender: UIButton) {
        
        num1 = Double(displayRes.text!)!
        displayRes.text="";
        op = "*"
     
    }
    @IBAction func BtnDivision(_ sender: UIButton) {
        num1 = Double(displayRes.text!)!
        displayRes.text="";
        op = "/"
    }
    
    @IBAction func BtnMinus(_ sender: UIButton) {
        num1 = Double(displayRes.text!)!
        displayRes.text="";
        op = "-"
        
    }
    @IBAction func BtnAddition(_ sender: UIButton) {
        num1 = Double(displayRes.text!)!
        displayRes.text="";
        op = "+"
    }
    
    @IBAction func BtnEqual(_ sender: UIButton) {
        num2 = Double(displayRes.text!)!
        switch op{
        case "*":
            displayRes.text = String(num1 * num2);
        case "/":
            displayRes.text = String(num1 / num2);
        case "-":
            displayRes.text = String(num1 - num2);
        case "+":
            displayRes.text = String(num1 + num2);
            
        default:
            break
        }
    }
}

