import BitwardenSdk
import Networking

@testable import BitwardenShared

extension ServiceContainer {
    static func withMocks(
        appSettingsStore: AppSettingsStore = MockAppSettingsStore(),
        authRepository: AuthRepository = MockAuthRepository(),
        baseUrlService: BaseUrlService = DefaultBaseUrlService(baseUrl: .example),
        captchaService: CaptchaService = MockCaptchaService(),
        clientService: ClientService = MockClientService(),
        systemDevice: SystemDevice = MockSystemDevice(),
        httpClient: HTTPClient = MockHTTPClient(),
        stateService: StateService = MockStateService(),
        tokenService: TokenService = MockTokenService()
    ) -> ServiceContainer {
        ServiceContainer(
            apiService: APIService(
                baseUrlService: baseUrlService,
                client: httpClient
            ),
            appSettingsStore: appSettingsStore,
            authRepository: authRepository,
            baseUrlService: baseUrlService,
            captchaService: captchaService,
            clientService: clientService,
            stateService: stateService,
            systemDevice: systemDevice,
            tokenService: tokenService
        )
    }
}
