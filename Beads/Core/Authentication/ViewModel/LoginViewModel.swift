//
//  LoginViewModel.swift
//  Beads
//
//  Created by Moses Varghese on 9/7/24.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    @MainActor
    func login() async throws {
//        try await AuthService.shared.login(
//            withEmail: email,
//            password: password
//        )
    }
}
