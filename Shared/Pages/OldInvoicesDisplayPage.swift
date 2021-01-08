

import SwiftUI

struct OldInvoicesDisplayPage: View {
	var body: some View {
		ZStack{
			Color.appColorGradientCenteredThick
			InvoiceListDisplay()
				.navigationBarItems(
					leading:
						Text("PAYDEY")
						.font(.largeTitle)
						.fontWeight(.semibold)
					
				)
				.navigationBarHidden(true)
				
		}
	}
}

struct OldInvoicesDisplayPage_Previews: PreviewProvider {
	static var previews: some View {
		OldInvoicesDisplayPage()
	}
}
