// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct MetricAvailabililyData : MetricAvailabililyProtocol {
    public var timeGrain: String?
    public var retention: String?

        enum CodingKeys: String, CodingKey {case timeGrain = "timeGrain"
        case retention = "retention"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.timeGrain) {
        self.timeGrain = try container.decode(String?.self, forKey: .timeGrain)
    }
    if container.contains(.retention) {
        self.retention = try container.decode(String?.self, forKey: .retention)
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
    if self.timeGrain != nil {try container.encode(self.timeGrain, forKey: .timeGrain)}
    if self.retention != nil {try container.encode(self.retention, forKey: .retention)}
  }
}

extension DataFactory {
  public static func createMetricAvailabililyProtocol() -> MetricAvailabililyProtocol {
    return MetricAvailabililyData()
  }
}
