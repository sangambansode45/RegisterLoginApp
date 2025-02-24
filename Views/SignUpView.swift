//
//  SignUpView.swift
//  RegisterLoginApp
//
//  Created by Apple on 24/02/25.
//

import SwiftUI

struct SignUpView: View {
    @State private var name : String = ""
    @State private var password : String = ""
    @State private var email : String = ""
    @State private var cpassword : String = ""
    @State var isLinkActive = false
    
    var body: some View {
        NavigationView{
            ZStack(alignment: .topLeading) {
                Color("Color1").ignoresSafeArea()
                VStack {
                    VStack(spacing:40){
                        ZStack{
                            Ellipse()
                                .frame(width: 458, height: 420)
                                .padding(.leading , -100)
                                .foregroundColor(Color("Color2"))
                                .padding(.top,-300)
                            
                            Text("Create \nAccount")
                                .foregroundColor(.white)
                                .font(.system(size: 35))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth : .infinity, alignment: .leading)
                                .padding(.leading,20)
                                .padding(.top,100)
                        }
                        
                        VStack (spacing : 20){
                            VStack(spacing : 20){
                                CustomTextFeild(placeholder: "Name", imageName: "person", bColor: "textColor2", tOpacity: 1.0, value: $name)
                                CustomTextFeild(placeholder: "Email", imageName: "envelope", bColor: "textColor2", tOpacity: 1.0, value: $email)
                                CustomTextFeild(placeholder: "Password", imageName: "lock", bColor: "textColor2", tOpacity: 1.0, value: $password)
                                CustomTextFeild(placeholder: "Conform Password", imageName: "lock", bColor: "textColor2", tOpacity: 1.0, value: $cpassword)
                                
                            }
                            
                            VStack(alignment:.trailing){
                                Button(action: {}, label: {
                                    CustomButton(title: "SIGN UP", bgColor: "Color2")
                                })
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
                        Text("Already have an account?")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .font(.system(size:18))
                        NavigationLink(destination: LoginView(), isActive: $isLinkActive){
                            Button(action: {
                                self.isLinkActive = true
                            }, label: {
                                Text("SIGN IN")
                                    .fontWeight(.bold)
                                    .font(.system(size : 18))
                                    .background(Color("Color1"))
                                
                            })
                        }
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



struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
