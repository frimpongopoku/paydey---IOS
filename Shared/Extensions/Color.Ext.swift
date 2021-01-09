
import Foundation
import SwiftUI
extension Color {
	static var dirtyOrange : Color = Color ("Dirty-Orange")
	static var backgroundWhite : Color = Color("Background")
	static var themeOrange : Color = Color("Theme-Orange")
	static var logoOrange : Color = Color("Logo-Orange")
	static var normalGreen : Color = Color("Normal-Green")
	static var titleBlack : Color = Color("Title-Black")
	static var transGreen : Color = Color("Trans-Green")
	static var transWhite : Color = Color ("Trans-White")
	static var glass : Color = Color ("Glass")
	static var appColorGradient  = LinearGradient(gradient: Gradient(colors: [Color.white, Color.themeOrange, Color.white]), startPoint: .top, endPoint: .bottom)
	static var appColorGradientCenteredThick  = LinearGradient(gradient: Gradient(colors: [Color.white, Color.themeOrange,Color.themeOrange, Color.white]), startPoint: .top, endPoint: .bottom)
	
}
