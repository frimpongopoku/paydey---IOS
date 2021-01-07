
import SwiftUI

struct TransparentCard: View {
	var widthRoundness  = 30
	var heightRoundness = 210
	var elevation = 3.0
	var rounded  = true
	var xShadow = 6
	var yShadow = 11
	var shadowColor = Color.backgroundWhite
	var body: some View {
		if (rounded){
			RoundedRectangle(cornerSize: CGSize(width: widthRoundness, height: heightRoundness))
				.foregroundColor(.transWhite)
				.shadow(color: shadowColor, radius: CGFloat(elevation), x: CGFloat(xShadow), y: CGFloat(yShadow))
			
		}else{
			Rectangle()
				.foregroundColor(.transWhite)
				.shadow(color: shadowColor, radius: CGFloat(elevation), x: CGFloat(xShadow), y: CGFloat(yShadow))
		}
	}
}

struct TransparentCard_Previews: PreviewProvider {
	static var previews: some View {
		TransparentCard()
	}
}
