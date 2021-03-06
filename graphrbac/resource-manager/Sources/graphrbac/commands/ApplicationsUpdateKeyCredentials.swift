import Foundation
import azureSwiftRuntime
public protocol ApplicationsUpdateKeyCredentials  {
    var headerParameters: [String: String] { get set }
    var applicationObjectId : String { get set }
    var tenantID : String { get set }
    var apiVersion : String { get set }
    var parameters :  KeyCredentialsUpdateParametersProtocol?  { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (Error?) -> Void) -> Void;
}

extension Commands.Applications {
// UpdateKeyCredentials update the keyCredentials associated with an application.
    internal class UpdateKeyCredentialsCommand : BaseCommand, ApplicationsUpdateKeyCredentials {
        public var applicationObjectId : String
        public var tenantID : String
        public var apiVersion = "1.6"
    public var parameters :  KeyCredentialsUpdateParametersProtocol?

        public init(applicationObjectId: String, tenantID: String, parameters: KeyCredentialsUpdateParametersProtocol) {
            self.applicationObjectId = applicationObjectId
            self.tenantID = tenantID
            self.parameters = parameters
            super.init()
            self.method = "Patch"
            self.isLongRunningOperation = false
            self.path = "/{tenantID}/applications/{applicationObjectId}/keyCredentials"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{applicationObjectId}"] = String(describing: self.applicationObjectId)
            self.pathParameters["{tenantID}"] = String(describing: self.tenantID)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)
            self.body = parameters

        }
        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let encodedValue = try encoder.encode(parameters as? KeyCredentialsUpdateParametersData)
                return encodedValue
            }
            throw DecodeError.unknownMimeType
        }

        public func execute(client: RuntimeClient,
            completionHandler: @escaping (Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (error) in
                completionHandler(error)
            }
        }
    }
}
