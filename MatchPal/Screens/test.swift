import SwiftUI

struct test: View {
	 var body: some View {
			Text("hello world")
	 }
}

struct second: View {
	 var body: some View {
			VStack {
				 Color.green
						.clipShape(.rect(topLeadingRadius: 30, topTrailingRadius: 30))
						.frame(maxWidth: .infinity)
			}
	 }
}


#Preview {
	 test()
}
