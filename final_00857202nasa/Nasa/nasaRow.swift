//
//  nasaRow.swift
//  NASA_00857202
//
//  Created by User08 on 2021/1/5.
//

import SwiftUI
import SwiftyJSON
import SDWebImageSwiftUI
import WebKit
struct nasaRow: View {
    @ObservedObject var getData=datas()
    var body: some View {
        
            
        NavigationView{
            
                    VStack{
                        Section(header:Label(Sphenisciformes:"Nasa",red:228,green:212,blue:212)){
                            ScrollView{
                            ForEach(getData.jsonData,id: \.date){(n) in
                                
                                NavigationLink(destination: CharacterDetail(Char: n)) {
                                    ListRow(hdurl:n.hdurl, date: n.date,explanation:n.explanation,title:n.title)

                        
                            }
                    
                        }
                    }
                
                }
            }
        }
    }
}
struct Nasadata : Decodable {
    var hdurl : String?=nil
    var date : String
    var explanation : String
    var title:String
    
}

class datas: ObservableObject{
    @Published var jsonData = [Nasadata]()
    init() {
        updatnasa()
    }
    func updatnasa(){
        let urls = "https://api.nasa.gov/planetary/apod?api_key=oi3OoUFHt8kjHOPCzNLn2FKSndQb9uGa2PIaNBei&start_date=2020-09-24&end_date=2020-12-31"
        if let url = URL(string: urls) {
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                        let decoder = JSONDecoder()
                        if let datas = data {
                            do {
                                let results = try decoder.decode([Nasadata].self, from: datas)
                                
                                self.jsonData.append(contentsOf: results)
                                print("count", self.jsonData.count)
                                DispatchQueue.main.async {
                                    self.jsonData=results
                                }
                                dump(results)
                            }
                            catch {
                                print(error)
                            }
                        }
                    }
            task.resume()
        }
    }
}
struct ListRow :View{
    
    var hdurl : String?=nil
    var date : String
    var explanation : String
    var title:String
    
    var body:some View{
        HStack  {
            if hdurl != nil{

                WebImage(url: URL(string:hdurl!)!, options: .highPriority, context: nil)
                    .resizable()
                    .clipShape(Circle())
                    .offset(x: 0, y:0)
                    .frame(width: 120, height: 80, alignment: .center)
            }
            Text(title).fontWeight(.bold)
           
            
        }
    }
}
struct nasaRow_Previews: PreviewProvider {
    static var previews: some View {
        nasaRow()
    }
}
struct Label:View {
    let Sphenisciformes:String
        let red:Double
        let green:Double
        let blue:Double
        var body: some View {
            ZStack {
                Color(red: red/255, green: green/255, blue: blue/255).edgesIgnoringSafeArea(.all)
                HStack {
                    Spacer()
                    Text(Sphenisciformes)
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(Color.black)
                    Spacer()
                }
                .frame(width: 200)
                Spacer()
            }.frame(width:450, height: 30)
        }
}
