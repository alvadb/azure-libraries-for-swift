// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
// SignedIdentifierProtocol is signed identifier
public protocol SignedIdentifierProtocol : Codable {
     var id: String { get set }
     var accessPolicy: AccessPolicyProtocol { get set }
}
