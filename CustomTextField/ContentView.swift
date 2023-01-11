//
//  ContentView.swift
//  CustomTextField
//
//  Created by Abdelrahman Talaat on 11/01/2023.
//

import SwiftUI

struct ContentView: View {
	@State private var firstName: String = ""
	@State private var lastName: String = ""
	
    var body: some View {
        VStack {
			Text("Floating Label TextField")
				.font(.title2)
				.fontWeight(.bold)
				.foregroundColor(.black)

			FloatingLabelTextField(placeholder: "First Name", text: self.$firstName)
			FloatingLabelTextField(placeholder: "Last Name", text: self.$lastName)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
