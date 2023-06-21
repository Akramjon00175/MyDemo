
import SwiftUI

struct Lottie_Page: View {
    
    @State var play = 0
    
    var body: some View {
        
        VStack {
            
            LottieView()
            
                .frame(width: 400, height: 400)
            
            Button(action: {
                
            },label: {
                
                Text("Play")
                
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                  
                
                
            })
            
        }
    }
}

struct Lottie_Page_Previews: PreviewProvider {
    static var previews: some View {
        Lottie_Page()
    }
}
