//
//  ContentView.swift
//  KekeBusinessCard
//
//  Created by Kekeletso Phasha on 2023/06/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(red: 0.17, green: 0.24, blue: 0.31, opacity: 1.00)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("kekePhasha")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(.white, lineWidth: 5))
                    
                Text("Kekeletso Phasha")
                    .font(Font.custom("LibreBarcode39-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text:"078 375 0045", imageName: "phone.fill")
                InfoView(text:"kekephasha@outlook.com", imageName: "envelope.fill")
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

