

import SwiftUI

struct OldInvoicesDisplayPage: View {
	var body: some View {
		ZStack{
			Color.appColorGradientCenteredThick
			VStack(alignment:.leading){
				Text("PAYDEY")
					.font(.title)
					.fontWeight(.semibold)
					.padding(.leading)
				
				
				InvoiceListDisplay()
			}.navigationBarHidden(true)
			
			
		}
	}
}

struct OldInvoicesDisplayPage_Previews: PreviewProvider {
	static var previews: some View {
		OldInvoicesDisplayPage()
	}
}
