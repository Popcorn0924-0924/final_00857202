//
//  share.swift
//  final_00857202nasa
//
//  Created by User10 on 2021/1/21.
//

import SwiftUI

struct ActivityViewController: UIViewControllerRepresentable {

    var activityItems: [Any]
    var applicationActivities: [UIActivity]? = nil

    func makeUIViewController(context: UIViewControllerRepresentableContext<ActivityViewController>) -> UIActivityViewController {
        let controller = UIActivityViewController(activityItems: activityItems, applicationActivities: applicationActivities)
        return controller
    }

    func updateUIViewController(_ uiViewController: UIActivityViewController, context: UIViewControllerRepresentableContext<ActivityViewController>) {}

}
struct WrappedUIActivityView: View {

    @State private var isSharePresented: Bool = false

    var body: some View {
        Button("Share ") {
            self.isSharePresented = true
        }
        .sheet(isPresented: $isSharePresented, onDismiss: {
        }, content: {
            ActivityViewController(activityItems: [URL(string: "https://www.apple.com")!])
        })
    }
}

struct WrappedUIActivityView_Previews: PreviewProvider {
    static var previews: some View {
        WrappedUIActivityView()
    }
}
