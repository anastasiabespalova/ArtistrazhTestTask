//
//  ContentView.swift
//  CatsPhotos
//
//  Created by Анастасия Беспалова on 16.12.2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var catsViewModel = CatsViewModel()
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 10) {
                    ForEach(catsViewModel.cats) { cat in
                        VStack(alignment: .trailing) {
                            Image(cat.catInfo.photoTitle)
                                .resizable()
                                .frame(width: cat.photoSelected ? 300 : 150,
                                       height: cat.photoSelected ? 300 : 150)
                                .onTapGesture {
                                    withAnimation {
                                        catsViewModel.didSelectPhoto(for: cat)
                                    }
                                }
                            NavigationLink(destination: SinglePhoto(photoTitle: cat.catInfo.photoTitle)) {
                                Text("Zoom")
                                    .font(.title)
                            }
                            .opacity(cat.photoSelected ? 1 : 0)
                        }
                    }
                }
            }
            .navigationBarTitle("Cats")
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}
