import Foundation
import azureSwiftRuntime
public protocol ObjectsGetObjectsByObjectIdsNext  {
    var nextLink: String? { get }
    var hasAdditionalPages : Bool { get }
    var headerParameters: [String: String] { get set }
    var _nextLink : String { get set }
    var tenantID : String { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (GetObjectsResultProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.Objects {
// GetObjectsByObjectIdsNext gets AD group membership for the specified AD object IDs.
    internal class GetObjectsByObjectIdsNextCommand : BaseCommand, ObjectsGetObjectsByObjectIdsNext {
        var nextLink: String?
        public var hasAdditionalPages : Bool {
        get {
            return nextLink != nil
        }
    }
        public var _nextLink : String
        public var tenantID : String
        public var apiVersion = "1.6"

        public init(_nextLink: String, tenantID: String) {
            self._nextLink = _nextLink
            self.tenantID = tenantID
            super.init()
            self.method = "Post"
            self.isLongRunningOperation = false
            self.path = "/{tenantID}/{nextLink}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{nextLink}"] = String(describing: self._nextLink)
            self.pathParameters["{tenantID}"] = String(describing: self.tenantID)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)

        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                if var pageDecoder = decoder as? PageDecoder {
                    pageDecoder.isPagedData = true
                    pageDecoder.nextLinkName = "OdatanextLink"
                }
                let result = try decoder.decode(GetObjectsResultData?.self, from: data)
                if var pageDecoder = decoder as? PageDecoder {
                    self.nextLink = pageDecoder.nextLink
                }
                return result;
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (GetObjectsResultProtocol?, Error?) -> Void) -> Void {
            if self.nextLink != nil {
                self.path = nextLink!
                self.nextLink = nil;
                self.pathType = .absolute
            }
            client.executeAsync(command: self) {
                (result: GetObjectsResultData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
