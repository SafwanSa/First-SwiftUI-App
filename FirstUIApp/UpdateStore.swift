//
//  UpdateStore.swift
//  FirstUIApp
//
//  Created by Safwan Saigh on 01/05/2020.
//  Copyright © 2020 Safwan Saigh. All rights reserved.
//

import SwiftUI
import Combine

class UpdateStore: ObservableObject{
    @Published var updates: [Update] = updateData
}
