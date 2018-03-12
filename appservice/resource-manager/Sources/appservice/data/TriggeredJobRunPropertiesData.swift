// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct TriggeredJobRunPropertiesData : TriggeredJobRunPropertiesProtocol {
    public var id: String?
    public var name: String?
    public var status: TriggeredWebJobStatusEnum?
    public var startTime: Date?
    public var endTime: Date?
    public var duration: String?
    public var outputUrl: String?
    public var errorUrl: String?
    public var url: String?
    public var jobName: String?
    public var trigger: String?

        enum CodingKeys: String, CodingKey {case id = "id"
        case name = "name"
        case status = "status"
        case startTime = "startTime"
        case endTime = "endTime"
        case duration = "duration"
        case outputUrl = "outputUrl"
        case errorUrl = "errorUrl"
        case url = "url"
        case jobName = "jobName"
        case trigger = "trigger"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.id) {
        self.id = try container.decode(String?.self, forKey: .id)
    }
    if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.status) {
        self.status = try container.decode(TriggeredWebJobStatusEnum?.self, forKey: .status)
    }
    if container.contains(.startTime) {
        self.startTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .startTime)), format: .dateTime)
    }
    if container.contains(.endTime) {
        self.endTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .endTime)), format: .dateTime)
    }
    if container.contains(.duration) {
        self.duration = try container.decode(String?.self, forKey: .duration)
    }
    if container.contains(.outputUrl) {
        self.outputUrl = try container.decode(String?.self, forKey: .outputUrl)
    }
    if container.contains(.errorUrl) {
        self.errorUrl = try container.decode(String?.self, forKey: .errorUrl)
    }
    if container.contains(.url) {
        self.url = try container.decode(String?.self, forKey: .url)
    }
    if container.contains(.jobName) {
        self.jobName = try container.decode(String?.self, forKey: .jobName)
    }
    if container.contains(.trigger) {
        self.trigger = try container.decode(String?.self, forKey: .trigger)
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
    if self.id != nil {try container.encode(self.id, forKey: .id)}
    if self.name != nil {try container.encode(self.name, forKey: .name)}
    if self.status != nil {try container.encode(self.status, forKey: .status)}
    if self.startTime != nil {
        try container.encode(DateConverter.toString(date: self.startTime!, format: .dateTime), forKey: .startTime)
    }
    if self.endTime != nil {
        try container.encode(DateConverter.toString(date: self.endTime!, format: .dateTime), forKey: .endTime)
    }
    if self.duration != nil {try container.encode(self.duration, forKey: .duration)}
    if self.outputUrl != nil {try container.encode(self.outputUrl, forKey: .outputUrl)}
    if self.errorUrl != nil {try container.encode(self.errorUrl, forKey: .errorUrl)}
    if self.url != nil {try container.encode(self.url, forKey: .url)}
    if self.jobName != nil {try container.encode(self.jobName, forKey: .jobName)}
    if self.trigger != nil {try container.encode(self.trigger, forKey: .trigger)}
  }
}

extension DataFactory {
  public static func createTriggeredJobRunPropertiesProtocol() -> TriggeredJobRunPropertiesProtocol {
    return TriggeredJobRunPropertiesData()
  }
}