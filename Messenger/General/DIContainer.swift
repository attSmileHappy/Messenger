//
//  DIContainer.swift
//  Messenger
//
//  Created by 김예지 on 3/12/24.
// 인바이럴오브젝트에 주입이 될 예정이기때문에 클래스타입과 옵저버블 오브젝트로 선언

import Foundation


class DIContainer: ObservableObject {
    // 서비스 목록을 관리할 프로퍼티 추가
    // TODO: service
    var services : ServicesType
    
    init(services: ServicesType) {
        self.services = services
    }
}
