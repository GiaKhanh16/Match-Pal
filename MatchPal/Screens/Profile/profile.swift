import SwiftUI
import Charts

struct profile_view: View {
	 @State private var selectedTab = "Posts"
	 @State var viewModel = ProfileViewModel()
	 @Environment(\.colorScheme) private var colorScheme


	 struct ActivityData: Identifiable {
			let id = UUID()
			let day: String
			let count: Int
	 }

	 let activityData = [
			ActivityData(day: "Mon", count: 5),
			ActivityData(day: "Tue", count: 8),
			ActivityData(day: "Wed", count: 3),
			ActivityData(day: "Thu", count: 10),
			ActivityData(day: "Fri", count: 7),
			ActivityData(day: "Sat", count: 12),
			ActivityData(day: "Sun", count: 9)
	 ]
	 var body: some View {
			NavigationStack {
				 VStack(alignment: .leading, spacing: .paddingExtraLarge) {
						ProfileSection()
						ProfileButtons()
						ProfileTabs(tabNames: viewModel.tabNames, selectedTab: $selectedTab)
						VStack(alignment: .leading, spacing: .paddingExtraLarge) {
							 ForEach(viewModel.menuItems) { item in
									HStack(spacing: .paddingMedium) {
										 Image(systemName: item.icon)
												.font(.system(size: 20))
										 Text(item.title)
												.foregroundStyle(colorScheme == .dark ? .gray : .black)
												.fontWeight(.medium)
									}
									Divider()
							 }
						}
						.padding(.horizontal)


						VStack {
							 Text(
									"MatchPal v1.00")
							 .foregroundStyle(.gray)
							 .font(.footnote)
							 .multilineTextAlignment(.center)
							 .frame(maxWidth: .infinity)
						}
						Text(
							 "© 2023 MatchPal")
						.foregroundStyle(.gray)
						.font(.footnote)
						.multilineTextAlignment(.center)
						.frame(maxWidth: .infinity)
						.padding(.top, -20)
						Spacer()
				 }
				 .toolbar {
						ToolbarItem(placement: .navigationBarTrailing) {
							 Button {

							 } label: {
									Image(systemName: "gearshape.fill")
										 .resizable()
										 .foregroundStyle(.gray)
										 .padding(.horizontal, 20)
									
							 }
						}
				 }
			}
	 }
}


	 struct StatCard: View {
			let title: String
			let value: String

			var body: some View {
				 VStack {
						Text(value)
							 .font(.title3)
							 .fontWeight(.bold)
						Text(title)
							 .font(.caption)
							 .foregroundStyle(.gray)
				 }
				 .padding()
				 .background(.ultraThinMaterial)
				 .clipShape(RoundedRectangle(cornerRadius: 10))
			}
	 }

	 #Preview {
			profile_view()
	 }


