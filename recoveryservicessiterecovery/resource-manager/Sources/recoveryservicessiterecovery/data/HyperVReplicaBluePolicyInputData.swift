// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct HyperVReplicaBluePolicyInputData : HyperVReplicaBluePolicyInputProtocol, PolicyProviderSpecificInputProtocol {
    public var replicationFrequencyInSeconds: Int32?
    public var recoveryPoints: Int32?
    public var applicationConsistentSnapshotFrequencyInHours: Int32?
    public var compression: String?
    public var initialReplicationMethod: String?
    public var onlineReplicationStartTime: String?
    public var offlineReplicationImportPath: String?
    public var offlineReplicationExportPath: String?
    public var replicationPort: Int32?
    public var allowedAuthenticationType: Int32?
    public var replicaDeletion: String?

        enum CodingKeys: String, CodingKey {case replicationFrequencyInSeconds = "replicationFrequencyInSeconds"
        case recoveryPoints = "recoveryPoints"
        case applicationConsistentSnapshotFrequencyInHours = "applicationConsistentSnapshotFrequencyInHours"
        case compression = "compression"
        case initialReplicationMethod = "initialReplicationMethod"
        case onlineReplicationStartTime = "onlineReplicationStartTime"
        case offlineReplicationImportPath = "offlineReplicationImportPath"
        case offlineReplicationExportPath = "offlineReplicationExportPath"
        case replicationPort = "replicationPort"
        case allowedAuthenticationType = "allowedAuthenticationType"
        case replicaDeletion = "replicaDeletion"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.replicationFrequencyInSeconds) {
        self.replicationFrequencyInSeconds = try container.decode(Int32?.self, forKey: .replicationFrequencyInSeconds)
    }
    if container.contains(.recoveryPoints) {
        self.recoveryPoints = try container.decode(Int32?.self, forKey: .recoveryPoints)
    }
    if container.contains(.applicationConsistentSnapshotFrequencyInHours) {
        self.applicationConsistentSnapshotFrequencyInHours = try container.decode(Int32?.self, forKey: .applicationConsistentSnapshotFrequencyInHours)
    }
    if container.contains(.compression) {
        self.compression = try container.decode(String?.self, forKey: .compression)
    }
    if container.contains(.initialReplicationMethod) {
        self.initialReplicationMethod = try container.decode(String?.self, forKey: .initialReplicationMethod)
    }
    if container.contains(.onlineReplicationStartTime) {
        self.onlineReplicationStartTime = try container.decode(String?.self, forKey: .onlineReplicationStartTime)
    }
    if container.contains(.offlineReplicationImportPath) {
        self.offlineReplicationImportPath = try container.decode(String?.self, forKey: .offlineReplicationImportPath)
    }
    if container.contains(.offlineReplicationExportPath) {
        self.offlineReplicationExportPath = try container.decode(String?.self, forKey: .offlineReplicationExportPath)
    }
    if container.contains(.replicationPort) {
        self.replicationPort = try container.decode(Int32?.self, forKey: .replicationPort)
    }
    if container.contains(.allowedAuthenticationType) {
        self.allowedAuthenticationType = try container.decode(Int32?.self, forKey: .allowedAuthenticationType)
    }
    if container.contains(.replicaDeletion) {
        self.replicaDeletion = try container.decode(String?.self, forKey: .replicaDeletion)
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
    if self.replicationFrequencyInSeconds != nil {try container.encode(self.replicationFrequencyInSeconds, forKey: .replicationFrequencyInSeconds)}
    if self.recoveryPoints != nil {try container.encode(self.recoveryPoints, forKey: .recoveryPoints)}
    if self.applicationConsistentSnapshotFrequencyInHours != nil {try container.encode(self.applicationConsistentSnapshotFrequencyInHours, forKey: .applicationConsistentSnapshotFrequencyInHours)}
    if self.compression != nil {try container.encode(self.compression, forKey: .compression)}
    if self.initialReplicationMethod != nil {try container.encode(self.initialReplicationMethod, forKey: .initialReplicationMethod)}
    if self.onlineReplicationStartTime != nil {try container.encode(self.onlineReplicationStartTime, forKey: .onlineReplicationStartTime)}
    if self.offlineReplicationImportPath != nil {try container.encode(self.offlineReplicationImportPath, forKey: .offlineReplicationImportPath)}
    if self.offlineReplicationExportPath != nil {try container.encode(self.offlineReplicationExportPath, forKey: .offlineReplicationExportPath)}
    if self.replicationPort != nil {try container.encode(self.replicationPort, forKey: .replicationPort)}
    if self.allowedAuthenticationType != nil {try container.encode(self.allowedAuthenticationType, forKey: .allowedAuthenticationType)}
    if self.replicaDeletion != nil {try container.encode(self.replicaDeletion, forKey: .replicaDeletion)}
  }
}

extension DataFactory {
  public static func createHyperVReplicaBluePolicyInputProtocol() -> HyperVReplicaBluePolicyInputProtocol {
    return HyperVReplicaBluePolicyInputData()
  }
}
