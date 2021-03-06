import Foundation
import azureSwiftRuntime
public protocol VirtualNetworkGatewaysVpnDeviceConfigurationScript  {
    var headerParameters: [String: String] { get set }
    var resourceGroupName : String { get set }
    var virtualNetworkGatewayConnectionName : String { get set }
    var subscriptionId : String { get set }
    var apiVersion : String { get set }
    var parameters :  VpnDeviceScriptParametersProtocol?  { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (String?, Error?) -> Void) -> Void ;
}

extension Commands.VirtualNetworkGateways {
// VpnDeviceConfigurationScript gets a xml format representation for vpn device configuration script.
    internal class VpnDeviceConfigurationScriptCommand : BaseCommand, VirtualNetworkGatewaysVpnDeviceConfigurationScript {
        public var resourceGroupName : String
        public var virtualNetworkGatewayConnectionName : String
        public var subscriptionId : String
        public var apiVersion = "2018-01-01"
    public var parameters :  VpnDeviceScriptParametersProtocol?

        public init(resourceGroupName: String, virtualNetworkGatewayConnectionName: String, subscriptionId: String, parameters: VpnDeviceScriptParametersProtocol) {
            self.resourceGroupName = resourceGroupName
            self.virtualNetworkGatewayConnectionName = virtualNetworkGatewayConnectionName
            self.subscriptionId = subscriptionId
            self.parameters = parameters
            super.init()
            self.method = "Post"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/connections/{virtualNetworkGatewayConnectionName}/vpndeviceconfigurationscript"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{virtualNetworkGatewayConnectionName}"] = String(describing: self.virtualNetworkGatewayConnectionName)
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)
            self.body = parameters

        }
        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let encodedValue = try encoder.encode(parameters as? VpnDeviceScriptParametersData)
                return encodedValue
            }
            throw DecodeError.unknownMimeType
        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(String?.self, from: data)
                return result;
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (String?, Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (result: String?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
