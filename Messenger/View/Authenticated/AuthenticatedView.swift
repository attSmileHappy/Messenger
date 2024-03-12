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
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    AuthenticatedView(authViewModel: .init())
}
