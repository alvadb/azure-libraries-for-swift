// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct JobStatusData : JobStatusProtocol {
    public var executionCount: Int32?
    public var failureCount: Int32?
    public var faultedCount: Int32?
    public var lastExecutionTime: Date?
    public var nextExecutionTime: Date?

        enum CodingKeys: String, CodingKey {case executionCount = "executionCount"
        case failureCount = "failureCount"
        case faultedCount = "faultedCount"
        case lastExecutionTime = "lastExecutionTime"
        case nextExecutionTime = "nextExecutionTime"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.executionCount) {
        self.executionCount = try container.decode(Int32?.self, forKey: .executionCount)
    }
    if container.contains(.failureCount) {
        self.failureCount = try container.decode(Int32?.self, forKey: .failureCount)
    }
    if container.contains(.faultedCount) {
        self.faultedCount = try container.decode(Int32?.self, forKey: .faultedCount)
    }
    if container.contains(.lastExecutionTime) {
        self.lastExecutionTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastExecutionTime)), format: .dateTime)
    }
    if container.contains(.nextExecutionTime) {
        self.nextExecutionTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .nextExecutionTime)), format: .dateTime)
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
    if self.executionCount != nil {try container.encode(self.executionCount, forKey: .executionCount)}
    if self.failureCount != nil {try container.encode(self.failureCount, forKey: .failureCount)}
    if self.faultedCount != nil {try container.encode(self.faultedCount, forKey: .faultedCount)}
    if self.lastExecutionTime != nil {
        try container.encode(DateConverter.toString(date: self.lastExecutionTime!, format: .dateTime), forKey: .lastExecutionTime)
    }
    if self.nextExecutionTime != nil {
        try container.encode(DateConverter.toString(date: self.nextExecutionTime!, format: .dateTime), forKey: .nextExecutionTime)
    }
  }
}

extension DataFactory {
  public static func createJobStatusProtocol() -> JobStatusProtocol {
    return JobStatusData()
  }
}
