// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
// BlobsPutHeadersProtocol is defines headers for Put operation.
public protocol BlobsPutHeadersProtocol : Codable {
     var eTag: String? { get set }
     var lastModified: String? { get set }
     var contentMD5: String? { get set }
     var requestId: String? { get set }
     var version: String? { get set }
     var date: Date? { get set }
     var isServerEncrypted: Bool? { get set }
}
