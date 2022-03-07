//
//  SodraAPI.swift
//  ScroogeMcDuck
//
//  Created by Krivenkis on 2022-02-22.
//

import UIKit

typealias TaxServiceCompletion = (Bool, AnyObject) -> ()

class TaxService {
    
    class func sendTaxInfoToSodra(_ text: String, completion: TaxServiceCompletion) {
        print("Sending to Sodra... \(text)")
    }
}
