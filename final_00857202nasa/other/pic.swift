//
//  pic.swift
//  NASA_00857202
//
//  Created by User08 on 2021/1/5.
//

import SwiftUI


struct pic: View {
    @State private var isSharePresented: Bool = false
    @State var isShowingImagePicker=false
    @State var imageChoose=UIImage()
    @State var name=""
    @State private var isPressed = false

    var body: some View {
        
        VStack {
            HStack{
                
                VStack{
                    
                    Image(uiImage: imageChoose)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 200)
                        .border(Color.black,width:1)
                        .clipped()
                        .scaleEffect(isPressed ? 0.5 : 1.0)
                        .onLongPressGesture {
                            self.isPressed.toggle()
                        
                        }
                    Button(action:{
                        self.isShowingImagePicker.toggle()
                    },label: {
                        Text("選照片")
                            
                            .font(.system(size:32))
                    })
                        .sheet(isPresented: $isShowingImagePicker, content: {
                            ImagePickerView(isPresented: self.$isShowingImagePicker,selectedImage: self.$imageChoose)
                        })
                    Button("Share ") {
                        self.isSharePresented = true
                    }
                    .sheet(isPresented: $isSharePresented, onDismiss: {
                    }, content: {
                        ActivityViewController(activityItems: [URL(string: "https://www.apple.com")!])
                    })
                }
                
                
                
                
            }
            
            
            
        }
    }
}
struct ImagePickerView:UIViewControllerRepresentable {
    
    @Binding var isPresented:Bool
    @Binding var selectedImage:UIImage
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePickerView>) -> UIViewController{
        let controller = UIImagePickerController()
        controller.delegate=context.coordinator
        return controller
    }
    
    func makeCoordinator() -> ImagePickerView.Coordinator {
        return Coordinator(parent:self)
    }
    
    class Coordinator:NSObject,UIImagePickerControllerDelegate,UINavigationControllerDelegate{
        
        let parent:ImagePickerView
        init(parent:ImagePickerView){
            self.parent=parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let selectedImage=info[.originalImage] as? UIImage{
                self.parent.selectedImage=selectedImage            }
            
            self.parent.isPresented=false
            
        }
        
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<ImagePickerView>) {
        
    }
}

struct ActivityView: UIViewControllerRepresentable {

    var activityItems: [Any]
    var applicationActivities: [UIActivity]? = nil

    func makeUIViewController(context: UIViewControllerRepresentableContext<ActivityView>) -> UIActivityViewController {
        let controller = UIActivityViewController(activityItems: activityItems, applicationActivities: applicationActivities)
        return controller
    }

    func updateUIViewController(_ uiViewController: UIActivityViewController, context: UIViewControllerRepresentableContext<ActivityView>) {}

}

struct pic_Previews: PreviewProvider {
    static var previews: some View {
        pic()
    }
}
