
import SwiftUI

struct StoryView_10: View {
    @State private var touch = false
    var body: some View{
        ZStack{
            Color.black
                .ignoresSafeArea()
                .preferredColorScheme(.dark)
            VStack(){
                Image("Story_10")
                    .resizable()
                    .scaledToFit()
                
                MainText(text: "The children went up to the sky on a rope and they became the sun and the moon, and the mother became a cloud to protect them.")
                
                
                Button(action: {
                    self.touch.toggle()
                    PlaySoundEffect(key: "TurnPage")
                }) {
                    Text("next")
                        .foregroundColor(Color.white)
                        .font(.system(size: 20))
                        .padding()
                }
                .background(Color.blue)
                .cornerRadius(20)
                .padding()
            }
            .fullScreenCover(isPresented: $touch){
                StoryView_11()
            }
            .onAppear(perform: {
                playBGM(key: "Intro_BGM")
            })
        }
    }
}


