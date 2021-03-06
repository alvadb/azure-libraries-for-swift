// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SloUsageMetricData : SloUsageMetricProtocol {
    public var serviceLevelObjective: ServiceObjectiveNameEnum?
    public var serviceLevelObjectiveId: String?
    public var inRangeTimeRatio: Double?

        enum CodingKeys: String, CodingKey {case serviceLevelObjective = "serviceLevelObjective"
        case serviceLevelObjectiveId = "serviceLevelObjectiveId"
        case inRangeTimeRatio = "inRangeTimeRatio"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.serviceLevelObjective) {
        self.serviceLevelObjective = try container.decode(ServiceObjectiveNameEnum?.self, forKey: .serviceLevelObjective)
    }
    if container.contains(.serviceLevelObjectiveId) {
        self.serviceLevelObjectiveId = try container.decode(String?.self, forKey: .serviceLevelObjectiveId)
    }
    if container.contains(.inRangeTimeRatio) {
        self.inRangeTimeRatio = try container.decode(Double?.self, forKey: .inRangeTimeRatio)
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
    if self.serviceLevelObjective != nil {try container.encode(self.serviceLevelObjective, forKey: .serviceLevelObjective)}
    if self.serviceLevelObjectiveId != nil {try container.encode(self.serviceLevelObjectiveId, forKey: .serviceLevelObjectiveId)}
    if self.inRangeTimeRatio != nil {try container.encode(self.inRangeTimeRatio, forKey: .inRangeTimeRatio)}
  }
}

extension DataFactory {
  public static func createSloUsageMetricProtocol() -> SloUsageMetricProtocol {
    return SloUsageMetricData()
  }
}
