//
//  CodeRedApp.swift
//  CodeRed
//
//  Created by 'MacBook' on 05/05/25.
//

import SwiftUI

@main
struct CodeRedApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            
            NavigationView {
                
                let repository = LoginscreenRepoImpliment()
                let useCase = LoginScreenUseCases(loginScreenRepository: repository)
                let viewModel = LoginScreenViewModel(loginScreenUseCases: useCase)
                LoginScreenView(loginScreenViewModel: viewModel)

            }
                
        }
    }
}
