import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> Lottie.LottieAnimationView {
        
        let animationView = LottieAnimationView(name: "guy")
        animationView.play()
        return animationView
        
    }
    
    func updateUIView(_ uiView: Lottie.LottieAnimationView, context: Context) {
        
    }
    
    

    
   
}
