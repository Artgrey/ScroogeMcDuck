//
//  SalaryCalculatorViewModel.swift
//  ScroogeMcDuck
//
//  Created by Krivenkis on 2022-02-22.
//
import Foundation

class SalaryCalculatorViewModel {
    
    var rate: Double = 0
    
    func updateTakeHomeSalaryLabel(_ number: Double) -> String {
        let pensionRate = 0.1252 + rate
        let homeSalary = String((number - (number * 0.2) - (number * 0.0698) - (number * pensionRate)).rounded())
        
        TaxService.sendTaxInfoToSodra(homeSalary, completion: { (success, response) -> () in
            if success {
               print("Sent text to Sodra")
            } else {
               print("Failed sending tax to Sodra")
            }
        })
        
        return homeSalary
    }
}
