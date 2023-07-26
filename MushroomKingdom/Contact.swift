//
//  Contact.swift
//  MushroomKingdom
//
//  Created by Toan Tran Chi on 26/07/2023.
//

import Foundation
import SwiftUI

struct Contact: Identifiable {
    var id = UUID()
    var name: String
    var phone: String
    var email: String
    
    var imageName: String
    var image: Image{
        Image(imageName)
    }
    
}
