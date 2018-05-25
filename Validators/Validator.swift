//
//  Validator.swift
//  Validatoria
//
//  Created by Сергей Герасимов on 16.05.2018.
//  Copyright © 2018 Сергей Герасимов. All rights reserved.
//

public protocol Validator {
    func isValid(validationString: String) -> Bool
}
