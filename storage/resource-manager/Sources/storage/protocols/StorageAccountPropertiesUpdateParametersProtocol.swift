// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
// StorageAccountPropertiesUpdateParametersProtocol is the parameters used when updating a storage account.
public protocol StorageAccountPropertiesUpdateParametersProtocol : Codable {
     var customDomain: CustomDomainProtocol? { get set }
     var encryption: EncryptionProtocol? { get set }
     var accessTier: AccessTier? { get set }
     var enableHttpsTrafficOnly: Bool? { get set }
     var networkRuleSet: NetworkRuleSetProtocol? { get set }
}
