//
//  appView.swift
//  NASA_00857202
//
//  Created by User02 on 2020/12/29.
//

import SwiftUI

struct appView: View {
    var body: some View {
        
        TabView {
            Nasa()
                .tabItem {
                    Image(systemName: "nairasign.square")
                    Text("nasa_movie")
                    }
            ContentView()
                .tabItem {
                    Image(systemName: "tv.fill")
                    Text("nasa_movie")
                    }
            nasaRow()
                .tabItem {
                    Image(systemName: "nairasign.circle")
                    Text("nasa_api")
                    }
            
            imageView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("nasa_pic")
                    }
            pic()
                .tabItem {
                    Image(systemName: "photo")
                    Text("nasa_gesture")
                    }
            test()
                .tabItem {
                    Image(systemName: "tray.and.arrow.up.fill")
                    Text("nasa_core")
                    }
            Draw()
                .tabItem {
                    Image(systemName: "pencil.tip")
                    Text("nasa_new")
                    }
            
        }
    }
}

struct appView_Previews: PreviewProvider {
    static var previews: some View {
        appView()
    }
}
