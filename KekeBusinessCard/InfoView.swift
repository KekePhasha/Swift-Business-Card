//
//  InfoView.swift
//  KekeBusinessCard
//
//  Created by Kekeletso Phasha on 2023/06/10.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
        
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageName).foregroundColor(
                    Color(red: 0.17, green: 0.24, blue: 0.31, opacity: 1.00))
                Text(text)
                    .bold()
                    .foregroundColor(.black)
            })
            .padding(.all)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Name", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
