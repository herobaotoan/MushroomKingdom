/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Tran Chi Toan
  ID: s3891637
  Created  date: 19/07/2023
  Last modified: 06/08/2023
  Acknowledgement: https://github.com/TomHuynhSG/SSET-Contact-List-iOS
*/

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .aspectRatio(contentMode: .fit)
            RoundedRectangle(cornerRadius: 20)
                .fill(.white.opacity(0.6))
                .frame(width: 370, height: 750)
            VStack{
                Text("Contact List")
                NavigationView {
                    List(contacts) {
                        contact in
                        NavigationLink{
                            ContactCard(contact: contact)
                        } label: {
                            ContactRow(contact: contact)
                        }
                    }
                    .background(Image("background"))
                    .frame(width: 300, height: 630)
                }
                .frame(width: 350, height: 680)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
