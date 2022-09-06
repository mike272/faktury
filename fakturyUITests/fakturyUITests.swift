//
//  fakturyUITests.swift
//  fakturyUITests
//
//  Created by Wojciech Babinski on 02/09/2022.
//

import XCTest

class fakturyUITests: XCTestCase {
    
    var app: XCUIApplication!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        try super.setUpWithError()
        continueAfterFailure = true
        app = XCUIApplication()
        app.launch()
    }

//    override func tearDownWithError() throws {
//
//    }

    func testIfButtonIsDisabled() throws {
        let submitButton: XCUIElement =  XCUIApplication().buttons["Submit"]
        
        XCTAssertEqual(submitButton.isEnabled, false)

    }
    
    
    
    func testAccNrTextField(){
        let textField = app.textFields["012345"]
        textField.tap()
        textField.typeText("123456")
        XCTAssertEqual(textField.value as! String, "123456")
    }
    func testTitleTextField(){
        let textField = app.textFields["Transfer of funds"]
        textField.tap()
        textField.typeText("monkey")
        XCTAssertEqual(textField.value as! String, "monkey")
    }
    func testAmountTextField(){
        let textField = app.textFields["200"]
        textField.tap()
        textField.typeText("10000")
        XCTAssertEqual(textField.value as! String, "10000")
    }
    
    func testButtonEnabled(){
        var textField = app.textFields["012345"]
        textField.tap()
        textField.typeText("123456\n")
        
        //hide virtual keyboard
        
        
        textField = app.textFields["Transfer of funds"]
        textField.tap()
        textField.typeText("title\n")
        
         
        
        textField = app.textFields["200"]
        textField.tap()
        textField.typeText("1000\n")
        
        
        let button = app.buttons["Submit"]
        
        XCTAssertTrue(button.isEnabled)
    }
    
    

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
