// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ClusterUpgradeDeltaHealthPolicyData : ClusterUpgradeDeltaHealthPolicyProtocol {
    public var maxPercentDeltaUnhealthyNodes: Int32
    public var maxPercentUpgradeDomainDeltaUnhealthyNodes: Int32
    public var maxPercentDeltaUnhealthyApplications: Int32

        enum CodingKeys: String, CodingKey {case maxPercentDeltaUnhealthyNodes = "maxPercentDeltaUnhealthyNodes"
        case maxPercentUpgradeDomainDeltaUnhealthyNodes = "maxPercentUpgradeDomainDeltaUnhealthyNodes"
        case maxPercentDeltaUnhealthyApplications = "maxPercentDeltaUnhealthyApplications"
        }

  public init(maxPercentDeltaUnhealthyNodes: Int32, maxPercentUpgradeDomainDeltaUnhealthyNodes: Int32, maxPercentDeltaUnhealthyApplications: Int32)  {
    self.maxPercentDeltaUnhealthyNodes = maxPercentDeltaUnhealthyNodes
    self.maxPercentUpgradeDomainDeltaUnhealthyNodes = maxPercentUpgradeDomainDeltaUnhealthyNodes
    self.maxPercentDeltaUnhealthyApplications = maxPercentDeltaUnhealthyApplications
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.maxPercentDeltaUnhealthyNodes = try container.decode(Int32.self, forKey: .maxPercentDeltaUnhealthyNodes)
    self.maxPercentUpgradeDomainDeltaUnhealthyNodes = try container.decode(Int32.self, forKey: .maxPercentUpgradeDomainDeltaUnhealthyNodes)
    self.maxPercentDeltaUnhealthyApplications = try container.decode(Int32.self, forKey: .maxPercentDeltaUnhealthyApplications)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.maxPercentDeltaUnhealthyNodes, forKey: .maxPercentDeltaUnhealthyNodes)
    try container.encode(self.maxPercentUpgradeDomainDeltaUnhealthyNodes, forKey: .maxPercentUpgradeDomainDeltaUnhealthyNodes)
    try container.encode(self.maxPercentDeltaUnhealthyApplications, forKey: .maxPercentDeltaUnhealthyApplications)
  }
}

extension DataFactory {
  public static func createClusterUpgradeDeltaHealthPolicyProtocol(maxPercentDeltaUnhealthyNodes: Int32, maxPercentUpgradeDomainDeltaUnhealthyNodes: Int32, maxPercentDeltaUnhealthyApplications: Int32) -> ClusterUpgradeDeltaHealthPolicyProtocol {
    return ClusterUpgradeDeltaHealthPolicyData(maxPercentDeltaUnhealthyNodes: maxPercentDeltaUnhealthyNodes, maxPercentUpgradeDomainDeltaUnhealthyNodes: maxPercentUpgradeDomainDeltaUnhealthyNodes, maxPercentDeltaUnhealthyApplications: maxPercentDeltaUnhealthyApplications)
  }
}
