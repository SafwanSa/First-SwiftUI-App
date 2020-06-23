//
//  DataStore.swift
//  FirstUIApp
//
//  Created by Safwan Saigh on 10/05/2020.
//  Copyright © 2020 Safwan Saigh. All rights reserved.
//

import SwiftUI
import Combine

class DataStore: ObservableObject{
    @Published var posts: [Post] = []
    
    init() {
        getPosts()
    }

    func getPosts(){
        Api().getPosts { (posts) -> (Void) in
            self.posts = posts
        }
    }
}
