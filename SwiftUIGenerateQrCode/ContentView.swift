//
//  ContentView.swift
//  SwiftUIGenerateQrCode
//
//  Created by Lucy on 03/09/22.
//

import SwiftUI

struct ContentView: View {
    
    var qr = QRCodeGeneretor()
    
    @State var text = ""
    
    var body: some View {
        VStack{
            TextField("Enter Data", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            if text != ""{
                Image(uiImage: qr.generate(str: text))
                    .interpolation(.none)
                    .resizable()
                    .frame(width: 250, height: 250)
                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
