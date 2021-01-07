
import SwiftUI

struct TransparentCard: View {
	var widthRoundness  = 30
	var heightRoundness = 210
	var elevation = 3.0
	var rounded  = true
    var body: some View {
			if (rounded){
				RoundedRectangle(cornerSize: CGSize(width: widthRoundness, height: heightRoundness))
					.foregroundColor(.transWhite)
					.shadow(color: .backgroundWhite, radius: CGFloat(elevation), x: 6, y: 11)
					
			}else{
				Rectangle()
					.foregroundColor(.transWhite)
					.shadow(color: .backgroundWhite, radius: CGFloat(elevation), x: 6, y: 11)
			}
    }
}

struct TransparentCard_Previews: PreviewProvider {
    static var previews: some View {
        TransparentCard()
    }
}
