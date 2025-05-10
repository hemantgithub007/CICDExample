//
//  LoginscreenRepoImpliment.swift
//  CodeRed
//
//  Created by 'MacBook' on 09/05/25.
//

import Foundation

class LoginscreenRepoImpliment : LoginScreenRepository {
    
    let webServices = WebServices()
    
    func loginscreenRepo(param: [String : String], completion: @escaping (Result<LoginScreenModel, any Error>) -> Void) {
        webServices.loginAPI(param: param, completion: completion)
    }
    
    
}
