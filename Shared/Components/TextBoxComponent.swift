

import SwiftUI

// -------- TextBox component ------------
struct TextBoxComponent : View {
	var labelName = "Name"
	var placeholder = "Placeholder"
	@Binding var text : String
	var multi  = false
	var height = 130
	var body : some View {
		ZStack{
//			Color.blue
			VStack(alignment:.leading){
				Text(labelName)
					.fontWeight(.semibold)
					.font(.caption2)
					.foregroundColor(.titleBlack)
				if(!multi){
					TransparentCard(widthRoundness:6, heightRoundness: 6, rounded:false, shadowColor:.glass)
						.frame(height:40)
						.overlay(
							TextField(placeholder, text: $text)
								.font(.caption)
								.padding()
						)
						.overlay(Rectangle().stroke(lineWidth: 1).foregroundColor(.white))
				}else{
					TextEditor( text: $text)
						.font(.caption)
						.frame(height:CGFloat(height))
				}
			}
		}
	}
}

struct TextBoxComponent_Previews: PreviewProvider {
	static var previews: some View {
		TextBoxComponent( text:.constant("here we go"))
	}
}
