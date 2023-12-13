//
//  ContentView.swift
//  SwiftUi-Learning2
//
//  Created by pnkbksh on 11/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State  var userName:String = ""
    @State  var password:String = ""
    @State var isLogedIn:Bool = false
    @State var isForgotPassword:Bool = false
    
    var body: some View {
        VStack {
            Text(isLogedIn ? "User Loged-in😊" : "☞ Login")
                .font(.largeTitle)
                .bold()
                .padding()
                .foregroundColor(Color(red: 0.23921568627450981, green: 0.23921568627450981, blue: 0.23921568627450981, opacity: 0.917))
            
            Text( isLogedIn ? "Welcome to 1st stage" :"Explore SwiftUI Basic")
                .font(.subheadline)
                .lineLimit(1)
                .foregroundColor(Color(red: 0.23921568627450981, green: 0.23921568627450981, blue: 0.23921568627450981, opacity: 0.917))
                .padding()
            
            TextField("User Name", text: $userName)
                .padding()
                .background(.mint)
                .cornerRadius(10)
            
            SecureField("Password", text: $password)
                .padding()
                .background(.mint)
                .cornerRadius(10)
            
            
            Text(isForgotPassword ? "oh.. No hint is pnkbksh" :"")
                .font(.subheadline)
                .lineLimit(1)
                .foregroundColor(Color(red: 0.23921568627450981, green: 0.23921568627450981, blue: 0.23921568627450981, opacity: 0.917))
                .padding()
            
            
            HStack{
                Button("Login") {
                    print("Clicked Login button")
                    isLogedIn.toggle()
                }
                .padding()
                .background(Color(red: 0.23921568627450981, green: 0.23921568627450981, blue: 0.23921568627450981, opacity: 0.917))
                .cornerRadius(10)
                .foregroundColor(.white)
                
                Spacer()
                
                Button("Forgot Password") {
                    print("Clicked Forgot button")
                    isForgotPassword.toggle()
                }
                .padding()
                .background(Color(red: 0.23921568627450981, green: 0.23921568627450981, blue: 0.23921568627450981, opacity: 0.917))
                .cornerRadius(10)
                .foregroundColor(.white)
                
            }
            .padding()
            
        }.padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
