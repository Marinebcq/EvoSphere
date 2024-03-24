import SwiftUI

struct Students_Teaching: View {

    @State var showSheet: Bool = false

    var body: some View {
        ZStack{
           
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("button")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
                    .background(Color.orange.cornerRadius(10))

            })
            .fullScreenCover(isPresented: $showSheet, content: {
                studensteaching()

            })
        }

    }
}
struct studensteaching: View {

    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack(alignment: .topLeading){
            Color.blue
                .ignoresSafeArea()
            Button(action: {
                dismiss()
            }, label: {
              Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)


            })
        }
    }
}



#Preview {
    Students_Teaching()
}
