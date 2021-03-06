// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct TaskCountsData : TaskCountsProtocol {
    public var active: Int32
    public var running: Int32
    public var completed: Int32
    public var succeeded: Int32
    public var failed: Int32
    public var validationStatus: TaskCountValidationStatusEnum

        enum CodingKeys: String, CodingKey {case active = "active"
        case running = "running"
        case completed = "completed"
        case succeeded = "succeeded"
        case failed = "failed"
        case validationStatus = "validationStatus"
        }

  public init(active: Int32, running: Int32, completed: Int32, succeeded: Int32, failed: Int32, validationStatus: TaskCountValidationStatusEnum)  {
    self.active = active
    self.running = running
    self.completed = completed
    self.succeeded = succeeded
    self.failed = failed
    self.validationStatus = validationStatus
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.active = try container.decode(Int32.self, forKey: .active)
    self.running = try container.decode(Int32.self, forKey: .running)
    self.completed = try container.decode(Int32.self, forKey: .completed)
    self.succeeded = try container.decode(Int32.self, forKey: .succeeded)
    self.failed = try container.decode(Int32.self, forKey: .failed)
    self.validationStatus = try container.decode(TaskCountValidationStatusEnum.self, forKey: .validationStatus)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.active, forKey: .active)
    try container.encode(self.running, forKey: .running)
    try container.encode(self.completed, forKey: .completed)
    try container.encode(self.succeeded, forKey: .succeeded)
    try container.encode(self.failed, forKey: .failed)
    try container.encode(self.validationStatus, forKey: .validationStatus)
  }
}

extension DataFactory {
  public static func createTaskCountsProtocol(active: Int32, running: Int32, completed: Int32, succeeded: Int32, failed: Int32, validationStatus: TaskCountValidationStatusEnum) -> TaskCountsProtocol {
    return TaskCountsData(active: active, running: running, completed: completed, succeeded: succeeded, failed: failed, validationStatus: validationStatus)
  }
}
