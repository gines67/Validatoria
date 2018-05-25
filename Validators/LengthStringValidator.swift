//
//  LengthStringValidator.swift
//  Validatoria
//
//  Created by Сергей Герасимов on 16.05.2018.
//  Copyright © 2018 Сергей Герасимов. All rights reserved.
//

public class LengthStringValidator: Validator {
    
    private var minimalLen: Int 
    
    public init(minimalLenght: Int = 6) {
        minimalLen = minimalLenght
    }
    
    public func isValid(validationString: String) -> Bool {
        return validationString.count >= minimalLen
    }
}
