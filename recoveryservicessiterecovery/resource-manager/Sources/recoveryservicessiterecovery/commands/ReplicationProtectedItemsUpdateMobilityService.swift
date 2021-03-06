import Foundation
import azureSwiftRuntime
public protocol ReplicationProtectedItemsUpdateMobilityService  {
    var headerParameters: [String: String] { get set }
    var resourceName : String { get set }
    var resourceGroupName : String { get set }
    var subscriptionId : String { get set }
    var fabricName : String { get set }
    var protectionContainerName : String { get set }
    var replicationProtectedItemName : String { get set }
    var apiVersion : String { get set }
    var updateMobilityServiceRequest :  UpdateMobilityServiceRequestProtocol?  { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (ReplicationProtectedItemProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.ReplicationProtectedItems {
// UpdateMobilityService the operation to update(push update) the installed mobility service software on a replication
// protected item to the latest available version. This method may poll for completion. Polling can be canceled by
// passing the cancel channel argument. The channel will be used to cancel polling and any outstanding HTTP requests.
    internal class UpdateMobilityServiceCommand : BaseCommand, ReplicationProtectedItemsUpdateMobilityService {
        public var resourceName : String
        public var resourceGroupName : String
        public var subscriptionId : String
        public var fabricName : String
        public var protectionContainerName : String
        public var replicationProtectedItemName : String
        public var apiVersion = "2018-01-10"
    public var updateMobilityServiceRequest :  UpdateMobilityServiceRequestProtocol?

        public init(resourceName: String, resourceGroupName: String, subscriptionId: String, fabricName: String, protectionContainerName: String, replicationProtectedItemName: String, updateMobilityServiceRequest: UpdateMobilityServiceRequestProtocol) {
            self.resourceName = resourceName
            self.resourceGroupName = resourceGroupName
            self.subscriptionId = subscriptionId
            self.fabricName = fabricName
            self.protectionContainerName = protectionContainerName
            self.replicationProtectedItemName = replicationProtectedItemName
            self.updateMobilityServiceRequest = updateMobilityServiceRequest
            super.init()
            self.method = "Post"
            self.isLongRunningOperation = true
            self.path = "/Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{resourceName}/replicationFabrics/{fabricName}/replicationProtectionContainers/{protectionContainerName}/replicationProtectedItems/{replicationProtectedItemName}/updateMobilityService"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{resourceName}"] = String(describing: self.resourceName)
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.pathParameters["{fabricName}"] = String(describing: self.fabricName)
            self.pathParameters["{protectionContainerName}"] = String(describing: self.protectionContainerName)
            self.pathParameters["{replicationProtectedItemName}"] = String(describing: self.replicationProtectedItemName)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)
            self.body = updateMobilityServiceRequest

        }
        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let encodedValue = try encoder.encode(updateMobilityServiceRequest as? UpdateMobilityServiceRequestData)
                return encodedValue
            }
            throw DecodeError.unknownMimeType
        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(ReplicationProtectedItemData?.self, from: data)
                return result;
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (ReplicationProtectedItemProtocol?, Error?) -> Void) -> Void {
            client.executeAsyncLRO(command: self) {
                (result: ReplicationProtectedItemData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
