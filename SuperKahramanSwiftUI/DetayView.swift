//
//  DetayView.swift
//  SuperKahramanSwiftUI
//
//  Created by İbrahim Mengü on 31/3/24.
//

import SwiftUI
import MapKit

struct DetayView: View {
    
let selectedKahraman: Kahraman
    var body: some View {
        
        VStack(content: {
            Map(){
                Marker(selectedKahraman.isim, coordinate: selectedKahraman.lokasyon)
                
            }.frame(height: 250)
            ImageView(image: Image(selectedKahraman.ImageName)).offset(CGSize(width: 0.0, height: UIScreen.main.bounds.width * -0.2))
            VStack(content: {
                HStack(content: {
                    Text(selectedKahraman.isim).font(.largeTitle).foregroundStyle(.blue)
                    Spacer()
                    Text(selectedKahraman.gercekIsim).foregroundStyle(.orange
                    )
                }).padding()
                HStack(content: {
                    Text(selectedKahraman.sehir)
                    Spacer()
                    Text(selectedKahraman.meslek)
                }).padding()
                Spacer()
            })
        }).font(.title)
    }
}

#Preview {
    DetayView(selectedKahraman: superKahramanArray.randomElement()!)
}
