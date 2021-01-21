import SwiftUI
import SpriteKit
struct EmitterLayerView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        let starLayer = CAEmitterLayer()
        let starCell = CAEmitterCell()
        starLayer.emitterSize = CGSize(width: view.bounds.width, height: view.bounds.height)
        //發射起點
        starLayer.emitterPosition = CGPoint(x: 200, y: view.bounds.height / 2)
        //粒子從具有相對角的矩形發射
        starLayer.emitterShape = .rectangle
        starCell.contents = UIImage(named: "star")?.cgImage

        starCell.birthRate = 0.5
        starCell.lifetime = 2
        starCell.velocity = 20
        starCell.lifetime = 20
        starCell.scale = 0.01
        starCell.yAcceleration = 200
        //由上而下的加速度
        starCell.yAcceleration = 30
        starLayer.emitterCells = [starCell]
        view.layer.addSublayer(starLayer)
        //""煙火"" 產生CAEmitterLayer()跟CAEmitterCell()的元件
        
        //firstEmitterCell是trailCell和fireworksCell的容器
       
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
    typealias UIViewType = UIView
}
struct EmitterLayerView2: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        let starLayer = CAEmitterLayer()
        let starCell = CAEmitterCell()
        starLayer.emitterSize = CGSize(width: view.bounds.width, height: view.bounds.height)
        //發射起點
        starLayer.emitterPosition = CGPoint(x: 150, y: view.bounds.height / 2)
        //粒子從具有相對角的矩形發射
        starLayer.emitterShape = .rectangle
        starCell.contents = UIImage(named: "star")?.cgImage

        starCell.birthRate = 0.1
        starCell.lifetime = 2
        starCell.velocity = 20
        starCell.lifetime = 15
        starCell.scale = 0.01
        starCell.yAcceleration = 200
        //由上而下的加速度
        starCell.yAcceleration = 30
        starLayer.emitterCells = [starCell]
        view.layer.addSublayer(starLayer)
        //""煙火"" 產生CAEmitterLayer()跟CAEmitterCell()的元件
        
        //firstEmitterCell是trailCell和fireworksCell的容器
       
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
    typealias UIViewType = UIView
}
struct EmitterLayerView3: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        let starLayer = CAEmitterLayer()
        let starCell = CAEmitterCell()
        starLayer.emitterSize = CGSize(width: view.bounds.width, height: view.bounds.height)
        //發射起點
        starLayer.emitterPosition = CGPoint(x: 40, y: view.bounds.height / 2)
        //粒子從具有相對角的矩形發射
        starLayer.emitterShape = .rectangle
        starCell.contents = UIImage(named: "star")?.cgImage

        starCell.birthRate = 0.6
        starCell.lifetime = 2
        starCell.velocity = 20
        starCell.lifetime = 20
        starCell.scale = 0.01
        starCell.yAcceleration = 200
        //由上而下的加速度
        starCell.yAcceleration = 30
        starLayer.emitterCells = [starCell]
        view.layer.addSublayer(starLayer)
        //""煙火"" 產生CAEmitterLayer()跟CAEmitterCell()的元件
        
        //firstEmitterCell是trailCell和fireworksCell的容器
       
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
    typealias UIViewType = UIView
}
struct EmitterLayerView4: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        let starLayer = CAEmitterLayer()
        let starCell = CAEmitterCell()
        starLayer.emitterSize = CGSize(width: view.bounds.width, height: view.bounds.height)
        //發射起點
        starLayer.emitterPosition = CGPoint(x: 50, y: view.bounds.height / 2)
        //粒子從具有相對角的矩形發射
        starLayer.emitterShape = .rectangle
        starCell.contents = UIImage(named: "star")?.cgImage

        starCell.birthRate = 0.3
        starCell.lifetime = 2
        starCell.velocity = 20
        starCell.lifetime = 20
        starCell.scale = 0.01
        starCell.yAcceleration = 200
        //由上而下的加速度
        starCell.yAcceleration = 30
        starLayer.emitterCells = [starCell]
        view.layer.addSublayer(starLayer)
        //""煙火"" 產生CAEmitterLayer()跟CAEmitterCell()的元件
        
        //firstEmitterCell是trailCell和fireworksCell的容器
       
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
    typealias UIViewType = UIView
}
struct EmitterLayerView5: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        let starLayer = CAEmitterLayer()
        let starCell = CAEmitterCell()
        starLayer.emitterSize = CGSize(width: view.bounds.width, height: view.bounds.height)
        //發射起點
        starLayer.emitterPosition = CGPoint(x: 4, y: view.bounds.height / 2)
        //粒子從具有相對角的矩形發射
        starLayer.emitterShape = .rectangle
        starCell.contents = UIImage(named: "star")?.cgImage

        starCell.birthRate = 0.4
        starCell.lifetime = 2
        starCell.velocity = 20
        starCell.lifetime = 20
        starCell.scale = 0.01
        starCell.yAcceleration = 200
        //由上而下的加速度

        starLayer.emitterCells = [starCell]
        view.layer.addSublayer(starLayer)
        //""煙火"" 產生CAEmitterLayer()跟CAEmitterCell()的元件
        
        //firstEmitterCell是trailCell和fireworksCell的容器
       
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
    typealias UIViewType = UIView
}
struct EmitterLayerView6: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        let starLayer = CAEmitterLayer()
        let starCell = CAEmitterCell()
        starLayer.emitterSize = CGSize(width: view.bounds.width, height: view.bounds.height)
        //發射起點
        starLayer.emitterPosition = CGPoint(x: 120, y: view.bounds.height / 2)
        //粒子從具有相對角的矩形發射
        starLayer.emitterShape = .rectangle
        starCell.contents = UIImage(named: "star")?.cgImage

        starCell.birthRate = 0.4
        starCell.lifetime = 2
        starCell.velocity = 20
        starCell.scale = 0.01
        starCell.yAcceleration = 200
        //由上而下的加速度

        starLayer.emitterCells = [starCell]
        view.layer.addSublayer(starLayer)
        //""煙火"" 產生CAEmitterLayer()跟CAEmitterCell()的元件
        
        //firstEmitterCell是trailCell和fireworksCell的容器
       
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
    typealias UIViewType = UIView
}
struct EmitterLayerView7: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        let starLayer = CAEmitterLayer()
        let starCell = CAEmitterCell()
        starLayer.emitterSize = CGSize(width: view.bounds.width, height: view.bounds.height)
        //發射起點
        starLayer.emitterPosition = CGPoint(x: 135, y: view.bounds.height / 2)
        //粒子從具有相對角的矩形發射
        starLayer.emitterShape = .rectangle
        starCell.contents = UIImage(named: "star")?.cgImage

        starCell.birthRate = 0.4
        starCell.lifetime = 2
        starCell.velocity = 20
        starCell.lifetime = 20
        starCell.scale = 0.01
        starCell.yAcceleration = 200
        //由上而下的加速度

        starLayer.emitterCells = [starCell]
        view.layer.addSublayer(starLayer)
        //""煙火"" 產生CAEmitterLayer()跟CAEmitterCell()的元件
        
        //firstEmitterCell是trailCell和fireworksCell的容器
       
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
    typealias UIViewType = UIView
}
struct Nasa: View {
    
