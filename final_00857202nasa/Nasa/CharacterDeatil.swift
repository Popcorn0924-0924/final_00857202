//
//  CharacterDetail.swift
//  NASA_00857202
//
//  Created by User08 on 2021/1/8.
//


import SwiftUI
import SwiftyJSON
import SDWebImageSwiftUI
import WebKit

struct CharacterDetail: View {
    var Char : Nasadata
    var body: some View {
        ScrollView
        {
            VStack{
                if Char.hdurl != ""{

                    WebImage(url: URL(string:Char.hdurl!)!, options: .highPriority, context: nil)
                    .resizable()
                    .offset(x: 10, y:0)
                    .frame(width: 400, height: 250, alignment: .center)
                }
                    
                Spacer()//間距
                Text(Char.title)
                Spacer()//間
                
                Spacer()//間距
                Spacer()//間距
                Text("介紹")
                    .bold()
                    .font(.title)
                TextEditor(text: .constant(Char.explanation))
                    .frame(width: 300, height: 500, alignment: .center)
                    .padding()
                    .multilineTextAlignment(.center)
                                    .font(Font.custom("jf-openhuninn-1.0", size: 15))


                
            
            }
        }
        .navigationBarTitle(Char.date)
            
            
    }
}

