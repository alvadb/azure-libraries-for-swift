// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct UpdateFirewallRuleWithAccountParametersData : UpdateFirewallRuleWithAccountParametersProtocol {
    public var name: String
    public var properties: UpdateFirewallRulePropertiesProtocol?

        enum CodingKeys: String, CodingKey {case name = "name"
        case properties = "properties"
        }

  public init(name: String)  {
    self.name = name
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.name = try container.decode(String.self, forKey: .name)
    if container.contains(.properties) {
        self.properties = try container.decode(UpdateFirewallRulePropertiesData?.self, forKey: .properties)
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
    try container.encode(self.name, forKey: .name)
    if self.properties != nil {try container.encode(self.properties as! UpdateFirewallRulePropertiesData?, forKey: .properties)}
  }
}

extension DataFactory {
  public static func createUpdateFirewallRuleWithAccountParametersProtocol(name: String) -> UpdateFirewallRuleWithAccountParametersProtocol {
    return UpdateFirewallRuleWithAccountParametersData(name: name)
  }
}