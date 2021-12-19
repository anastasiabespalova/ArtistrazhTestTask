//
//  ContentView.swift
//  CatsPhotos
//
//  Created by Анастасия Беспалова on 16.12.2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var catsViewModel = CatsViewModel()
    @Namespace var nspace
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 20) {
                        ForEach(catsViewModel.cats, id: \.self) { cat in
                            VStack {
                                // Image
                                Image(cat.catInfo.photoTitle)
                                    .resizable()
                                    .frame(width: cat.photoSelected ? 2*geometry.size.width/3 : geometry.size.width/3,
                                             height: cat.photoSelected ? 2*geometry.size.width/3 : geometry.size.width/3)
                                // Zoom button
                                if cat.photoSelected {
                                    NavigationLink(destination: SinglePhoto(photoTitle: cat.catInfo.photoTitle)) {
                                        HStack {
                                            Spacer()
                                            Text("Zoom")
                                                .frame(alignment: .trailing)
                                                .foregroundColor(.blue)
                                        }
                                        .frame(width: 2*geometry.size.width/3, alignment: .center)
                                    }
                                }
                            }
                            .onTapGesture {
                                catsViewModel.didSelectPhoto(for: cat)
                            }
                            
                        }
                        
                        // To scroll not only in 200x200 center frame
                        Spacer()
                            .frame(width: geometry.size.width, height: 0)
                    }
                    
                    
                }

            }
            .navigationTitle("Cats")
        }
    }
}


