//
//  Services.swift
//  Messenger
//
//  Created by 김예지 on 3/12/24.
// 프로토콜을 먼저 만들고, 그에 대한 구현체 생성

import Foundation

protocol ServicesType {
    var authService : AuthenticationServiceType {get set}
}

class Services : ServicesType {
    var authService : AuthenticationServiceType
    
    init() {
        self.authService = AuthenticationService()
    }
}

class StubService: ServicesType {
    var authService: AuthenticationServiceType = StubAuthenticationService()
    
    
}
