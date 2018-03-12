// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AzureReachabilityReportLatencyInfoData : AzureReachabilityReportLatencyInfoProtocol {
    public var timeStamp: Date?
    public var score: Int32?

        enum CodingKeys: String, CodingKey {case timeStamp = "timeStamp"
        case score = "score"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.timeStamp) {
        self.timeStamp = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .timeStamp)), format: .dateTime)
    }
    if container.contains(.score) {
        self.score = try container.decode(Int32?.self, forKey: .score)
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
    if self.timeStamp != nil {
        try container.encode(DateConverter.toString(date: self.timeStamp!, format: .dateTime), forKey: .timeStamp)
    }
    if self.score != nil {try container.encode(self.score, forKey: .score)}
  }
}

extension DataFactory {
  public static func createAzureReachabilityReportLatencyInfoProtocol() -> AzureReachabilityReportLatencyInfoProtocol {
    return AzureReachabilityReportLatencyInfoData()
  }
}