
import SwiftUI

struct InvoiceListDisplay: View {
	var body: some View {
		VStack{
			ForEach(1...5, id:\.self) {_ in
				InvoiceRecordCard()
			}
		}
	}
}

struct InvoiceListDisplay_Previews: PreviewProvider {
	static var previews: some View {
		InvoiceListDisplay()
	}
}
