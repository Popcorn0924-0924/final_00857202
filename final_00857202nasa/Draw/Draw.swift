import SwiftUI
import PencilKit

struct Draw: View {
    var body: some View {

        draw()
    }

}

struct Draw_Previews: PreviewProvider {
    static var previews: some View {
        Draw()
    }
}

struct draw : View {
    
    @State var canvas = PKCanvasView()
    @State var isDraw = true
    @State var color : Color = .black
    @State var type : PKInkingTool.InkType = .pencil
    @State var colorPicker = false

    
    var body: some View{
        
        NavigationView{
            
     
            DrawingView(canvas: $canvas, isDraw: $isDraw,type: $type,color: $color)
                .navigationTitle("Drawing")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(leading: Button(action: {
                    
                 
                    
                    SaveImage()
                    
                }, label: {
                    
                    Image(systemName: "square.and.arrow.down.fill")
                        .font(.title)
                }),trailing: HStack(spacing: 15){
                    
                    
                    
                
                 
                })
                
        }
    }
    
    func SaveImage(){
        
        
        
        let image = canvas.drawing.image(from: canvas.drawing.bounds, scale: 1)
        
        
        
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
    }
}

struct DrawingView : UIViewRepresentable {
    
    
    @Binding var canvas : PKCanvasView
    @Binding var isDraw : Bool
    @Binding var type : PKInkingTool.InkType
    @Binding var color : Color
    
    var ink : PKInkingTool{
        
        PKInkingTool(type, color: UIColor(color))
    }
    
    let eraser = PKEraserTool(.bitmap)
    
    func makeUIView(context: Context) -> PKCanvasView{
        
        canvas.drawingPolicy = .anyInput
        
        canvas.tool = isDraw ? ink : eraser
        
        return canvas
    }
    
    func updateUIView(_ uiView: PKCanvasView, context: Context) {
        
        
        uiView.tool = isDraw ? ink : eraser
    }
}
