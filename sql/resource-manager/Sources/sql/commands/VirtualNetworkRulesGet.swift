import Foundation
import azureSwiftRuntime
public protocol VirtualNetworkRulesGet  {
    var headerParameters: [String: String] { get set }
    var resourceGroupName : String { get set }
    var serverName : String { get set }
    var virtualNetworkRuleName : String { get set }
    var subscriptionId : String { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (VirtualNetworkRuleProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.VirtualNetworkRules {
// Get gets a virtual network rule.
    internal class GetCommand : BaseCommand, VirtualNetworkRulesGet {
        public var resourceGroupName : String
        public var serverName : String
        public var virtualNetworkRuleName : String
        public var subscriptionId : String
        public var apiVersion = "2015-05-01-preview"

        public init(resourceGroupName: String, serverName: String, virtualNetworkRuleName: String, subscriptionId: String) {
            self.resourceGroupName = resourceGroupName
            self.serverName = serverName
            self.virtualNetworkRuleName = virtualNetworkRuleName
            self.subscriptionId = subscriptionId
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/virtualNetworkRules/{virtualNetworkRuleName}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{serverName}"] = String(describing: self.serverName)
            self.pathParameters["{virtualNetworkRuleName}"] = String(describing: self.virtualNetworkRuleName)
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)

        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(VirtualNetworkRuleData?.self, from: data)
                return result;
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (VirtualNetworkRuleProtocol?, Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (result: VirtualNetworkRuleData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
