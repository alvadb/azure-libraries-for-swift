import Foundation
import azureSwiftRuntime
public protocol ContainerLease  {
    var headerParameters: [String: String] { get set }
    var accountName : String { get set }
    var container : String { get set }
    var timeout : Int32? { get set }
    var comp : String { get set }
    var restype : String { get set }
    var leaseId : String?  { get set }
    var action : String?  { get set }
    var breakPeriod : String?  { get set }
    var duration : String?  { get set }
    var proposedLeaseId : String?  { get set }
    var ifModifiedSince : String?  { get set }
    var ifUnmodifiedSince : String?  { get set }
    var version : String?  { get set }
    var requestId : String?  { get set }
    func execute(client: RuntimeClient,
        completionHandler: @escaping (Error?) -> Void) -> Void;
}

extension Commands.Container {
// Lease establishes and manages a lock on a container for delete operations. The lock duration can be 15 to 60
// seconds, or can be infinite
internal class LeaseCommand : BaseCommand, ContainerLease {
    public var accountName : String
    public var container : String
    public var timeout : Int32?
    public var comp : String
    public var restype : String

    public var leaseId : String? {
        set {
            if newValue != nil {
                headerParameters["x-ms-lease-id"] = newValue!
            }else {
                headerParameters["x-ms-lease-id"] = nil
            }
        }
        get {
            if headerParameters.contains(where: { $0.key == "x-ms-lease-id" }) {
                return headerParameters["x-ms-lease-id"]
            }else {
                return nil
            }
        }
    }

    public var action : String? {
        set {
            if newValue != nil {
                headerParameters["x-ms-lease-action"] = newValue!
            }else {
                headerParameters["x-ms-lease-action"] = nil
            }
        }
        get {
            if headerParameters.contains(where: { $0.key == "x-ms-lease-action" }) {
                return headerParameters["x-ms-lease-action"]
            }else {
                return nil
            }
        }
    }

    public var breakPeriod : String? {
        set {
            if newValue != nil {
                headerParameters["x-ms-lease-break-period"] = newValue!
            }else {
                headerParameters["x-ms-lease-break-period"] = nil
            }
        }
        get {
            if headerParameters.contains(where: { $0.key == "x-ms-lease-break-period" }) {
                return headerParameters["x-ms-lease-break-period"]
            }else {
                return nil
            }
        }
    }

    public var duration : String? {
        set {
            if newValue != nil {
                headerParameters["x-ms-lease-duration"] = newValue!
            }else {
                headerParameters["x-ms-lease-duration"] = nil
            }
        }
        get {
            if headerParameters.contains(where: { $0.key == "x-ms-lease-duration" }) {
                return headerParameters["x-ms-lease-duration"]
            }else {
                return nil
            }
        }
    }

    public var proposedLeaseId : String? {
        set {
            if newValue != nil {
                headerParameters["x-ms-proposed-lease-id"] = newValue!
            }else {
                headerParameters["x-ms-proposed-lease-id"] = nil
            }
        }
        get {
            if headerParameters.contains(where: { $0.key == "x-ms-proposed-lease-id" }) {
                return headerParameters["x-ms-proposed-lease-id"]
            }else {
                return nil
            }
        }
    }

    public var ifModifiedSince : String? {
        set {
            if newValue != nil {
                headerParameters["If-Modified-Since"] = newValue!
            }else {
                headerParameters["If-Modified-Since"] = nil
            }
        }
        get {
            if headerParameters.contains(where: { $0.key == "If-Modified-Since" }) {
                return headerParameters["If-Modified-Since"]
            }else {
                return nil
            }
        }
    }

    public var ifUnmodifiedSince : String? {
        set {
            if newValue != nil {
                headerParameters["If-Unmodified-Since"] = newValue!
            }else {
                headerParameters["If-Unmodified-Since"] = nil
            }
        }
        get {
            if headerParameters.contains(where: { $0.key == "If-Unmodified-Since" }) {
                return headerParameters["If-Unmodified-Since"]
            }else {
                return nil
            }
        }
    }

    public var version : String? {
        set {
            if newValue != nil {
                headerParameters["x-ms-version"] = newValue!
            }else {
                headerParameters["x-ms-version"] = nil
            }
        }
        get {
            if headerParameters.contains(where: { $0.key == "x-ms-version" }) {
                return headerParameters["x-ms-version"]
            }else {
                return nil
            }
        }
    }

    public var requestId : String? {
        set {
            if newValue != nil {
                headerParameters["x-ms-client-request-id"] = newValue!
            }else {
                headerParameters["x-ms-client-request-id"] = nil
            }
        }
        get {
            if headerParameters.contains(where: { $0.key == "x-ms-client-request-id" }) {
                return headerParameters["x-ms-client-request-id"]
            }else {
                return nil
            }
        }
    }

    public init(accountName: String, container: String, comp: String, restype: String) {
        self.accountName = accountName
        self.container = container
        self.comp = comp
        self.restype = restype
        super.init()
        self.baseUrl = "https://{accountName}.blob.core.windows.net"
        self.method = "Put"
        self.isLongRunningOperation = false
        self.path = "/{container}"
        self.headerParameters = ["Content-Type":"application/xml; charset=utf-8"]
    }

    public override func preCall()  {
        self.pathParameters["{accountName}"] = String(describing: self.accountName)
        self.pathParameters["{container}"] = String(describing: self.container)
        if self.timeout != nil { queryParameters["{timeout}"] = String(describing: self.timeout!) }
        self.queryParameters["{comp}"] = String(describing: self.comp)
        self.queryParameters["{restype}"] = String(describing: self.restype)
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
