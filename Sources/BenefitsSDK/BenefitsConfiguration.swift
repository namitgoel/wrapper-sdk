import Foundation

public struct BenefitsConfiguration {
    public let clientId: String
    public let environment: Environment
    public let enableLogging: Bool
    
    public init(clientId: String, environment: Environment = .production, enableLogging: Bool = false) {
        self.clientId = clientId
        self.environment = environment
        self.enableLogging = enableLogging
    }
}

public enum Environment {
    case development
    case staging
    case production
    
    var baseURL: String {
        switch self {
        case .development:
            return "https://dev-api.benefits.com"
        case .staging:
            return "https://staging-api.benefits.com"
        case .production:
            return "https://api.benefits.com"
        }
    }
}