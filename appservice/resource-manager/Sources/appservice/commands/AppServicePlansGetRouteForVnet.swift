import Foundation
import azureSwiftRuntime
public protocol AppServicePlansGetRouteForVnet  {
    var headerParameters: [String: String] { get set }
    var resourceGroupName : String { get set }
    var name : String { get set }
    var vnetName : String { get set }
    var routeName : String { get set }
    var subscriptionId : String { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping ([VnetRouteProtocol?]?, Error?) -> Void) -> Void ;
}

extension Commands.AppServicePlans {
// GetRouteForVnet get a Virtual Network route in an App Service plan.
    internal class GetRouteForVnetCommand : BaseCommand, AppServicePlansGetRouteForVnet {
        public var resourceGroupName : String
        public var name : String
        public var vnetName : String
        public var routeName : String
        public var subscriptionId : String
        public var apiVersion = "2016-09-01"

        public init(resourceGroupName: String, name: String, vnetName: String, routeName: String, subscriptionId: String) {
            self.resourceGroupName = resourceGroupName
            self.name = name
            self.vnetName = vnetName
            self.routeName = routeName
            self.subscriptionId = subscriptionId
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/serverfarms/{name}/virtualNetworkConnections/{vnetName}/routes/{routeName}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{name}"] = String(describing: self.name)
            self.pathParameters["{vnetName}"] = String(describing: self.vnetName)
            self.pathParameters["{routeName}"] = String(describing: self.routeName)
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)

        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode([VnetRouteData?]?.self, from: data)
                return result;
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping ([VnetRouteProtocol?]?, Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (result: [VnetRouteData?]?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
