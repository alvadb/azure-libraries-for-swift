// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct MSDeployStatusPropertiesData : MSDeployStatusPropertiesProtocol {
    public var deployer: String?
    public var provisioningState: MSDeployProvisioningStateEnum?
    public var startTime: Date?
    public var endTime: Date?
    public var complete: Bool?

        enum CodingKeys: String, CodingKey {case deployer = "deployer"
        case provisioningState = "provisioningState"
        case startTime = "startTime"
        case endTime = "endTime"
        case complete = "complete"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.deployer) {
        self.deployer = try container.decode(String?.self, forKey: .deployer)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(MSDeployProvisioningStateEnum?.self, forKey: .provisioningState)
    }
    if container.contains(.startTime) {
        self.startTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .startTime)), format: .dateTime)
    }
    if container.contains(.endTime) {
        self.endTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .endTime)), format: .dateTime)
    }
    if container.contains(.complete) {
        self.complete = try container.decode(Bool?.self, forKey: .complete)
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
    if self.deployer != nil {try container.encode(self.deployer, forKey: .deployer)}
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
    if self.startTime != nil {
        try container.encode(DateConverter.toString(date: self.startTime!, format: .dateTime), forKey: .startTime)
    }
    if self.endTime != nil {
        try container.encode(DateConverter.toString(date: self.endTime!, format: .dateTime), forKey: .endTime)
    }
    if self.complete != nil {try container.encode(self.complete, forKey: .complete)}
  }
}

extension DataFactory {
  public static func createMSDeployStatusPropertiesProtocol() -> MSDeployStatusPropertiesProtocol {
    return MSDeployStatusPropertiesData()
  }
}
