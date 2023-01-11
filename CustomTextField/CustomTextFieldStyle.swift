//
//  CustomTextFieldStyle.swift
//  CustomTextField
//
//  Created by Abdelrahman Talaat on 12/01/2023.
//

import SwiftUI

struct CustomTextFieldStyle: TextFieldStyle {
	let placeholder: String
	let placeholderColor: Color
	let placeholderBgColor: Color
	
	var isEditing: Bool
	
	func _body(configuration: TextField<_Label>) -> some View {
		ZStack (alignment: .leading) {
			Text(placeholder)
				.font(.system(self.isEditing ? .title3 : .title2, design: .rounded))
				.foregroundColor(placeholderColor.opacity(0.5))
				.padding(.horizontal, self.isEditing ? 10 : 0)
				.background(placeholderBgColor) // the bg color of text when it placed between border
				.offset(y: self.isEditing ? -28 : 0)
				.scaleEffect(self.isEditing ? 0.9 : 1, anchor: .leading)
			
			configuration
				.font(.system(.title2, design: .rounded))
				.foregroundColor(placeholderColor)
		}
		.animation(.easeOut, value: isEditing)
		.padding(.horizontal)
		.padding(.vertical, 10)
		.background(
			RoundedRectangle(cornerRadius: 10)
				.stroke(self.isEditing ? placeholderColor : placeholderColor.opacity(0.5), lineWidth: 2)
		)
	}
}
