

import SwiftUI

struct OldInvoicesDisplayPage: View {
	var body: some View {
		ZStack{
			Color.appColorGradientCenteredThick
			VStack(alignment:.leading){
				Text("PAYDEY")
					.font(.largeTitle)
					.fontWeight(.semibold)
					.padding()
				
				
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
