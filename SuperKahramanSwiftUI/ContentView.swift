//
//  ContentView.swift
//  SuperKahramanSwiftUI
//
//  Created by İbrahim Mengü on 31/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView(content: {
            VStack(content: {
                List(superKahramanArray) { kahraman in
                    NavigationLink(kahraman.isim, destination: DetayView(selectedKahraman: kahraman))
                }
            }).navigationTitle("Süper Kahraman Listesi")
        })
    }
}

#Preview {
    ContentView()
}
