//
//  TextFieldView.swift
//  SwiftUISliderApp
//
//  Created by Macbook on 04.05.2022.
//

import SwiftUI

struct TextFieldView: View {
    
    @Binding var stringValue: String
    @Binding var value: Double
    
    @State private var showAlert = false
    
    var body: some View {
        TextField("0.0", text: $stringValue) { _ in withAnimation {
            formatValue()
        }
        }
        .frame(width: 35, height: 20)
        .border(.gray)
        .multilineTextAlignment(.leading)
        .keyboardType(.decimalPad)
        .alert("Sorry, wrong format", isPresented: $showAlert, actions: {}) {
            Text("Please enter number from 0 to 255")
        }
    }
}

extension TextFieldView {
    func formatValue() {
        guard let value = Double(stringValue) else { return }
        if (0...255).contains(value) {
            self.value = value
        } else {
            showAlert.toggle()
            stringValue = "0.0"
            self.value = 0.0
        }
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(stringValue: .constant("0.0"), value: .constant(0.0))
    }
}
