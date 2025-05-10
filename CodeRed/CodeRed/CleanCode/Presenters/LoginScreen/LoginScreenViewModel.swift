//
//  LoginScreenViewModel.swift
//  CodeRed
//
//  Created by 'MacBook' on 09/05/25.
//

import Foundation


class LoginScreenViewModel : ObservableObject {
    @Published var loginScreenModel : LoginScreenModel?
    var isLoading : Bool = false
    var isSuccess : Bool = false
    
   private let loginScreenUseCases : LoginScreenUseCases
    init(loginScreenUseCases : LoginScreenUseCases){
        self.loginScreenUseCases = loginScreenUseCases
    }
    
    func callLoginAPI(params: [String: String]){
        isLoading = true
        
        loginScreenUseCases.loginscreenRepo(param: params){ [weak self] result in
            
            DispatchQueue.main.async {
                self?.isLoading = true

                switch result {
                case .success(let data):
                    self?.loginScreenModel = data
                    self?.isSuccess = true
                case .failure(let error):
                    print(error)
                    self?.isSuccess = false
                }
            }
            
        }
    }
}
