// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AvailabilitySetPropertiesData : AvailabilitySetPropertiesProtocol {
    public var platformUpdateDomainCount: Int32?
    public var platformFaultDomainCount: Int32?
    public var virtualMachines: [SubResourceProtocol?]?
    public var statuses: [InstanceViewStatusProtocol?]?

        enum CodingKeys: String, CodingKey {case platformUpdateDomainCount = "platformUpdateDomainCount"
        case platformFaultDomainCount = "platformFaultDomainCount"
        case virtualMachines = "virtualMachines"
        case statuses = "statuses"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.platformUpdateDomainCount) {
        self.platformUpdateDomainCount = try container.decode(Int32?.self, forKey: .platformUpdateDomainCount)
    }
    if container.contains(.platformFaultDomainCount) {
        self.platformFaultDomainCount = try container.decode(Int32?.self, forKey: .platformFaultDomainCount)
    }
    if container.contains(.virtualMachines) {
        self.virtualMachines = try container.decode([SubResourceData?]?.self, forKey: .virtualMachines)
    }
    if container.contains(.statuses) {
        self.statuses = try container.decode([InstanceViewStatusData?]?.self, forKey: .statuses)
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
    if self.platformUpdateDomainCount != nil {try container.encode(self.platformUpdateDomainCount, forKey: .platformUpdateDomainCount)}
    if self.platformFaultDomainCount != nil {try container.encode(self.platformFaultDomainCount, forKey: .platformFaultDomainCount)}
    if self.virtualMachines != nil {try container.encode(self.virtualMachines as! [SubResourceData?]?, forKey: .virtualMachines)}
    if self.statuses != nil {try container.encode(self.statuses as! [InstanceViewStatusData?]?, forKey: .statuses)}
  }
}

extension DataFactory {
  public static func createAvailabilitySetPropertiesProtocol() -> AvailabilitySetPropertiesProtocol {
    return AvailabilitySetPropertiesData()
  }
}