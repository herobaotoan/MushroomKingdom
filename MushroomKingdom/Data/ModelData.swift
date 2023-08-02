/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Tran Chi Toan
  ID: s3891637
  Created  date: 02/08/2023
  Last modified: 02/08/2023
  Acknowledgement: https://github.com/TomHuynhSG/SSET-Contact-List-iOS
*/

import Foundation
import CoreLocation

var contacts = decodeJsonFromJsonFile(jsonFileName: "contacts.json")

// How to decode a json file into a struct
func decodeJsonFromJsonFile(jsonFileName: String) -> [Contact] {
    if let file = Bundle.main.url(forResource: jsonFileName, withExtension: nil){
        if let data = try? Data(contentsOf: file) {
            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([Contact].self, from: data)
                return decoded
            } catch let error {
                fatalError("Failed to decode JSON: \(error)")
            }
        }
    } else {
        fatalError("Couldn't load \(jsonFileName) file")
    }
    return [ ] as [Contact]
}
