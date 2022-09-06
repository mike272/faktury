//
//  fakturyTests.swift
//  fakturyTests
//
//  Created by Wojciech Babinski on 02/09/2022.
//

import XCTest
@testable import faktury

class fakturyTests: XCTestCase {
    
    //System Under Test
    var sut: ViewModel!

    override func setUpWithError() throws {
        try super.setUpWithError()
        
        sut = ViewModel()
    }

    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
        
    }
    
    func testValidateCorrectData() throws{
        let accNr = "123456"
        let transactionAmount = "20"
        let transactionTitle = "Transfer of funds"
        
        XCTAssertEqual(ViewModel.validate(accNr: accNr, tranTitle: transactionTitle, tranAmount: transactionAmount), true, "Correct Data did not pass as valid")
    }
    
    func testValidateIncorrectData() throws{
        let accNr = "monkey"
        let transactionAmount = "banana"
        let transactionTitle = "Transfer of banana"
        
        XCTAssertEqual(ViewModel.validate(accNr: accNr, tranTitle: transactionTitle, tranAmount: transactionAmount), false, "Incorrect Data passed as valid")
    }

    

}
