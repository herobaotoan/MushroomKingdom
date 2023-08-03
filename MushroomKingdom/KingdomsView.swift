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

import SwiftUI

struct KingdomsView: View {
    @State var active: Bool = true
    var body: some View {
        ZStack {
            if active {
                Image("background")
                VStack {
                    HStack {
                        Text("Mushroom Kingdom")
                            .font(.system(size: 35))
                            .bold()
                    }
                    Text("MAMMA MIA!")
                        .font(.system(size: 30))
                        .bold()
                    Button(action: {
                        active = false
                    }, label: {
                        Capsule()
                        .fill(Color.red.opacity(0.8))
                        .padding(8)
                        .frame(height:80)
                        .overlay(Text("Click here to start")
                            .font(.system(.title3, design: .rounded))
                            .fontWeight(.bold)
                            .foregroundColor(.white))
                            
                    })
                }
            } else {
                ContentView()
            }
            
        }
    }
}

struct KingdomsView_Previews: PreviewProvider {
    static var previews: some View {
        KingdomsView()
    }
}
