//
//  CatsViewModel.swift
//  CatsPhotos
//
//  Created by Анастасия Беспалова on 16.12.2021.
//

import SwiftUI

struct CatDisplay: Hashable {
    var catInfo: Cat
    var photoSelected: Bool
}

class CatsViewModel: ObservableObject {
    
    var catsModel = CatsModel()
    
    @Published var cats: [CatDisplay] = []
    
    init() {
        for cat in catsModel.cats {
            cats.append(CatDisplay(catInfo: cat, photoSelected: false))
        }
    }
    
    // MARK: -Intents
    
    func didSelectPhoto(for cat: CatDisplay) {
        
        guard let selectedCatIndex = cats.firstIndex(where: {$0.catInfo == cat.catInfo}) else {
            return
        }
        if let deselectedCatIndex = cats.firstIndex(where: {$0.photoSelected == true}) {
            cats[deselectedCatIndex].photoSelected = false
            if selectedCatIndex != deselectedCatIndex {
                cats[selectedCatIndex].photoSelected = true
            }
        } else {
            cats[selectedCatIndex].photoSelected = true
        }
        
        
    }
}
