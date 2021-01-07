
import SwiftUI

struct InvoiceListDisplay: View {
	var body: some View {
		VStack{
			ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false){
				ForEach(1...5, id:\.self) {_ in
					InvoiceRecordCard()
						.frame(height:67)
				}
			}
		}
	}
}

struct InvoiceListDisplay_Previews: PreviewProvider {
	static var previews: some View {
		InvoiceListDisplay()
	}
}
