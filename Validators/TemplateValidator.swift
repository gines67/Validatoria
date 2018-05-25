//
//  TemplateValidator.swift
//  Validatoria
//
//  Created by Сергей Герасимов on 16.05.2018.
//  Copyright © 2018 Сергей Герасимов. All rights reserved.
//

public class TemplateValidator: Validator {
    
    private var validator: (String) -> Bool
    
    public init<Object: AnyObject>(withDelegate delegate: Object, validator:@escaping (String, Object) -> Bool ) {
        self.validator = { [weak delegate] validationString in
            validator(validationString, delegate!)
        }
    }
    
    public func isValid(validationString: String) -> Bool {
        return validator(validationString)
    }
}
