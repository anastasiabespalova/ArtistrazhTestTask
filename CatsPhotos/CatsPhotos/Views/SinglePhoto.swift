//
//  SinglePhoto.swift
//  CatsPhotos
//
//  Created by Анастасия Беспалова on 16.12.2021.
//

import SwiftUI

struct SinglePhoto: View {
    @State var photoTitle: String
    var body: some View {
        GeometryReader { geometry in
            VStack {
                // To align as in demo
                Spacer()
                    .frame(width: geometry.size.width, height: geometry.size.width/3, alignment: .center)
                Image(photoTitle)
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.width, alignment: .center)
            }
           
        }
        
    }
}

