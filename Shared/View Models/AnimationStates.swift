

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
	
	@Published var animateRoundBtn = false {
		didSet{
			ROUND_BTN_SCALE = animateRoundBtn ? CGFloat(1.0) : CGFloat(0.2)
		}
	}
	
	@Published var ROUND_BTN_SCALE = CGFloat(0.2)
	
	
}











/*
PI =  Personal Info page
*/
