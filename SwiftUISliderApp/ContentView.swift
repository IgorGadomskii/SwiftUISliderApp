

import SwiftUI

struct ContentView: View {
    
    @State private var greenValue = 128.0
    @State private var blueValue = 128.0
    @State private var redValue = 128.0
    @State private var stringValue = ""
    
    @FocusState private var focus: Bool
    
    
    var body: some View {
        VStack {
            ColorView(color: Color(red: redValue / 255, green: greenValue / 255, blue: blueValue / 255))
            
            
            SliderView(value: $redValue, color: Color.red)
            SliderView(value: $greenValue, color: Color.green)
            SliderView(value: $blueValue, color: Color.blue)
            
        }

        .frame(width: 350)
        .padding()
        .focused($focus)
        .ignoresSafeArea(.keyboard)
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Button("Done") {
                    focus = false
                }
            }
        }
        Spacer()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
