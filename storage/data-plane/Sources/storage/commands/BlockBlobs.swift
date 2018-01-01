// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

// BlockBlobs is the client for the BlockBlobs methods of the AzureBlobStorage service.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct BlockBlobs {
    public static func GetBlockList(accountName: String, container: String, blob: String, comp: String) -> BlockBlobsGetBlockList {
        return GetBlockListCommand(accountName: accountName, container: container, blob: blob, comp: comp)
    }
    public static func PutBlock(accountName: String, container: String, blob: String, blockId: String, comp: String, _body: Data) -> BlockBlobsPutBlock {
        return PutBlockCommand(accountName: accountName, container: container, blob: blob, blockId: blockId, comp: comp, _body: _body)
    }
    public static func PutBlockList(accountName: String, container: String, blob: String, comp: String, blocks: [String]) -> BlockBlobsPutBlockList {
        return PutBlockListCommand(accountName: accountName, container: container, blob: blob, comp: comp, blocks: blocks)
    }
}
}
