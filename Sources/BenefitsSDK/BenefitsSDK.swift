import Foundation

@available(iOS 13.0, macOS 10.15, *)
public class BenefitsSDK {
    
    public static let shared = BenefitsSDK()
    
    private var isInitialized = false
    private var configuration: BenefitsConfiguration?
    
    private init() {}
    
    public func initialize(with configuration: BenefitsConfiguration) {
        self.configuration = configuration
        self.isInitialized = true
    }
    
    public func isSDKInitialized() -> Bool {
        return isInitialized
    }
    
    public func getVersion() -> String {
        return "1.0.0"
    }
}