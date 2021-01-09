
import SwiftUI

struct AddRecordsAndGeneratePage: View {
	var body: some View {
		ZStack{
			Color.appColorGradient
			VStack{
				Button(action:{}){
					Text("DONE, GENERATE INVOICE")
				}
			}
		}
		.navigationBarBackButtonHidden(true)
		.navigationBarItems(
			leading:
				Text("ADD RECORDS")
				.font(.title2)
				.fontWeight(.semibold),
			trailing:Text("GHS - 65,775.00")
				.font(.title3)
				.fontWeight(.bold)
				.foregroundColor(.normalGreen)
			
		)
	}
}

struct AddRecordsAndGeneratePage_Previews: PreviewProvider {
	static var previews: some View {
		AddRecordsAndGeneratePage()
	}
}
