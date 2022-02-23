//
//  CalculatorViewController.swift
//  ScroogeMcDuck
//
//  Created by Krivenkis on 2022-02-22.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var salaryInputTextField: SalaryInputFieldView!
    @IBOutlet weak var takeHomeSalaryLabel: UILabel!
    @IBOutlet weak var additionalPensionOption: OptionSegmentedControl!
    
    private var calculatorViewModel = CalculatorViewModel()
 
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func salaryTextFieldChanged(_ sender: SalaryInputFieldView) {
        guard let text = sender.text, let textNumber = Double(text) else { return }
        takeHomeSalaryLabel.text = calculatorViewModel.getHomeSalary(textNumber)
    }
    
    @IBAction func additionalPensionSelected(_ sender: UISegmentedControl) {
        guard let text = salaryInputTextField.text, let textNumber = Double(text) else { return }
        calculatorViewModel.rate = 0
        if sender.selectedSegmentIndex == 1 {
            calculatorViewModel.rate = 0.021
        } else if sender.selectedSegmentIndex == 2 {
            calculatorViewModel.rate = 0.03
        }
        takeHomeSalaryLabel.text = calculatorViewModel.getHomeSalary(textNumber)
    }
}
