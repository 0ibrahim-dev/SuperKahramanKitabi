//
//  ImageView.swift
//  SuperKahramanSwiftUI
//
//  Created by İbrahim Mengü on 31/3/24.
//

import SwiftUI

struct ImageView: View {
    var image: Image
    var body: some View {
    
        image
        .resizable().aspectRatio(contentMode: .fit).clipShape(Circle()).overlay {
            Circle().stroke(Color.orange , lineWidth: 5 ).shadow(color: .black, radius: 25)
        }.frame(width: 230)
    }
}

#Preview {
    ImageView(image: Image("batman"))
}
