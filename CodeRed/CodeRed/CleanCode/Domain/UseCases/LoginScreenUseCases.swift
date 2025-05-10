//
//  LoginScreenUseCases.swift
//  CodeRed
//
//  Created by 'MacBook' on 09/05/25.
//

import Foundation

class LoginScreenUseCases: LoginScreenRepository {
    
    let loginScreenRepository : LoginScreenRepository
    
    init(loginScreenRepository: LoginScreenRepository) {
        self.loginScreenRepository = loginScreenRepository
    }
    
    func loginscreenRepo(param: [String : String], completion: @escaping (Result<LoginScreenModel, any Error>) -> Void) {
        
        loginScreenRepository.loginscreenRepo(param: param, completion: completion)
    }
    
    
}
