/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Tran Chi Toan
  ID: s3891637
  Created  date: 29/07/2023
  Last modified: 06/08/2023
  Acknowledgement: https://github.com/TomHuynhSG/SSET-Contact-List-iOS
*/

import SwiftUI
import CoreLocation
struct ContactCard: View {
    var contact: Contact
    
    var body: some View {
        ZStack {
            Image("background")
                .aspectRatio(contentMode: .fit)
            RoundedRectangle(cornerRadius: 20)
                .fill(.white.opacity(0.7))
                .frame(width: 370, height: 750)
            ScrollView {
                VStack (spacing: -150){
                    MapView(coordinate: contact.locationCoordinate)
                        .edgesIgnoringSafeArea(.top)
                        .frame(height: 450)
                    HStack{
                        Image(contact.imageName)
                            .frame(maxWidth: 200)
                            .offset(y: -50)
                            .padding(.bottom, -100)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color(.black), lineWidth: 6))
                        Text(contact.name)
                            .font(.system(size: 40))
                            .bold()
                    }
                    .frame(width: 350, height: 300)
                }
                VStack{
                    Text(contact.description)
                        .font(.system(size:20))
                        .frame(maxWidth: 350)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            
            
        }
    }
}

struct ContactCard_Previews: PreviewProvider {
    static var previews: some View {
        ContactCard(contact: contacts[0])
    }
}
