//
//  SeriesView.swift
//  VizAssignmentViewer-SwiftUI
//
//  Created by Elazar Yifrach on 29/03/2022.
//

import SwiftUI

struct SeriesView: View {
    @State private var sliderValue = 0.0
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack(alignment: .center, spacing: 50.0) {
                Image(uiImage: UIImage())
                    .frame(width: 300.0, height: 300, alignment: .center)
                    .border(Color.white, width: 1.0)
                    .cornerRadius(5.0)
                Slider(value: $sliderValue, in: 0...100)
                    .frame(width: 300.0)
            }
        }
    }
}

struct SeriesView_Previews: PreviewProvider {
    static var previews: some View {
        SeriesView()
    }
}
