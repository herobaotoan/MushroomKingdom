/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Tran Chi Toan
  ID: s3891637
  Created  date: 26/07/2023
  Last modified: 06/08/2023
  Acknowledgement: https://github.com/TomHuynhSG/SSET-Contact-List-iOS
*/

import Foundation
import SwiftUI
import CoreLocation

struct Contact: Identifiable, Codable{
    var id: Int
    var name: String
    var description: String
    var imageName: String
    
    var image: Image {
        Image(imageName)
    }
    
    var coordinates: Coordinates
    
    var gameAppearance: [String]()
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }

}

struct Coordinates: Codable {
    var latitude: Double
    var longitude: Double
}

