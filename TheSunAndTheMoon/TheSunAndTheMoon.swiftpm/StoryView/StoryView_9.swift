import SwiftUI




struct StoryView_9: View {
    
    @State var isDragging = false
    @State var touch = false
    @State var shown2 = true
    @State var blur2 = true
    var drag: some Gesture {
        DragGesture()
            .onChanged { _ in self.isDragging = true
                PlaySoundEffect(key: "CutSound")
            }
            .onEnded {
                _ in self.isDragging = true
            }
    }
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
                .preferredColorScheme(.dark)
            VStack(){
                Image(isDragging ? "Story9_1" : "Story9_2")
                    .resizable()
                    .gesture(drag)
                    .scaledToFit()
                
                
                Button(action: {
                    if isDragging == true{
                        self.touch.toggle()
                        PlaySoundEffect(key: "TurnPage")
                    }}) {
                        Text("next")
                            .foregroundColor(Color.white)
                            .font(.system(size: 20))
                            .padding()
                    }
                    .background(Color.blue)
                    .cornerRadius(20)
                    .padding()
                
                
            }
            .blur(radius: blur2 ? 10 : 0)
            .fullScreenCover(isPresented: $touch){
                StoryView_10()
                   
            }
            if shown2{
                CustomAlertView2(blur2: $blur2, shown2: $shown2)
            }
        }
    }
}

