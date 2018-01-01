import Foundation
import azureSwiftRuntime
public protocol OperationsList  {
    var headerParameters: [String: String] { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
        completionHandler: @escaping (OperationListResultProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.Operations {
// List lists all of the available Storage Rest API operations.
internal class ListCommand : BaseCommand, OperationsList {
    public var apiVersion : String = "2017-06-01"

    public init(apiVersion: String) {
        self.apiVersion = apiVersion
        super.init()
        self.method = "Get"
        self.isLongRunningOperation = false
        self.path = "/providers/Microsoft.Storage/operations"
        self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
    }

    public override func preCall()  {
        self.queryParameters["{api-version}"] = String(describing: self.apiVersion)
}


    public override func returnFunc(data: Data) throws -> Decodable? {
        let contentType = "application/json"
        if let mimeType = MimeType.getType(forStr: contentType) {
            let decoder = try CoderFactory.decoder(for: mimeType)
            return try decoder.decode(OperationListResultData?.self, from: data)
        }
        throw DecodeError.unknownMimeType
    }
    public func execute(client: RuntimeClient,
        completionHandler: @escaping (OperationListResultProtocol?, Error?) -> Void) -> Void {
        client.executeAsync(command: self) {
            (result: OperationListResultData?, error: Error?) in
            completionHandler(result, error)
        }
    }
}
}
