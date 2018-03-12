// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RecoveryPointTierInformationData : RecoveryPointTierInformationProtocol {
    public var type: RecoveryPointTierTypeEnum?
    public var status: RecoveryPointTierStatusEnum?

        enum CodingKeys: String, CodingKey {case type = "type"
        case status = "status"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.type) {
        self.type = try container.decode(RecoveryPointTierTypeEnum?.self, forKey: .type)
    }
    if container.contains(.status) {
        self.status = try container.decode(RecoveryPointTierStatusEnum?.self, forKey: .status)
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
    if self.type != nil {try container.encode(self.type, forKey: .type)}
    if self.status != nil {try container.encode(self.status, forKey: .status)}
  }
}

extension DataFactory {
  public static func createRecoveryPointTierInformationProtocol() -> RecoveryPointTierInformationProtocol {
    return RecoveryPointTierInformationData()
  }
}