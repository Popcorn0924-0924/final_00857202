//
//  NewDataView.swift
//  final_00857202nasa
//
//  Created by User08 on 2021/1/8.
//

import SwiftUI

struct NewDataView: View {
    @ObservedObject var homeData:HomeViewModel
    @Environment(\.managedObjectContext) var context
    var body: some View {
        VStack{
            HStack{
                    Text("Update Task")
                        .font(.system(size: 65))
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                    Spacer(minLength: 0)
                   }
                   .padding()
                   
                   TextEditor(text: $homeData.content)
                       .padding()
            Divider()
                .padding(.horizontal)
            HStack{
                DataButton(title:"Today",homeDate: homeData)
                DatePicker("",selection:$homeData.date)
                    .labelsHidden()
            }
            Spacer()
            Button(action: {homeData.writeData(context:context)}, label: {
                Text("Add now")
            })
            
        }.background(Color.black)
        
    }
}

