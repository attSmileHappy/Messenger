//
//  AuthenticatedViewModel.swift
//  Messenger
//
//  Created by 김예지 on 3/12/24.
// 서비스에 접근할 수 있도록 연결해주는 작업

import Foundation

enum AuthenticationState {
    case unauthticated
    case authticated
    // 해당 값들은 인증뷰에서 로그인 여부를 확인하여 뷰를 브랜치해주기 때문에 퍼블리시드로 선언해줘야함.
}

class AuthenticatedViewModel : ObservableObject {
    
    @Published var authenticationState: AuthenticationState = .unauthticated
    
 // DIContainer를 통해서 서비스에 접근할 예정임으로 init에 컨테이너를 받아서 뷰모델에 넣을 예정
    private var container: DIContainer
    
    init(container: DIContainer) {
        self.container = container
    }
}
