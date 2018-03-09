// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VMwareDetailsData : VMwareDetailsProtocol, FabricSpecificDetailsProtocol {
    public var processServers: [ProcessServerProtocol?]?
    public var masterTargetServers: [MasterTargetServerProtocol?]?
    public var runAsAccounts: [RunAsAccountProtocol?]?
    public var replicationPairCount: String?
    public var processServerCount: String?
    public var agentCount: String?
    public var protectedServers: String?
    public var systemLoad: String?
    public var systemLoadStatus: String?
    public var cpuLoad: String?
    public var cpuLoadStatus: String?
    public var totalMemoryInBytes: Int64?
    public var availableMemoryInBytes: Int64?
    public var memoryUsageStatus: String?
    public var totalSpaceInBytes: Int64?
    public var availableSpaceInBytes: Int64?
    public var spaceUsageStatus: String?
    public var webLoad: String?
    public var webLoadStatus: String?
    public var databaseServerLoad: String?
    public var databaseServerLoadStatus: String?
    public var csServiceStatus: String?
    public var ipAddress: String?
    public var agentVersion: String?
    public var hostName: String?
    public var lastHeartbeat: Date?
    public var versionStatus: String?
    public var sslCertExpiryDate: Date?
    public var sslCertExpiryRemainingDays: Int32?
    public var psTemplateVersion: String?
    public var agentExpiryDate: Date?
    public var agentVersionDetails: VersionDetailsProtocol?

        enum CodingKeys: String, CodingKey {case processServers = "processServers"
        case masterTargetServers = "masterTargetServers"
        case runAsAccounts = "runAsAccounts"
        case replicationPairCount = "replicationPairCount"
        case processServerCount = "processServerCount"
        case agentCount = "agentCount"
        case protectedServers = "protectedServers"
        case systemLoad = "systemLoad"
        case systemLoadStatus = "systemLoadStatus"
        case cpuLoad = "cpuLoad"
        case cpuLoadStatus = "cpuLoadStatus"
        case totalMemoryInBytes = "totalMemoryInBytes"
        case availableMemoryInBytes = "availableMemoryInBytes"
        case memoryUsageStatus = "memoryUsageStatus"
        case totalSpaceInBytes = "totalSpaceInBytes"
        case availableSpaceInBytes = "availableSpaceInBytes"
        case spaceUsageStatus = "spaceUsageStatus"
        case webLoad = "webLoad"
        case webLoadStatus = "webLoadStatus"
        case databaseServerLoad = "databaseServerLoad"
        case databaseServerLoadStatus = "databaseServerLoadStatus"
        case csServiceStatus = "csServiceStatus"
        case ipAddress = "ipAddress"
        case agentVersion = "agentVersion"
        case hostName = "hostName"
        case lastHeartbeat = "lastHeartbeat"
        case versionStatus = "versionStatus"
        case sslCertExpiryDate = "sslCertExpiryDate"
        case sslCertExpiryRemainingDays = "sslCertExpiryRemainingDays"
        case psTemplateVersion = "psTemplateVersion"
        case agentExpiryDate = "agentExpiryDate"
        case agentVersionDetails = "agentVersionDetails"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.processServers) {
        self.processServers = try container.decode([ProcessServerData?]?.self, forKey: .processServers)
    }
    if container.contains(.masterTargetServers) {
        self.masterTargetServers = try container.decode([MasterTargetServerData?]?.self, forKey: .masterTargetServers)
    }
    if container.contains(.runAsAccounts) {
        self.runAsAccounts = try container.decode([RunAsAccountData?]?.self, forKey: .runAsAccounts)
    }
    if container.contains(.replicationPairCount) {
        self.replicationPairCount = try container.decode(String?.self, forKey: .replicationPairCount)
    }
    if container.contains(.processServerCount) {
        self.processServerCount = try container.decode(String?.self, forKey: .processServerCount)
    }
    if container.contains(.agentCount) {
        self.agentCount = try container.decode(String?.self, forKey: .agentCount)
    }
    if container.contains(.protectedServers) {
        self.protectedServers = try container.decode(String?.self, forKey: .protectedServers)
    }
    if container.contains(.systemLoad) {
        self.systemLoad = try container.decode(String?.self, forKey: .systemLoad)
    }
    if container.contains(.systemLoadStatus) {
        self.systemLoadStatus = try container.decode(String?.self, forKey: .systemLoadStatus)
    }
    if container.contains(.cpuLoad) {
        self.cpuLoad = try container.decode(String?.self, forKey: .cpuLoad)
    }
    if container.contains(.cpuLoadStatus) {
        self.cpuLoadStatus = try container.decode(String?.self, forKey: .cpuLoadStatus)
    }
    if container.contains(.totalMemoryInBytes) {
        self.totalMemoryInBytes = try container.decode(Int64?.self, forKey: .totalMemoryInBytes)
    }
    if container.contains(.availableMemoryInBytes) {
        self.availableMemoryInBytes = try container.decode(Int64?.self, forKey: .availableMemoryInBytes)
    }
    if container.contains(.memoryUsageStatus) {
        self.memoryUsageStatus = try container.decode(String?.self, forKey: .memoryUsageStatus)
    }
    if container.contains(.totalSpaceInBytes) {
        self.totalSpaceInBytes = try container.decode(Int64?.self, forKey: .totalSpaceInBytes)
    }
    if container.contains(.availableSpaceInBytes) {
        self.availableSpaceInBytes = try container.decode(Int64?.self, forKey: .availableSpaceInBytes)
    }
    if container.contains(.spaceUsageStatus) {
        self.spaceUsageStatus = try container.decode(String?.self, forKey: .spaceUsageStatus)
    }
    if container.contains(.webLoad) {
        self.webLoad = try container.decode(String?.self, forKey: .webLoad)
    }
    if container.contains(.webLoadStatus) {
        self.webLoadStatus = try container.decode(String?.self, forKey: .webLoadStatus)
    }
    if container.contains(.databaseServerLoad) {
        self.databaseServerLoad = try container.decode(String?.self, forKey: .databaseServerLoad)
    }
    if container.contains(.databaseServerLoadStatus) {
        self.databaseServerLoadStatus = try container.decode(String?.self, forKey: .databaseServerLoadStatus)
    }
    if container.contains(.csServiceStatus) {
        self.csServiceStatus = try container.decode(String?.self, forKey: .csServiceStatus)
    }
    if container.contains(.ipAddress) {
        self.ipAddress = try container.decode(String?.self, forKey: .ipAddress)
    }
    if container.contains(.agentVersion) {
        self.agentVersion = try container.decode(String?.self, forKey: .agentVersion)
    }
    if container.contains(.hostName) {
        self.hostName = try container.decode(String?.self, forKey: .hostName)
    }
    if container.contains(.lastHeartbeat) {
        self.lastHeartbeat = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastHeartbeat)), format: .dateTime)
    }
    if container.contains(.versionStatus) {
        self.versionStatus = try container.decode(String?.self, forKey: .versionStatus)
    }
    if container.contains(.sslCertExpiryDate) {
        self.sslCertExpiryDate = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .sslCertExpiryDate)), format: .dateTime)
    }
    if container.contains(.sslCertExpiryRemainingDays) {
        self.sslCertExpiryRemainingDays = try container.decode(Int32?.self, forKey: .sslCertExpiryRemainingDays)
    }
    if container.contains(.psTemplateVersion) {
        self.psTemplateVersion = try container.decode(String?.self, forKey: .psTemplateVersion)
    }
    if container.contains(.agentExpiryDate) {
        self.agentExpiryDate = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .agentExpiryDate)), format: .dateTime)
    }
    if container.contains(.agentVersionDetails) {
        self.agentVersionDetails = try container.decode(VersionDetailsData?.self, forKey: .agentVersionDetails)
    }
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.processServers != nil {try container.encode(self.processServers as! [ProcessServerData?]?, forKey: .processServers)}
    if self.masterTargetServers != nil {try container.encode(self.masterTargetServers as! [MasterTargetServerData?]?, forKey: .masterTargetServers)}
    if self.runAsAccounts != nil {try container.encode(self.runAsAccounts as! [RunAsAccountData?]?, forKey: .runAsAccounts)}
    if self.replicationPairCount != nil {try container.encode(self.replicationPairCount, forKey: .replicationPairCount)}
    if self.processServerCount != nil {try container.encode(self.processServerCount, forKey: .processServerCount)}
    if self.agentCount != nil {try container.encode(self.agentCount, forKey: .agentCount)}
    if self.protectedServers != nil {try container.encode(self.protectedServers, forKey: .protectedServers)}
    if self.systemLoad != nil {try container.encode(self.systemLoad, forKey: .systemLoad)}
    if self.systemLoadStatus != nil {try container.encode(self.systemLoadStatus, forKey: .systemLoadStatus)}
    if self.cpuLoad != nil {try container.encode(self.cpuLoad, forKey: .cpuLoad)}
    if self.cpuLoadStatus != nil {try container.encode(self.cpuLoadStatus, forKey: .cpuLoadStatus)}
    if self.totalMemoryInBytes != nil {try container.encode(self.totalMemoryInBytes, forKey: .totalMemoryInBytes)}
    if self.availableMemoryInBytes != nil {try container.encode(self.availableMemoryInBytes, forKey: .availableMemoryInBytes)}
    if self.memoryUsageStatus != nil {try container.encode(self.memoryUsageStatus, forKey: .memoryUsageStatus)}
    if self.totalSpaceInBytes != nil {try container.encode(self.totalSpaceInBytes, forKey: .totalSpaceInBytes)}
    if self.availableSpaceInBytes != nil {try container.encode(self.availableSpaceInBytes, forKey: .availableSpaceInBytes)}
    if self.spaceUsageStatus != nil {try container.encode(self.spaceUsageStatus, forKey: .spaceUsageStatus)}
    if self.webLoad != nil {try container.encode(self.webLoad, forKey: .webLoad)}
    if self.webLoadStatus != nil {try container.encode(self.webLoadStatus, forKey: .webLoadStatus)}
    if self.databaseServerLoad != nil {try container.encode(self.databaseServerLoad, forKey: .databaseServerLoad)}
    if self.databaseServerLoadStatus != nil {try container.encode(self.databaseServerLoadStatus, forKey: .databaseServerLoadStatus)}
    if self.csServiceStatus != nil {try container.encode(self.csServiceStatus, forKey: .csServiceStatus)}
    if self.ipAddress != nil {try container.encode(self.ipAddress, forKey: .ipAddress)}
    if self.agentVersion != nil {try container.encode(self.agentVersion, forKey: .agentVersion)}
    if self.hostName != nil {try container.encode(self.hostName, forKey: .hostName)}
    if self.lastHeartbeat != nil {
        try container.encode(DateConverter.toString(date: self.lastHeartbeat!, format: .dateTime), forKey: .lastHeartbeat)
    }
    if self.versionStatus != nil {try container.encode(self.versionStatus, forKey: .versionStatus)}
    if self.sslCertExpiryDate != nil {
        try container.encode(DateConverter.toString(date: self.sslCertExpiryDate!, format: .dateTime), forKey: .sslCertExpiryDate)
    }
    if self.sslCertExpiryRemainingDays != nil {try container.encode(self.sslCertExpiryRemainingDays, forKey: .sslCertExpiryRemainingDays)}
    if self.psTemplateVersion != nil {try container.encode(self.psTemplateVersion, forKey: .psTemplateVersion)}
    if self.agentExpiryDate != nil {
        try container.encode(DateConverter.toString(date: self.agentExpiryDate!, format: .dateTime), forKey: .agentExpiryDate)
    }
    if self.agentVersionDetails != nil {try container.encode(self.agentVersionDetails as! VersionDetailsData?, forKey: .agentVersionDetails)}
  }
}

extension DataFactory {
  public static func createVMwareDetailsProtocol() -> VMwareDetailsProtocol {
    return VMwareDetailsData()
  }
}
