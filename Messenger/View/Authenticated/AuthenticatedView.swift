//
//  AuthenticatedView.swift
//  Messenger
//
//  Created by 김예지 on 3/12/24.
// viewmodel을 init하는 시점은 이 뷰를 만들 때로 : 뷰모델에서 컨테이너를 이닛할 때 주입해줄 예정임으로.

import SwiftUI

struct AuthenticatedView: View {
    @StateObject var authViewModel : AuthenticatedViewModel
    
    var body: some View {
        switch authViewModel.authenticationState {
        case .unauthticated:
            LoginIntroView()
        case .authticated:
            MainTabView()
        }
    }
}

#Preview {
    // 프리뷰는 firebase와의 연동 및 네트워크 통신 등의 작업이 필요 없으므로 프리뷰용 서비스를 만들어서 주입이 가능.
    AuthenticatedView(authViewModel: .init(container: .init(services: StubService())))
}
