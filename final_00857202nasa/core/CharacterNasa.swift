//
//  CharacterNasa.swift
//  NASA_00857202
//
//  Created by User08 on 2021/1/8.
//

import SwiftUI

struct CharacterNasa: View {
    var Char : Nasadata
    var body: some View {
        HStack{
            Image(Char.date)
                .resizable()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .offset(x: 10, y:0)
                .frame(width: 120, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            

                /*.mask(
                    Image(systemName: "star.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                )
                //.offset(x:100,y:100)*/
        }
    }
}


