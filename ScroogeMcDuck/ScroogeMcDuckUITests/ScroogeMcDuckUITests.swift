//
//  ScroogeMcDuckUITests.swift
//  ScroogeMcDuckUITests
//
//  Created by Arminas Ruzgas on 2020-10-23.
//

import XCTest

var app: XCUIApplication!

class ScroogeMcDuckUITests: XCTestCase {

    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }

    func testUIElementsExistence() throws {
        
        let app = XCUIApplication()
        
        let firstSegmentIndex = app/*@START_MENU_TOKEN@*/.segmentedControls.buttons["No"]/*[[".segmentedControls.buttons[\"No\"]",".buttons[\"No\"]"],[[[-1,1],[-1,0]]],[1]]@END_MENU_TOKEN@*/
        let secondSegmentIndex = app/*@START_MENU_TOKEN@*/.segmentedControls.buttons["2.1 %"]/*[[".segmentedControls.buttons[\"2.1 %\"]",".buttons[\"2.1 %\"]"],[[[-1,1],[-1,0]]],[1]]@END_MENU_TOKEN@*/
        let thirdSegmentIndex = app/*@START_MENU_TOKEN@*/.segmentedControls.buttons["3 %"]/*[[".segmentedControls.buttons[\"3 %\"]",".buttons[\"3 %\"]"],[[[-1,1],[-1,0]]],[1]]@END_MENU_TOKEN@*/
        let enterSalary = app.textFields["Enter salary on paper"]
        let additionalPensionLabel = app.staticTexts["Additional pension payments?"]
       
        XCTAssertTrue(firstSegmentIndex.exists)
        XCTAssertTrue(secondSegmentIndex.exists)
        XCTAssertTrue(thirdSegmentIndex.exists)
        XCTAssertTrue(enterSalary.exists)
        XCTAssertTrue(additionalPensionLabel.exists)
    }
    
    func testingSalaryCalculationByTextField(){
        let input = "50"
        let answer = "30.0"
        
        let textField =  app.textFields["Enter salary on paper"]
        textField.tap()
        textField.typeText(input)
        
        let answerLabel = app.staticTexts[answer]
              
        XCTAssertTrue(answerLabel.exists,"Details: Input was 50 and expected answer is 30")
    }
    
    func testingSalaryCalculationWithSegmentControlTap(){
        let input = "50"
        let answer = "29.0"
        
        let textField =  app.textFields["Enter salary on paper"]
        textField.tap()
        textField.typeText(input)
        
        let secondSegmentIndex = app/*@START_MENU_TOKEN@*/.segmentedControls.buttons["2.1 %"]/*[[".segmentedControls.buttons[\"2.1 %\"]",".buttons[\"2.1 %\"]"],[[[-1,1],[-1,0]]],[1]]@END_MENU_TOKEN@*/
        secondSegmentIndex.tap()
        
        let answerLabel1 = app.staticTexts[answer]
        
        XCTAssertTrue(answerLabel1.exists,"Details: Input was 50, segmented control tapped on 2.1% and expected answer is 29")
        
        let thirdSegmentIndex = app/*@START_MENU_TOKEN@*/.segmentedControls.buttons["3 %"]/*[[".segmentedControls.buttons[\"3 %\"]",".buttons[\"3 %\"]"],[[[-1,1],[-1,0]]],[1]]@END_MENU_TOKEN@*/
        thirdSegmentIndex.tap()
        
        let answerLabel2 = app.staticTexts[answer]
        
        XCTAssertTrue(answerLabel2.exists,"Details: Input was 50, segmented control tapped on 2.1% and expected answer is 29")
    }
}
