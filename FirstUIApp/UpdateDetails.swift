//
//  UpdateDetails.swift
//  FirstUIApp
//
//  Created by Safwan Saigh on 01/05/2020.
//  Copyright © 2020 Safwan Saigh. All rights reserved.
//

import SwiftUI

struct UpdateDetails: View {
    var update: Update = updateData[0]
    var body: some View {
        List {
            VStack {
                Image(update.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                Text(update.text)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(update.title)
        }
        .listStyle(PlainListStyle())
    }
}

struct UpdateDetails_Previews: PreviewProvider {
    static var previews: some View {
        UpdateDetails()
    }
}
