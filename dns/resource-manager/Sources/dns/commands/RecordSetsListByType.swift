import Foundation
import azureSwiftRuntime
public protocol RecordSetsListByType  {
    var nextLink: String? { get }
    var hasAdditionalPages : Bool { get }
    var headerParameters: [String: String] { get set }
    var resourceGroupName : String { get set }
    var zoneName : String { get set }
    var recordType : RecordTypeEnum { get set }
    var subscriptionId : String { get set }
    var top : Int32? { get set }
    var recordsetnamesuffix : String? { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (RecordSetListResultProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.RecordSets {
// ListByType lists the record sets of a specified type in a DNS zone.
    internal class ListByTypeCommand : BaseCommand, RecordSetsListByType {
        var nextLink: String?
        public var hasAdditionalPages : Bool {
        get {
            return nextLink != nil
        }
    }
        public var resourceGroupName : String
        public var zoneName : String
        public var recordType : RecordTypeEnum
        public var subscriptionId : String
        public var top : Int32?
        public var recordsetnamesuffix : String?
        public var apiVersion = "2017-10-01"

        public init(resourceGroupName: String, zoneName: String, recordType: RecordTypeEnum, subscriptionId: String) {
            self.resourceGroupName = resourceGroupName
            self.zoneName = zoneName
            self.recordType = recordType
            self.subscriptionId = subscriptionId
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/dnsZones/{zoneName}/{recordType}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{zoneName}"] = String(describing: self.zoneName)
            self.pathParameters["{recordType}"] = String(describing: self.recordType)
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            if self.top != nil { queryParameters["$top"] = String(describing: self.top!) }
            if self.recordsetnamesuffix != nil { queryParameters["$recordsetnamesuffix"] = String(describing: self.recordsetnamesuffix!) }
            self.queryParameters["api-version"] = String(describing: self.apiVersion)

        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                if var pageDecoder = decoder as? PageDecoder {
                    pageDecoder.isPagedData = true
                    pageDecoder.nextLinkName = "NextLink"
                }
                let result = try decoder.decode(RecordSetListResultData?.self, from: data)
                if var pageDecoder = decoder as? PageDecoder {
                    self.nextLink = pageDecoder.nextLink
                }
                return result;
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (RecordSetListResultProtocol?, Error?) -> Void) -> Void {
            if self.nextLink != nil {
                self.path = nextLink!
                self.nextLink = nil;
                self.pathType = .absolute
            }
            client.executeAsync(command: self) {
                (result: RecordSetListResultData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
