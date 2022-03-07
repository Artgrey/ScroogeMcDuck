//
//  PensionOptionSegmentView.swift
//  ScroogeMcDuck
//
//  Created by Krivenkis on 2022-02-22.
//
import UIKit

class PensionOptionSegmentView: UISegmentedControl {
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupSegmentControl()
    }
    
    func setupSegmentControl() {
        self.removeAllSegments()
        self.insertSegment(withTitle: "No", at: 0, animated: true)
        self.insertSegment(withTitle: "2.1 %", at: 1, animated: true)
        self.insertSegment(withTitle: "3 %", at: 2, animated: true)
        self.selectedSegmentIndex = 0
    }
}
