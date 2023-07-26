//
//  ContentView.swift
//  MushroomKingdom
//
//  Created by Toan Tran Chi on 26/07/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .aspectRatio(contentMode: .fit)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(red: 0.9, green: 0.9, blue: 0.9)
                    .opacity(0.8))
                .frame(width: 370, height: 750)
            VStack{
                Text("Contact List")
                NavigationView {
                    List(contacts) {
                        contact in
                        NavigationLink{
                            
                        } label: {
                            ContactRow(contact: contact)
                        }
                    }
                    .background(Color.clear)
                    .background(Image("background"))
                    .frame(width: 300, height: 630)
                }
                .frame(width: 350, height: 680)
            }
        }
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//        }
//        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
