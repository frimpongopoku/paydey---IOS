

import SwiftUI

struct OldInvoicesDisplayPage: View {
	var body: some View {
		ZStack{
			Color.appColorGradientCenteredThick
			InvoiceListDisplay()
				.navigationBarBackButtonHidden(true)
				.navigationBarItems(
					leading:
						Text("PAYDEY")
						.font(.largeTitle)
						.fontWeight(.semibold)
					
				)
		}
	}
}

struct OldInvoicesDisplayPage_Previews: PreviewProvider {
	static var previews: some View {
		OldInvoicesDisplayPage()
	}
}
