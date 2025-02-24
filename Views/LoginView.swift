//
//  LoginView.swift
//  RegisterLoginApp
//
//  Created by Apple on 24/02/25.
//

import SwiftUI

struct LoginView: View {
    @State private var email : String = ""
    @State private var password : String = ""
    @State var isLinkActive = false
    var body: some View {
        NavigationView{
            ZStack(alignment: .topLeading) {
                VStack {
                    VStack(spacing:40){
                        ZStack{
                            Ellipse()
                                .frame(width: 510, height: 478)
                                .padding(.leading , -100)
                                .foregroundColor(Color("Color2"))
                                .padding(.top,-300)
                            
                            Ellipse()
                                .frame(width: 458, height: 420)
                                .padding(.trailing , -500)
                                .foregroundColor(Color("Color1"))
                                .padding(.top,-300)
                            
                            Text("Welcome \nBack")
                                .foregroundColor(.white)
                                .font(.system(size: 35))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth : .infinity, alignment: .leading)
                                .padding(.leading,25)
                                .padding(.top,50)
                                
                        }
                        
                        VStack (spacing : 30){
                            VStack(spacing : 30){
                                CustomTextFeild(placeholder: "Email", imageName: "envelope", bColor: "textColor1", tOpacity: 0.6, value: $email)
                                CustomTextFeild(placeholder: "Password", imageName: "lock", bColor: "textColor1", tOpacity: 0.6, value: $password)
                                
                            }
                            
                            VStack(alignment:.trailing){
                                Text("Forgot Password")
                                    .fontWeight(.medium)
                                    .padding()
                                NavigationLink(destination: SignUpView(), isActive: $isLinkActive ){
                                    Button(action: {
                                        self.isLinkActive = true
                                    }, label: {
                                        CustomButton(title: "SIGN IN", bgColor: "Color1")
                                    })
                                }
                            }.padding(.horizontal,20)
                            
                            HStack{
                                Button(action: {}, label: {
                                    Image("facebook")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .padding(.horizontal,60)
                                        .padding(.vertical,15)
                                        .background(Color("button-bg"))
                                        .cornerRadius(15)
                                })
                                Spacer()
                                Button(action: {}, label: {
                                    Image("google")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .padding(.horizontal,60)
                                        .padding(.vertical,15)
                                        .background(Color("button-bg"))
                                        .cornerRadius(15)
                                })
                            }
                            .padding(.horizontal,20)
                        }
                    }
                    Spacer()
                    
                    HStack {
                        Text("Dont have an account?")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .font(.system(size:18))
                        
                        Button(action: {}, label: {
                            Text("SIGN UP")
                                .fontWeight(.bold)
                                .font(.system(size : 18))
                                .background(Color("Color1"))
                            
                        })
                    }
                    .frame(height:63)
                    .frame(minWidth: 0,maxWidth: .infinity)
                    .background(Color("Color2"))
                    .ignoresSafeArea()
                }
                TopBarView()
                
            }
            .edgesIgnoringSafeArea(.bottom)
        }
        .navigationBarHidden(true)
    }
}



struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
