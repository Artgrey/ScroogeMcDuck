//
//  ScroogeMcDuckTests.swift
//  ScroogeMcDuckTests
//
//  Created by Arminas Ruzgas on 2020-10-23.
//

import XCTest
@testable import ScroogeMcDuck

class ScroogeMcDuckTests: XCTestCase {

    var viewModelSUT: CalculatorViewModel!
    var viewControllerSUT: CalculatorViewController!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        try super.setUpWithError()
        viewModelSUT = CalculatorViewModel()
        viewControllerSUT = CalculatorViewController()
    }

    func testViewModelSalaryCalculator() {
        let input = viewModelSUT.getHomeSalary(45)
        XCTAssertEqual(input, "27.0", "Salary was calculated wrongly")
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        viewModelSUT = nil
        viewControllerSUT = nil
        try super.tearDownWithError()
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    func testViewControllerComputedPerformance() {
      measure(
        metrics: [
          XCTClockMetric(),
          XCTCPUMetric(),
          XCTStorageMetric(),
          XCTMemoryMetric()
        ]
      ) {
          viewControllerSUT.viewDidLoad()
      }
    }
}
