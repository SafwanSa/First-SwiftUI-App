//
//  PostList.swift
//  FirstUIApp
//
//  Created by Safwan Saigh on 09/05/2020.
//  Copyright © 2020 Safwan Saigh. All rights reserved.
//

import SwiftUI

struct PostList: View {
    @ObservedObject var store = DataStore()
    
    var body: some View {
        List(store.posts) { post in
            VStack(alignment: .leading, spacing: 8){
                Text(post.title)
                    .font(.system(.title, design: .serif)).bold()
                
                Text(post.body)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct PostList_Previews: PreviewProvider {
    static var previews: some View {
        PostList()
    }
}
