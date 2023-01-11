//
//  FloatingLabelTextField.swift
//  CustomTextField
//
//  Created by Abdelrahman Talaat on 11/01/2023.
//

import SwiftUI

struct FloatingLabelTextField: View {
	let placeholder: String
	@Binding var text: String
	
	var body: some View {
		ZStack (alignment: .leading) {
			Text(placeholder)
				.foregroundColor(.black.opacity(0.5))
				.offset(y: self.text.isEmpty ? 0  : -25)
				.scaleEffect(self.text.isEmpty ? 1 : 0.9, anchor: .leading)
				.font(.system(self.text.isEmpty ? .title2 : .title3, design: .rounded))
			
			TextField("", text: self.$text)
				.fontWeight(.medium)
				.foregroundColor(.black)
		}
		.padding(.top, self.text.isEmpty ? 0 : 18)
		.animation(.default, value: !text.isEmpty)
		.padding()
		.background(
			RoundedRectangle(cornerRadius: 10)
				.stroke(text.isEmpty ? .black.opacity(0.5) : .black, lineWidth: 2)
		)
		.cornerRadius(10)
		.frame(height: 70)
	}
}

struct FloatingLabelTextField_Previews: PreviewProvider {
	static var previews: some View {
		FloatingLabelTextField(placeholder: "First Name", text: .constant(""))
			.padding()
	}
}
