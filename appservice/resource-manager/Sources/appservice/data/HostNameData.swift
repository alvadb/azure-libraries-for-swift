// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct HostNameData : HostNameProtocol {
    public var name: String?
    public var siteNames: [String]?
    public var azureResourceName: String?
    public var azureResourceType: AzureResourceTypeEnum?
    public var customHostNameDnsRecordType: CustomHostNameDnsRecordTypeEnum?
    public var hostNameType: HostNameTypeEnum?

        enum CodingKeys: String, CodingKey {case name = "name"
        case siteNames = "siteNames"
        case azureResourceName = "azureResourceName"
        case azureResourceType = "azureResourceType"
        case customHostNameDnsRecordType = "customHostNameDnsRecordType"
        case hostNameType = "hostNameType"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.siteNames) {
        self.siteNames = try container.decode([String]?.self, forKey: .siteNames)
    }
    if container.contains(.azureResourceName) {
        self.azureResourceName = try container.decode(String?.self, forKey: .azureResourceName)
    }
    if container.contains(.azureResourceType) {
        self.azureResourceType = try container.decode(AzureResourceTypeEnum?.self, forKey: .azureResourceType)
    }
    if container.contains(.customHostNameDnsRecordType) {
        self.customHostNameDnsRecordType = try container.decode(CustomHostNameDnsRecordTypeEnum?.self, forKey: .customHostNameDnsRecordType)
    }
    if container.contains(.hostNameType) {
        self.hostNameType = try container.decode(HostNameTypeEnum?.self, forKey: .hostNameType)
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
    if self.name != nil {try container.encode(self.name, forKey: .name)}
    if self.siteNames != nil {try container.encode(self.siteNames as! [String]?, forKey: .siteNames)}
    if self.azureResourceName != nil {try container.encode(self.azureResourceName, forKey: .azureResourceName)}
    if self.azureResourceType != nil {try container.encode(self.azureResourceType, forKey: .azureResourceType)}
    if self.customHostNameDnsRecordType != nil {try container.encode(self.customHostNameDnsRecordType, forKey: .customHostNameDnsRecordType)}
    if self.hostNameType != nil {try container.encode(self.hostNameType, forKey: .hostNameType)}
  }
}

extension DataFactory {
  public static func createHostNameProtocol() -> HostNameProtocol {
    return HostNameData()
  }
}