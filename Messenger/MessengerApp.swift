//
//  MessengerApp.swift
//  Messenger
//
//  Created by 김예지 on 3/12/24.
//

import SwiftUI

@main
struct MessengerApp: App {
    // DIContainer를 인바이럴먼트로 주입하기 위해서 스테이트오브젝트로 선언
    @StateObject var container: DIContainer = .init(services: Services())
    
    var body: some Scene {
        WindowGroup {
            AuthenticatedView(authViewModel: .init()) //시작 지점
                .environmentObject(container)
        }
    }
}
