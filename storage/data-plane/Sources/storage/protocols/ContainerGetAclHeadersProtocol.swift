// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
// ContainerGetAclHeadersProtocol is defines headers for GetAcl operation.
public protocol ContainerGetAclHeadersProtocol : Codable {
     var blobPublicAccess: PublicAccessType? { get set }
     var eTag: String? { get set }
     var lastModified: String? { get set }
     var requestId: String? { get set }
     var version: String? { get set }
     var date: Date? { get set }
}
