
import SwiftUI

struct IndexPage: View {
	@StateObject var anime = AnimationStates()
    var body: some View {
       LandingPage()
				
//				.opacity( anime.animatePage ? 1 : 0)
				
//				.animation(.easeInOut(duration:3))
//				.onAppear(){
//					anime.animatePage = true
//				}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
			IndexPage(anime: AnimationStates()).environmentObject(ApplicationState())
    }
}
