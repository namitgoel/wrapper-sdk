import XCTest
@testable import BenefitsSDK

final class BenefitsSDKTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testSDKInitialization() {
        let config = BenefitsConfiguration(clientId: "test-client-id")
        BenefitsSDK.shared.initialize(with: config)
        
        XCTAssertTrue(BenefitsSDK.shared.isSDKInitialized())
    }
    
    func testSDKVersion() {
        let version = BenefitsSDK.shared.getVersion()
        XCTAssertEqual(version, "1.0.0")
    }
    
    func testConfiguration() {
        let config = BenefitsConfiguration(
            clientId: "test-client",
            environment: .development,
            enableLogging: true
        )
        
        XCTAssertEqual(config.clientId, "test-client")
        XCTAssertEqual(config.environment.baseURL, "https://dev-api.benefits.com")
        XCTAssertTrue(config.enableLogging)
    }
}