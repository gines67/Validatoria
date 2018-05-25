//
//  LowercaseValidator.swift
//  Validatoria
//
//  Created by Сергей Герасимов on 16.05.2018.
//  Copyright © 2018 Сергей Герасимов. All rights reserved.
//

public class LowercaseValidator: Validator {
    
    public init() {}
    
    public func isValid(validationString: String) -> Bool {
        let regExptest = NSPredicate(format: "SELF MATCHES %@", ".*[a-zа-я]+.*")
        return regExptest.evaluate(with: validationString)
    }
}
