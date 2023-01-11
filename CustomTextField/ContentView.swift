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
			Group {
				Text("Floating Label TextField")
					.font(.title2)
					.fontWeight(.bold)

				FloatingLabelTextField(placeholder: "First Name", text: self.$firstName)
				FloatingLabelTextField(placeholder: "Last Name", text: self.$lastName)
			}
			
			Divider()
			
			Group {
				Text("Floating Border Label TextField")
					.font(.title2)
					.fontWeight(.bold)

				FloatingBorderLabelTextField(placeholder: "First Name", text: self.$firstName)
				FloatingBorderLabelTextField(placeholder: "Last Name", text: self.$lastName)
			}
			.padding(.vertical, 5)
			
			Divider()
			
			Group {
				Text("Using `.textFieldStyle` modifier")
					.font(.title2)

				TextField("", text: self.$firstName)
					.textFieldStyle(
						CustomTextFieldStyle(
							placeholder: "First Name",
							placeholderColor: .black,
							placeholderBgColor: .white,
							isEditing: !self.firstName.isEmpty
						)
					)

				TextField("", text: self.$lastName)
					.textFieldStyle(
						CustomTextFieldStyle(
							placeholder: "Last Name",
							placeholderColor: .black,
							placeholderBgColor: .white,
							isEditing: !self.lastName.isEmpty
						)
					)
			}
			.padding(.vertical, 5)
        }
		.foregroundColor(.black)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
