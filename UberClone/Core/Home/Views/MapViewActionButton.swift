//
//  MapViewActionButton.swift
//  UberClone
//
//  Created by Atakan Kömürcü on 6.02.2023.
//

import SwiftUI

struct MapViewActionButton: View {
    
    @Binding var showLocationSearchView: Bool
    
    var body: some View {
        Button {
            withAnimation(.spring()) {
                if showLocationSearchView {
                    showLocationSearchView.toggle()
                }
            }
        } label: {
            Image(systemName: !showLocationSearchView ? "line.3.horizontal" : "arrow.left")
                .font(.title2)
                .foregroundColor(.black)
                .padding()
                .background(.white)
                .clipShape(Circle())
                .shadow(color: .black, radius: 6)
        }
        .frame(maxWidth: .infinity, alignment: .leading)

    }
}

struct MapViewActionButton_Previews: PreviewProvider {
    static var previews: some View {
        MapViewActionButton(showLocationSearchView: .constant(false))
    }
}
