// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RampUpRuleData : RampUpRuleProtocol {
    public var actionHostName: String?
    public var reroutePercentage: Double?
    public var changeStep: Double?
    public var changeIntervalInMinutes: Int32?
    public var minReroutePercentage: Double?
    public var maxReroutePercentage: Double?
    public var changeDecisionCallbackUrl: String?
    public var name: String?

        enum CodingKeys: String, CodingKey {case actionHostName = "actionHostName"
        case reroutePercentage = "reroutePercentage"
        case changeStep = "changeStep"
        case changeIntervalInMinutes = "changeIntervalInMinutes"
        case minReroutePercentage = "minReroutePercentage"
        case maxReroutePercentage = "maxReroutePercentage"
        case changeDecisionCallbackUrl = "changeDecisionCallbackUrl"
        case name = "name"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.actionHostName) {
        self.actionHostName = try container.decode(String?.self, forKey: .actionHostName)
    }
    if container.contains(.reroutePercentage) {
        self.reroutePercentage = try container.decode(Double?.self, forKey: .reroutePercentage)
    }
    if container.contains(.changeStep) {
        self.changeStep = try container.decode(Double?.self, forKey: .changeStep)
    }
    if container.contains(.changeIntervalInMinutes) {
        self.changeIntervalInMinutes = try container.decode(Int32?.self, forKey: .changeIntervalInMinutes)
    }
    if container.contains(.minReroutePercentage) {
        self.minReroutePercentage = try container.decode(Double?.self, forKey: .minReroutePercentage)
    }
    if container.contains(.maxReroutePercentage) {
        self.maxReroutePercentage = try container.decode(Double?.self, forKey: .maxReroutePercentage)
    }
    if container.contains(.changeDecisionCallbackUrl) {
        self.changeDecisionCallbackUrl = try container.decode(String?.self, forKey: .changeDecisionCallbackUrl)
    }
    if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
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
    if self.actionHostName != nil {try container.encode(self.actionHostName, forKey: .actionHostName)}
    if self.reroutePercentage != nil {try container.encode(self.reroutePercentage, forKey: .reroutePercentage)}
    if self.changeStep != nil {try container.encode(self.changeStep, forKey: .changeStep)}
    if self.changeIntervalInMinutes != nil {try container.encode(self.changeIntervalInMinutes, forKey: .changeIntervalInMinutes)}
    if self.minReroutePercentage != nil {try container.encode(self.minReroutePercentage, forKey: .minReroutePercentage)}
    if self.maxReroutePercentage != nil {try container.encode(self.maxReroutePercentage, forKey: .maxReroutePercentage)}
    if self.changeDecisionCallbackUrl != nil {try container.encode(self.changeDecisionCallbackUrl, forKey: .changeDecisionCallbackUrl)}
    if self.name != nil {try container.encode(self.name, forKey: .name)}
  }
}

extension DataFactory {
  public static func createRampUpRuleProtocol() -> RampUpRuleProtocol {
    return RampUpRuleData()
  }
}
