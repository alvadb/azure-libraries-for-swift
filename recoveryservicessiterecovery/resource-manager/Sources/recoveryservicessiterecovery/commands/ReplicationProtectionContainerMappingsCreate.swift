import Foundation
import azureSwiftRuntime
public protocol ReplicationProtectionContainerMappingsCreate  {
    var headerParameters: [String: String] { get set }
    var resourceName : String { get set }
    var resourceGroupName : String { get set }
    var subscriptionId : String { get set }
    var fabricName : String { get set }
    var protectionContainerName : String { get set }
    var mappingName : String { get set }
    var apiVersion : String { get set }
    var creationInput :  CreateProtectionContainerMappingInputProtocol?  { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (ProtectionContainerMappingProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.ReplicationProtectionContainerMappings {
// Create the operation to create a protection container mapping. This method may poll for completion. Polling can be
// canceled by passing the cancel channel argument. The channel will be used to cancel polling and any outstanding HTTP
// requests.
    internal class CreateCommand : BaseCommand, ReplicationProtectionContainerMappingsCreate {
        public var resourceName : String
        public var resourceGroupName : String
        public var subscriptionId : String
        public var fabricName : String
        public var protectionContainerName : String
        public var mappingName : String
        public var apiVersion = "2018-01-10"
    public var creationInput :  CreateProtectionContainerMappingInputProtocol?

        public init(resourceName: String, resourceGroupName: String, subscriptionId: String, fabricName: String, protectionContainerName: String, mappingName: String, creationInput: CreateProtectionContainerMappingInputProtocol) {
            self.resourceName = resourceName
            self.resourceGroupName = resourceGroupName
            self.subscriptionId = subscriptionId
            self.fabricName = fabricName
            self.protectionContainerName = protectionContainerName
            self.mappingName = mappingName
            self.creationInput = creationInput
            super.init()
            self.method = "Put"
            self.isLongRunningOperation = true
            self.path = "/Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{resourceName}/replicationFabrics/{fabricName}/replicationProtectionContainers/{protectionContainerName}/replicationProtectionContainerMappings/{mappingName}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{resourceName}"] = String(describing: self.resourceName)
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.pathParameters["{fabricName}"] = String(describing: self.fabricName)
            self.pathParameters["{protectionContainerName}"] = String(describing: self.protectionContainerName)
            self.pathParameters["{mappingName}"] = String(describing: self.mappingName)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)
            self.body = creationInput

        }
        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let encodedValue = try encoder.encode(creationInput as? CreateProtectionContainerMappingInputData)
                return encodedValue
            }
            throw DecodeError.unknownMimeType
        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(ProtectionContainerMappingData?.self, from: data)
                return result;
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (ProtectionContainerMappingProtocol?, Error?) -> Void) -> Void {
            client.executeAsyncLRO(command: self) {
                (result: ProtectionContainerMappingData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
