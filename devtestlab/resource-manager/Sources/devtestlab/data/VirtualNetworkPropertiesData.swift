// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VirtualNetworkPropertiesData : VirtualNetworkPropertiesProtocol {
    public var allowedSubnets: [SubnetProtocol?]?
    public var description: String?
    public var externalProviderResourceId: String?
    public var externalSubnets: [ExternalSubnetProtocol?]?
    public var subnetOverrides: [SubnetOverrideProtocol?]?
    public var createdDate: Date?
    public var provisioningState: String?
    public var uniqueIdentifier: String?

        enum CodingKeys: String, CodingKey {case allowedSubnets = "allowedSubnets"
        case description = "description"
        case externalProviderResourceId = "externalProviderResourceId"
        case externalSubnets = "externalSubnets"
        case subnetOverrides = "subnetOverrides"
        case createdDate = "createdDate"
        case provisioningState = "provisioningState"
        case uniqueIdentifier = "uniqueIdentifier"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.allowedSubnets) {
        self.allowedSubnets = try container.decode([SubnetData?]?.self, forKey: .allowedSubnets)
    }
    if container.contains(.description) {
        self.description = try container.decode(String?.self, forKey: .description)
    }
    if container.contains(.externalProviderResourceId) {
        self.externalProviderResourceId = try container.decode(String?.self, forKey: .externalProviderResourceId)
    }
    if container.contains(.externalSubnets) {
        self.externalSubnets = try container.decode([ExternalSubnetData?]?.self, forKey: .externalSubnets)
    }
    if container.contains(.subnetOverrides) {
        self.subnetOverrides = try container.decode([SubnetOverrideData?]?.self, forKey: .subnetOverrides)
    }
    if container.contains(.createdDate) {
        self.createdDate = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .createdDate)), format: .dateTime)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(String?.self, forKey: .provisioningState)
    }
    if container.contains(.uniqueIdentifier) {
        self.uniqueIdentifier = try container.decode(String?.self, forKey: .uniqueIdentifier)
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
    if self.allowedSubnets != nil {try container.encode(self.allowedSubnets as! [SubnetData?]?, forKey: .allowedSubnets)}
    if self.description != nil {try container.encode(self.description, forKey: .description)}
    if self.externalProviderResourceId != nil {try container.encode(self.externalProviderResourceId, forKey: .externalProviderResourceId)}
    if self.externalSubnets != nil {try container.encode(self.externalSubnets as! [ExternalSubnetData?]?, forKey: .externalSubnets)}
    if self.subnetOverrides != nil {try container.encode(self.subnetOverrides as! [SubnetOverrideData?]?, forKey: .subnetOverrides)}
    if self.createdDate != nil {
        try container.encode(DateConverter.toString(date: self.createdDate!, format: .dateTime), forKey: .createdDate)
    }
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
    if self.uniqueIdentifier != nil {try container.encode(self.uniqueIdentifier, forKey: .uniqueIdentifier)}
  }
}

extension DataFactory {
  public static func createVirtualNetworkPropertiesProtocol() -> VirtualNetworkPropertiesProtocol {
    return VirtualNetworkPropertiesData()
  }
}
