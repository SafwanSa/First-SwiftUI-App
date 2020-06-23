//
//  CourseStore.swift
//  FirstUIApp
//
//  Created by Safwan Saigh on 10/05/2020.
//  Copyright © 2020 Safwan Saigh. All rights reserved.
//

import SwiftUI
import Contentful

let client = Client(spaceId: "7pltjxfhq95o", accessToken: "N6CWlUpF20EKoLJYF0jxaK6KR8LOzctt0B0gON6JT80")

func getArray(){
    let query = Query.where(contentTypeId: "sCourse")
    
    client.fetchArray(of: Entry.self, matching: query) { result in
        print(result)
    }
}
