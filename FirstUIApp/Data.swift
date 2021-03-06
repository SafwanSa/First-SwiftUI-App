//
//  Data.swift
//  FirstUIApp
//
//  Created by Safwan Saigh on 09/05/2020.
//  Copyright © 2020 Safwan Saigh. All rights reserved.
//

import SwiftUI

struct Post: Codable, Identifiable {
    let id = UUID()
    var title: String
    var body: String
}



class Api {
    func getPosts(completion: @escaping ([Post]) -> (Void)) {
    guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {return}
     
    URLSession.shared.dataTask(with: url) { (data, _, _) in
        guard let data = data else { return }
        let posts = try! JSONDecoder().decode([Post].self, from: data)
        
        DispatchQueue.main.async {
         completion(posts)
        }
    }
    .resume()
     }
}
