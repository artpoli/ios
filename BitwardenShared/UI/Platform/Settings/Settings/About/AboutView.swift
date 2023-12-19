import SwiftUI

// MARK: - AboutView

/// A view that allows users to view miscellaneous information about the app.
///
struct AboutView: View {
    // MARK: Properties

    /// The `Store` for this view.
    @ObservedObject var store: Store<AboutState, AboutAction, Void>

    // MARK: View

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            submitCrashLogs

            miscSection

            copyrightNotice
        }
        .scrollView()
        .navigationBar(title: Localizations.about, titleDisplayMode: .inline)
    }

    // MARK: Private views

    /// The copyright notice.
    private var copyrightNotice: some View {
        Text("© Bitwarden Inc. 2015-\(store.state.currentYear)")
            .styleGuide(.caption2)
            .foregroundColor(Color(asset: Asset.Colors.textSecondary))
            .multilineTextAlignment(.center)
            .frame(maxWidth: .infinity)
    }

    /// The section of miscellaneous about items.
    private var miscSection: some View {
        VStack(spacing: 0) {
            SettingsListItem(Localizations.bitwardenHelpCenter) {
                store.send(.helpCenterTapped)
            } trailingContent: {
                Image(asset: Asset.Images.externalLink2)
                    .resizable()
                    .frame(width: 22, height: 22)
            }

            SettingsListItem(Localizations.rateTheApp) {
                store.send(.rateTheAppTapped)
            } trailingContent: {
                Image(asset: Asset.Images.externalLink2)
                    .resizable()
                    .frame(width: 22, height: 22)
            }

            SettingsListItem(Localizations.version + store.state.version) {
                store.send(.versionTapped)
            } trailingContent: {
                Image(asset: Asset.Images.copy)
                    .resizable()
                    .frame(width: 22, height: 22)
            }
        }
        .cornerRadius(10)
    }

    /// The submit crash logs toggle.
    private var submitCrashLogs: some View {
        Toggle(isOn: store.binding(
            get: \.isSubmitCrashLogsToggleOn,
            send: AboutAction.toggleSubmitCrashLogs
        )) {
            Text(Localizations.submitCrashLogs)
        }
        .toggleStyle(.bitwarden)
        .styleGuide(.body)
        .padding(.top, 20)
    }
}