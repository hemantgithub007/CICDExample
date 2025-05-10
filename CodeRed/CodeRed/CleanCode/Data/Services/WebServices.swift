//
//  WebServices.swift
//  CodeRed
//
//  Created by 'MacBook' on 09/05/25.
//

import Foundation
class WebServices {
    
    func loginAPI(param: [String : String], completion: @escaping (Result<LoginScreenModel, Error>) -> Void){
        
        
        guard let url = URL(string: "https://dummyjson.com/user/login") else {
            print("Invalid URL")
            return
        }
        
        guard let jsonData = try? JSONSerialization.data(withJSONObject: param) else {
            print("Failed to encode JSON")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = jsonData
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                DispatchQueue.main.async {
                    completion(.failure(error))
                }
                return
            }
            
            guard let data = data else {
                DispatchQueue.main.async {
                    completion(.failure(NSError(domain: "No data received", code: 0, userInfo: nil)))
                }
                return
            }
            
            do {
                let responseData = try JSONDecoder().decode(LoginScreenModel.self, from: data)
                DispatchQueue.main.async {
                    completion(.success(responseData))
                }
            } catch {
                DispatchQueue.main.async {
                    completion(.failure(error))
                }
            }
        }.resume()
    }
}