    var body: some View {
        ZStack {
                    text()
                    EmitterLayerView()
                    EmitterLayerView2()
                    EmitterLayerView3()
                    EmitterLayerView4()
                    EmitterLayerView5()
                    EmitterLayerView6()
                    EmitterLayerView7()
                    
                    
                }
        
    }
    class ViewController: UIViewController {
        
        private var skView = SKView()
        
        override func viewDidLoad() {
            
            super.viewDidLoad()
            
           setupUI()
        }
        private func setupUI()
        {
            self.view.backgroundColor = .black
            
            view.addSubview(skView)
            
            skView.translatesAutoresizingMaskIntoConstraints = false
            let top = skView.topAnchor.constraint(equalTo: view.topAnchor,constant: 0)
            let leading = skView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 0)
            let trailing = skView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)
            let bottom = skView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
            NSLayoutConstraint.activate([top, leading, trailing, bottom])
        }

    }
}


struct text: View {
    
    
    @State var multiColor = false
    
    var body: some View{
        
        VStack(spacing: 50){
            
            TextShimmer(text: "Welcome", multiColors: $multiColor)
            
            TextShimmer(text: "Back", multiColors: $multiColor)
            
            TextShimmer(text: "Nasa", multiColors: $multiColor)
            
            
        }
        .background(Color(red: 235/255, green: 235/255, blue: 227/255))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.top)
            .edgesIgnoringSafeArea(.bottom)
    }
}

struct TextShimmer: View {
    
    var text: String
    @State var animation = false
    @Binding var multiColors: Bool
    
    var body: some View{
        
        ZStack{
            Text(text)
                .font(.system(size: 75, weight: .bold))
                .foregroundColor(Color.white.opacity(0.25))
                .position(x: 140, y: 50)
            
            Text(text)
                .font(.system(size: 75, weight: .bold))
                .foregroundColor(Color.white)
                
            

            
            HStack(spacing: 0){
                
                ForEach(0..<text.count,id:\.self){index in
                    Text(String(text[text.index(text.startIndex,offsetBy: index)]))
                        .font(.system(size: 75, weight: .bold))
                        .foregroundColor(funrandom1())
                        
        
       
                }
                
            }
            .mask(
                Circle()
                    
                    .fill()
                        
                        .rotationEffect(.init(degrees:20))
                    .offset(x: animation ? 500:0)
            )
            

            .onAppear(perform: {
                withAnimation(Animation.linear(duration: 4).repeatForever(autoreverses: false)){
                    
                    animation.toggle()
                }
            })
            
        }
        
    }
    func funrandom1()->Color{
        let color=UIColor(red: .random(in:0.5...1), green: .random(in:0.5...1), blue: .random(in:0.5...1), alpha: 1)
        return Color(color)
    }
    
    
}


struct Nasa_Previews: PreviewProvider {
    static var previews: some View {
        Nasa()
    }
}

   

