//
//  ContactCard.swift
//  ContactList
//
//  Created by Tom Huynh on 7/13/22.
//

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
