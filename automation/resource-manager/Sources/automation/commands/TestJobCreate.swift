import Foundation
import azureSwiftRuntime
public protocol TestJobCreate  {
    var headerParameters: [String: String] { get set }
    var subscriptionId : String { get set }
    var resourceGroupName : String { get set }
    var automationAccountName : String { get set }
    var runbookName : String { get set }
    var apiVersion : String { get set }
    var parameters :  TestJobCreateParametersProtocol?  { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (TestJobProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.TestJob {
// Create create a test job of the runbook.
    internal class CreateCommand : BaseCommand, TestJobCreate {
        public var subscriptionId : String
        public var resourceGroupName : String
        public var automationAccountName : String
        public var runbookName : String
        public var apiVersion = "2015-10-31"
    public var parameters :  TestJobCreateParametersProtocol?

        public init(subscriptionId: String, resourceGroupName: String, automationAccountName: String, runbookName: String, parameters: TestJobCreateParametersProtocol) {
            self.subscriptionId = subscriptionId
            self.resourceGroupName = resourceGroupName
            self.automationAccountName = automationAccountName
            self.runbookName = runbookName
            self.parameters = parameters
            super.init()
            self.method = "Put"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/runbooks/{runbookName}/draft/testJob"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{automationAccountName}"] = String(describing: self.automationAccountName)
            self.pathParameters["{runbookName}"] = String(describing: self.runbookName)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)
            self.body = parameters

        }
        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let encodedValue = try encoder.encode(parameters as? TestJobCreateParametersData)
                return encodedValue
            }
            throw DecodeError.unknownMimeType
        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(TestJobData?.self, from: data)
                return result;
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (TestJobProtocol?, Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (result: TestJobData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
