/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Tran Chi Toan
  ID: s3891637
  Created  date: 02/08/2023
  Last modified: 06/08/2023
  Acknowledgement: https://github.com/TomHuynhSG/SSET-Contact-List-iOS
*/

import Foundation
import SwiftUI

struct ContactRow: View {
    var contact: Contact
    
    var body: some View {
        HStack{
            contact.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(contact.name)

        }
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContactRow(contact: contacts[0])
                .previewLayout(.fixed(width: 300, height: 70))
//            ContactRow(contact: contacts[1])
//                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}
