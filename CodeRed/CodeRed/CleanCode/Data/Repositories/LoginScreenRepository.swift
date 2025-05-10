//
//  LoginScreenRepository.swift
//  CodeRed
//
//  Created by 'MacBook' on 09/05/25.
//

import Foundation

protocol LoginScreenRepository {
    func loginscreenRepo(param: [String : String], completion: @escaping (Result<LoginScreenModel, Error>) -> Void)
}
