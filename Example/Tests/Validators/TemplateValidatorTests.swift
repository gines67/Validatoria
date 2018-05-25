//
//  TemplateValidatorTests.swift
//  Validatoria_Tests
//
//  Created by Сергей Герасимов on 24.05.2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import XCTest
@testable import Validatoria

class TemplateValidatorTests: XCTestCase {
    
    var validator: Validator?
    
    override func setUp() {
        super.setUp()
        // string contains uppercase cyrilic
        validator = TemplateValidator(withDelegate: self) { (validationString, self) -> Bool in
            let regExptest = NSPredicate(format: "SELF MATCHES %@", ".*[А-Я]+.*")
            return regExptest.evaluate(with: validationString)
        }
    }
    
    func testIsValid_NotContainUppercaseCyrilic_returnFalse() {
        let inputstring = "23123klфjlFGkjlk"
        
        let result = validator?.isValid(validationString: inputstring)
        
        XCTAssertFalse(result!)
    }
    
    func testIsValid_ContainUppercaseCyrilic_returnTrue() {
        let inputstring = "23123klАВФjlFGkjlk"
        
        let result = validator?.isValid(validationString: inputstring)
        
        XCTAssertTrue(result!)
    }

}
