//
//  ViewController.swift
//  CalculatorApp
//
//  Created by naruto kurama on 5.08.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numberOneText: UITextField!
    @IBOutlet weak var numberTwoText: UITextField!
    @IBOutlet weak var resultText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        resultText.isEnabled = false
    }
    @IBAction func additionButtonClicked(_ sender: Any) {
        calculator(process: "+")
     
    }
    @IBAction func minusButtonClicked(_ sender: Any) {
       calculator(process: "-")
        
    }
    @IBAction func multiplicationButtonClicked(_ sender: Any) {
       calculator(process: "*")
        
    }
    @IBAction func divisionButtonClicked(_ sender: Any) {
       calculator(process: "/")
    }
    @IBAction func resetButtonClicked(_ sender: Any) {
        let number1 = ""
        let number2 = ""
        let result = ""
        resultText.text = "\(result)"
        numberOneText.text = "\(number1)"
        numberTwoText.text = "\(number2)"
    }
    @IBAction func exitButtonClicked(_ sender: Any) {
        UIControl().sendAction(#selector(NSXPCConnection.suspend), to: UIApplication.shared, for: nil)
    }
    func alertAction() {
        let alert = UIAlertController(title: "Oops!", message: "Please Write Number", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style:
            UIAlertAction.Style.default) {
               UIAlertAction in
        }
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    func calculator(process: String) {
        if numberOneText.text == "" || numberTwoText.text == "" {
        alertAction()
            } else {
                let number1 = Double(numberOneText.text!)!
                let number2 = Double(numberTwoText.text!)!
                var result = Double(0)
                
                switch process {
                case "+":
                    result = number1 + number2
                    break
                case "-":
                    result = number1 - number2
                    break
                case "*":
                    result = number1 * number2
                    break
                case "/":
                    result = number1 / number2
                    break
                default:
                    break
                }
                resultText.text = "\(result)"
            }
    }

}

