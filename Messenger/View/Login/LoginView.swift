//
//  LoginView.swift
//  Messenger
//
//  Created by 김예지 on 3/13/24.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading){
                Group{
                    Text("로그인")
                        .font(.system(size:28, weight: .bold))
                        .foregroundColor(.bkText)
                        .padding(.top, 80)
                        .padding(.bottom, 20)
                    
                    Text("아래 제공되는 서비스로 로그인을 해주세요.")
                        .font(.system(size:14))
                        .foregroundColor(.greyDeep)
                }
                .padding(.horizontal, 30)
                
                Spacer()
                
                Button{
                    // TODO:
                } label: {
                    Text("Google로 로그인")
                }.buttonStyle(LoginButtonStyle(textColor: .bkText, borderColor: .greyLight))
                Button{
                    // TODO:
                } label: {
                    Text("Apple로 로그인")
                }.buttonStyle(LoginButtonStyle(textColor: .bkText, borderColor: .greyLight))
            }
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Button{
                        dismiss()
                    } label: {
                      Image("back_search")
                    }
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
