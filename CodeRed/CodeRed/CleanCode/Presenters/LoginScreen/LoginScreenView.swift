//
//  LoginScreenView.swift
//  CodeRed
//
//  Created by 'MacBook' on 09/05/25.
//

import SwiftUI

struct LoginScreenView: View {
    @StateObject var loginScreenViewModel: LoginScreenViewModel
    @State private var isLoggedIn = false
    
       var body: some View {
           
           NavigationView{
               VStack(spacing: 20) {
                             

                             Button("Login") {
                                 loginScreenViewModel.callLoginAPI(params: ["username" : "emilys", "password" : "emilyspass"])
                             }
                             .padding()
                             .background(Color.green)
                             .foregroundColor(.white)
                             .cornerRadius(10)

                             if loginScreenViewModel.isSuccess {
                                 Text("Login Success!  \(String( loginScreenViewModel.loginScreenModel?.firstName ?? ""))")
                                     .foregroundColor(.green)
                                 
                                 // Trigger navigation to next screen upon login success
            NavigationLink(destination: DashBoardScreen(), isActive: $isLoggedIn) {
                EmptyView()
                }
                .onAppear {
                isLoggedIn = true // Navigate after login success
                                                   }
                                 
                             }
                         }
                         .padding()

           }
           
          
       }
}

#Preview {
    let repository = LoginscreenRepoImpliment()
    let useCase = LoginScreenUseCases(loginScreenRepository: repository)
    let viewModel = LoginScreenViewModel(loginScreenUseCases: useCase)
    return LoginScreenView(loginScreenViewModel: viewModel)
}
