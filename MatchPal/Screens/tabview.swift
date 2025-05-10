import SwiftUI

	 // MARK: - AppTabs

enum AppTabs: Int {
	 case home
	 case profile

	 var title: String {
			switch self {
				 case .home:
						"Home"
				 case .profile:
						"Profile"
			}
	 }

	 var systemImageName: String {
			switch self {
				 case .home:
						"house"
				 case .profile:
						"person.crop.circle"
			}
	 }
}

	 // MARK: - AppTabView

struct tab_view: View {
	 @SceneStorage("currentTab") var currentTab = AppTabs.home

	 var body: some View {
			TabView(selection: $currentTab) {
				 Tab(AppTabs.home.title, systemImage: AppTabs.home.systemImageName, value: .home) {
						tourney()
				 }

				 Tab(AppTabs.profile.title, systemImage: AppTabs.profile.systemImageName, value: .profile) {
						profile()
				 }
			}
	 }
}

#Preview {
	 tab_view()
}
