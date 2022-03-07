//
//  SalaryInputFieldView.swift
//  ScroogeMcDuck
//
//  Created by Krivenkis on 2022-02-22.
//
import UIKit

class SalaryInputFieldView: UITextField {
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupTextField()
    }
    
    func setupTextField() {
        self.placeholder = "Enter salary on paper"
        self.keyboardType = .numberPad
        self.delegate = self
    }
}

extension SalaryInputFieldView: UITextFieldDelegate {
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

