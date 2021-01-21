//
//  BottomTray.swift
//  NASA_00857202
//
//  Created by User08 on 2021/1/5.
//

import SwiftUI

struct BottomTray: View {
    
    var selectedPerson: Movie?
    var isScrollDisabled: Bool = true
    
    var body: some View {
        ZStack {
            if self.selectedPerson != nil {
                VStack(spacing: 0) {
                    Rectangle().fill(Color.gray.opacity(0.4))
                        .frame(width: 40, height: 4)
                        .cornerRadius(4)
                    
                    Text(self.selectedPerson?.name ?? "")
                        .font(.system(size: 30, weight: .semibold))
                        .padding(.vertical)
                    
                    Divider()
                    
                    ScrollView(showsIndicators: false) {
                        Text(self.selectedPerson?.description ?? "")
                            .padding()
                        
                        if self.selectedPerson?.sections != nil {
                            Divider()
                            ForEach(self.selectedPerson!.sections!) { section in
                                SectionCarousel(section: section)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                    .disabled(self.isScrollDisabled)
                }
                .multilineTextAlignment(.leading)
            }
        }
        .background(Color.white)
        .foregroundColor(Color.black)
    }
}
struct BottomTray_Previews: PreviewProvider {
    static var previews: some View {
        BottomTray(selectedPerson: Movie.stubbed.first, isScrollDisabled: false)
    }
}
