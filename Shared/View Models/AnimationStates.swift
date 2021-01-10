

import Foundation
import SwiftUI
class AnimationStates : ObservableObject {
	// This value is modified when either the back / forward button is pressed to
	//simulate animated movement from right/ left depending on where the user wants to move to
	@Published var ANIME_DIRECTION_INDEX = 1;
	@Published var showNav = false
 //---------------- PERSONAL INFO PAGE ANIMATION -----------------------
	@Published var animatePersonalInfoPage = false {
		didSet{
			PI_X_OFFSET =  animatePersonalInfoPage  ? CGFloat(0) : CGFloat(ANIME_DIRECTION_INDEX * 300)
		}
	}
  var PI_X_OFFSET = CGFloat(300)
	
	//--------------- FIRST PAGE RELATED ANIMATION VALUES ----------------
	@Published var animateFirstPage  = false {
		didSet{
			FP_OFFSET_VALUE = animateFirstPage ? CGFloat(0) : CGFloat(ANIME_DIRECTION_INDEX * -300)
		}
	}
	var FP_OFFSET_VALUE  = CGFloat(-300)
	
	//--------------- PAYERS INFO PAGE ANIMATION VALUES ------------------------
	@Published var animatePayersPage  = false {
		didSet{
			PP_OFFSET_VALUE = animatePayersPage ? CGFloat(0) : CGFloat(ANIME_DIRECTION_INDEX * 300)
		}
	}
	var PP_OFFSET_VALUE  = CGFloat(300)
	
	//--------------- ADD RECORDS  PAGE ANIMATION VALUES ------------------------
	@Published var animateAddRecordsPage  = false {
		didSet{
			ARP_OFFSET_VALUE = animateAddRecordsPage ? CGFloat(0) : CGFloat(ANIME_DIRECTION_INDEX * 300)
		}
	}
	var ARP_OFFSET_VALUE  = CGFloat(300)
	
	
	//--------------- BIG ROUND BUTTON ANIMATION VALUES ------------------
	@Published var animateRoundBtn = false {
		didSet{
			ROUND_BTN_SCALE = animateRoundBtn ? CGFloat(1.0) : CGFloat(0.2)
		}
	}
	
	@Published var ROUND_BTN_SCALE = CGFloat(0.2)
	
	
}



