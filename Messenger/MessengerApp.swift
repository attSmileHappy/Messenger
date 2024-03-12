//
//  MessengerApp.swift
//  Messenger
//
//  Created by 김예지 on 3/12/24.
//

import SwiftUI

@main
struct MessengerApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    // DIContainer를 인바이럴먼트로 주입하기 위해서 스테이트오브젝트로 선언
    @StateObject var container: DIContainer = .init(services: Services())
    
    var body: some Scene {
        WindowGroup {
            AuthenticatedView(authViewModel: .init(container: container)) //시작 지점
            // 상단 코드의 구조는 view or viewmodel를 테스트할 때 원하는 행태를 주입하여 테스트가 가능함.
                .environmentObject(container)
        }
    }
}
