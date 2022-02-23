//
//  CalculatorViewModel.swift
//  ScroogeMcDuck
//
//  Created by Krivenkis on 2022-02-22.
//

import Foundation

class CalculatorViewModel {
    
    var rate: Double = 0
    private let sodraAPI = SodraAPI()
    
    func getHomeSalary(_ number: Double) -> String {
        let pensionRate = 0.1252 + rate
        let homeSalary = String((number - (number * 0.2) - (number * 0.0698) - (number * pensionRate)).rounded())
        sodraAPI.sendTaxInfoToSodra(homeSalary)
        return homeSalary
    }
}
