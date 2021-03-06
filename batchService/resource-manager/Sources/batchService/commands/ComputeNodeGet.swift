import Foundation
import azureSwiftRuntime
public protocol ComputeNodeGet  {
    var headerParameters: [String: String] { get set }
    var poolId : String { get set }
    var nodeId : String { get set }
    var select : String? { get set }
    var timeout : Int32? { get set }
    var apiVersion : String { get set }
    var clientRequestId : String? { get set }
    var returnClientRequestId : Bool? { get set }
    var ocpDate : Date? { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (ComputeNodeProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.ComputeNode {
// Get sends the get request.
    internal class GetCommand : BaseCommand, ComputeNodeGet {
        public var poolId : String
        public var nodeId : String
        public var select : String?
        public var timeout : Int32?
        public var apiVersion = "2017-09-01.6.0"
        public var clientRequestId : String?
        public var returnClientRequestId : Bool?
        public var ocpDate : Date?

        public init(poolId: String, nodeId: String) {
            self.poolId = poolId
            self.nodeId = nodeId
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/pools/{poolId}/nodes/{nodeId}"
            self.headerParameters = ["Content-Type":"application/json; odata=minimalmetadata; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{poolId}"] = String(describing: self.poolId)
            self.pathParameters["{nodeId}"] = String(describing: self.nodeId)
            if self.select != nil { queryParameters["$select"] = String(describing: self.select!) }
            if self.timeout != nil { queryParameters["timeout"] = String(describing: self.timeout!) }
            self.queryParameters["api-version"] = String(describing: self.apiVersion)
            if self.clientRequestId != nil { headerParameters["client-request-id"] = String(describing: self.clientRequestId!) }
            if self.returnClientRequestId != nil { headerParameters["return-client-request-id"] = String(describing: self.returnClientRequestId!) }
            if self.ocpDate != nil { headerParameters["ocp-date"] = String(describing: self.ocpDate!) }

        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(ComputeNodeData?.self, from: data)
                return result;
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (ComputeNodeProtocol?, Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (result: ComputeNodeData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
