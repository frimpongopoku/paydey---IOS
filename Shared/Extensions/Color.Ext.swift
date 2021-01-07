
import Foundation
import SwiftUI
extension Color {
	static var backgroundWhite : Color = Color("Background")
	static var themeOrange : Color = Color("Theme-Orange")
	static var logoOrange : Color = Color("Logo-Orange")
	static var normalGreen : Color = Color("Normal-Green")
	static var titleBlack : Color = Color("Title-Black")
	static var transGreen : Color = Color("Trans-Green")
	static var transWhite : Color = Color ("Trans-White")
	static var appColorGradient  = LinearGradient(gradient: Gradient(colors: [Color.white, Color.themeOrange, Color.white]), startPoint: .top, endPoint: .bottom)
	
}
