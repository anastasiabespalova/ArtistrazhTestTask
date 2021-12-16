//
//  CatsModel.swift
//  CatsPhotos
//
//  Created by Анастасия Беспалова on 16.12.2021.
//

import Foundation


struct Cat: Hashable {
    let photoTitle: String
}

struct CatsModel {
    
    var cats: [Cat] = [Cat(photoTitle: "cat0"),
                       Cat(photoTitle: "cat1"),
                       Cat(photoTitle: "cat2"),
                       Cat(photoTitle: "cat3"),
                       Cat(photoTitle: "cat4"),
                       Cat(photoTitle: "cat5"),
                       Cat(photoTitle: "cat6")]

    
}
