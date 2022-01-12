//
//  ViewController.swift
//  Prework
//
//  Created by Aarya Chandak on 1/12/22.
//

import UIKit

class ViewController: UIViewController {
    
  
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var friendsLabel: UITextField!
    
    var bill = 0.0
    var tip = 0.0
    var total = 0.0
    var friends = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        bill = Double(billAmountTextField.text!) ?? 0
        
        var friends = Double(friendsLabel.text!) ?? 1
        let tipPercentage = [0.15,0.18,0.20]
        
        tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        
        if (friends <= 0) {
            friends = 1;
        }
       
        total = (bill + tip) / friends
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    
    @IBAction func Calc(_ sender: Any) {
        
        bill = Double(billAmountTextField.text!) ?? 0
        
        var friends = Double(friendsLabel.text!) ?? 1
        let tipPercentage = [0.15,0.18,0.20]
        
        tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        
        if (friends <= 0) {
            friends = 1;
        }
       
        total = (bill + tip) / friends + 1
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        let alertController = UIAlertController(title: "Total", message:
                                                    "Hello! Your tip is $\(String(format: "%.2f", tip)) and your total cost is $\(String(format: "%.2f", total))", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))

            self.present(alertController, animated: true, completion: nil)
        
        
    }
    
}

