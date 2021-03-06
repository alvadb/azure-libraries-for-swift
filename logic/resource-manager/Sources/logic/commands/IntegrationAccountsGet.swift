import Foundation
import azureSwiftRuntime
public protocol IntegrationAccountsGet  {
    var headerParameters: [String: String] { get set }
    var subscriptionId : String { get set }
    var resourceGroupName : String { get set }
    var integrationAccountName : String { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (IntegrationAccountProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.IntegrationAccounts {
// Get gets an integration account.
    internal class GetCommand : BaseCommand, IntegrationAccountsGet {
        public var subscriptionId : String
        public var resourceGroupName : String
        public var integrationAccountName : String
        public var apiVersion = "2016-06-01"

        public init(subscriptionId: String, resourceGroupName: String, integrationAccountName: String) {
            self.subscriptionId = subscriptionId
            self.resourceGroupName = resourceGroupName
            self.integrationAccountName = integrationAccountName
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/integrationAccounts/{integrationAccountName}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{integrationAccountName}"] = String(describing: self.integrationAccountName)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)

        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(IntegrationAccountData?.self, from: data)
                return result;
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (IntegrationAccountProtocol?, Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (result: IntegrationAccountData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
