import Foundation
import azureSwiftRuntime
public protocol ApplicationsList  {
    var nextLink: String? { get }
    var hasAdditionalPages : Bool { get }
    var headerParameters: [String: String] { get set }
    var tenantID : String { get set }
    var filter : String? { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (ApplicationListResultProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.Applications {
// List lists applications by filter parameters.
    internal class ListCommand : BaseCommand, ApplicationsList {
        var nextLink: String?
        public var hasAdditionalPages : Bool {
        get {
            return nextLink != nil
        }
    }
        public var tenantID : String
        public var filter : String?
        public var apiVersion = "1.6"

        public init(tenantID: String) {
            self.tenantID = tenantID
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/{tenantID}/applications"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{tenantID}"] = String(describing: self.tenantID)
            if self.filter != nil { queryParameters["$filter"] = String(describing: self.filter!) }
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
                let result = try decoder.decode(ApplicationListResultData?.self, from: data)
                if var pageDecoder = decoder as? PageDecoder {
                    self.nextLink = pageDecoder.nextLink
                }
                return result;
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (ApplicationListResultProtocol?, Error?) -> Void) -> Void {
            if self.nextLink != nil {
                self.path = nextLink!
                self.nextLink = nil;
                self.pathType = .absolute
            }
            client.executeAsync(command: self) {
                (result: ApplicationListResultData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
