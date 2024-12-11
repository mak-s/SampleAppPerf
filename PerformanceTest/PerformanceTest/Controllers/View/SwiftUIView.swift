//
//  SwiftUIView.swift
//  PerformanceTest
//
//  Created by Manish  on 11/12/24.
//

import SwiftUI

struct SwiftUIView: View {
    @State var identifier: String
    var body: some View {
        Text(identifier)
            .font(.title)
            .foregroundColor(Color.red)
    }
}

#Preview {
    SwiftUIView(identifier: "SwiftUI View")
}
