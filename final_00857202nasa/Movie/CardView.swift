//
//  CardView.swift
//  NASA_00857202
//
//  Created by User08 on 2021/1/5.
//

import SwiftUI

struct CardView: View {
    
    var movie: Movie
    @State private var isPressed = false
    var body: some View {
        
        VStack {
            ZStack(alignment: .bottom) {
                Image(movie.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .gesture(TapGesture()
                                    .onEnded({
                                        print("Tapped!")
                                    })
                             )
                
                Text(movie.shortDescription)
                    .font(.body)
                    .lineSpacing(5)
                    .lineLimit(4)
                    .padding()
                    .foregroundColor(.white)
                    .frame(width: screen.bounds.width * 0.75)
                    .background(Color.black.opacity(0.5))
            }
            
            .frame(width: screen.bounds.width * 0.75, height: screen.bounds.height * 0.60)
            .cornerRadius(16)
            .shadow(radius: 8)
            
            Text(movie.name)
                .font(.system(size: 30, weight: .medium))
                .foregroundColor(Color.black)
        }
    }
}
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(movie: Movie.stubbed[0])
    }
}
