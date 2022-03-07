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
    @IBOutlet weak var additionalPensionOption: PensionOptionSegmentView!
    
    private var salaryCalculatorViewModel = SalaryCalculatorViewModel()
 
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func salaryTextFieldChanged(_ sender: SalaryInputFieldView) {
        guard let text = sender.text, let textNumber = Double(text) else { return }
        takeHomeSalaryLabel.text = salaryCalculatorViewModel.updateTakeHomeSalaryLabel(textNumber)
    }
    
    @IBAction func additionalPensionSelected(_ sender: UISegmentedControl) {
        guard let text = salaryInputTextField.text, let textNumber = Double(text) else { return }
        salaryCalculatorViewModel.rate = 0
        if sender.selectedSegmentIndex == 1 {
            salaryCalculatorViewModel.rate = 0.021
        } else if sender.selectedSegmentIndex == 2 {
            salaryCalculatorViewModel.rate = 0.03
        }
        takeHomeSalaryLabel.text = salaryCalculatorViewModel.updateTakeHomeSalaryLabel(textNumber)
    }
}
