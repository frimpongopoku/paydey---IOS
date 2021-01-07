
import SwiftUI

struct InvoiceRecordCard: View {
    var body: some View {
			ZStack{
			TransparentCard(widthRoundness:10, heightRoundness: 10,elevation: 2, rounded: true)
					.frame(maxWidth:.infinity,maxHeight: 70)
					.padding([.leading,.trailing],20)
				
				HStack{
					Text("#")
						.fontWeight(.semibold)
						.font(.title2)
						.foregroundColor(.orange)
						.padding(.leading,40)
					Text("Built your entire webbie")
						.font(.caption)
						.foregroundColor(.titleBlack)
					Spacer()
					Text("54,899")
						.fontWeight(.semibold)
						.font(.title2)
						.foregroundColor(.normalGreen)
						.padding(.trailing,30)
				}.padding(.top)
				
			}
    }
}

struct InvoiceRecordCard_Previews: PreviewProvider {
    static var previews: some View {
        InvoiceRecordCard()
    }
}
