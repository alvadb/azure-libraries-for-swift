// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
// BlobsAppendBlockHeadersProtocol is defines headers for AppendBlock operation.
public protocol BlobsAppendBlockHeadersProtocol : Codable {
     var eTag: String? { get set }
     var lastModified: String? { get set }
     var contentMD5: String? { get set }
     var requestId: String? { get set }
     var version: String? { get set }
     var date: Date? { get set }
     var blobAppendOffset: String? { get set }
     var blobCommittedBlockCount: String? { get set }
}
