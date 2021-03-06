// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RecoveryPlanAutomationRunbookActionDetailsData : RecoveryPlanAutomationRunbookActionDetailsProtocol, RecoveryPlanActionDetailsProtocol {
    public var runbookId: String?
    public var timeout: String?
    public var fabricLocation: RecoveryPlanActionLocationEnum

        enum CodingKeys: String, CodingKey {case runbookId = "runbookId"
        case timeout = "timeout"
        case fabricLocation = "fabricLocation"
        }

  public init(fabricLocation: RecoveryPlanActionLocationEnum)  {
    self.fabricLocation = fabricLocation
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.runbookId) {
        self.runbookId = try container.decode(String?.self, forKey: .runbookId)
    }
    if container.contains(.timeout) {
        self.timeout = try container.decode(String?.self, forKey: .timeout)
    }
    self.fabricLocation = try container.decode(RecoveryPlanActionLocationEnum.self, forKey: .fabricLocation)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.runbookId != nil {try container.encode(self.runbookId, forKey: .runbookId)}
    if self.timeout != nil {try container.encode(self.timeout, forKey: .timeout)}
    try container.encode(self.fabricLocation, forKey: .fabricLocation)
  }
}

extension DataFactory {
  public static func createRecoveryPlanAutomationRunbookActionDetailsProtocol(fabricLocation: RecoveryPlanActionLocationEnum) -> RecoveryPlanAutomationRunbookActionDetailsProtocol {
    return RecoveryPlanAutomationRunbookActionDetailsData(fabricLocation: fabricLocation)
  }
}
