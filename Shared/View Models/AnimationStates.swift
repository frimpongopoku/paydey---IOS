

import Foundation
import SwiftUI
class AnimationStates : ObservableObject {
	@Published var showNav = false
	@Published var animatePersonalInfoPage = false{
		didSet{
			PI_X_OFFSET =  animatePersonalInfoPage  ? CGFloat(0) : CGFloat( 300)
		}
	}
  var PI_X_OFFSET = CGFloat(300)
	
	@Published var animateFirstPage  = false {
		didSet{
			FP_OFFSET_VALUE = animateFirstPage ? CGFloat(0) : CGFloat(-300)
		}
	}
	var FP_OFFSET_VALUE  = CGFloat(-300)
	
	
	
}











/*
PI =  Personal Info page
*/
