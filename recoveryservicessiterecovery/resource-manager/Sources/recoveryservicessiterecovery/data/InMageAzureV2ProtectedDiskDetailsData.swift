// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct InMageAzureV2ProtectedDiskDetailsData : InMageAzureV2ProtectedDiskDetailsProtocol {
    public var diskId: String?
    public var diskName: String?
    public var protectionStage: String?
    public var healthErrorCode: String?
    public var rpoInSeconds: Int64?
    public var resyncRequired: String?
    public var resyncProgressPercentage: Int32?
    public var resyncDurationInSeconds: Int64?
    public var diskCapacityInBytes: Int64?
    public var fileSystemCapacityInBytes: Int64?
    public var sourceDataInMegaBytes: Double?
    public var psDataInMegaBytes: Double?
    public var targetDataInMegaBytes: Double?
    public var diskResized: String?
    public var lastRpoCalculatedTime: Date?

        enum CodingKeys: String, CodingKey {case diskId = "diskId"
        case diskName = "diskName"
        case protectionStage = "protectionStage"
        case healthErrorCode = "healthErrorCode"
        case rpoInSeconds = "rpoInSeconds"
        case resyncRequired = "resyncRequired"
        case resyncProgressPercentage = "resyncProgressPercentage"
        case resyncDurationInSeconds = "resyncDurationInSeconds"
        case diskCapacityInBytes = "diskCapacityInBytes"
        case fileSystemCapacityInBytes = "fileSystemCapacityInBytes"
        case sourceDataInMegaBytes = "sourceDataInMegaBytes"
        case psDataInMegaBytes = "psDataInMegaBytes"
        case targetDataInMegaBytes = "targetDataInMegaBytes"
        case diskResized = "diskResized"
        case lastRpoCalculatedTime = "lastRpoCalculatedTime"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.diskId) {
        self.diskId = try container.decode(String?.self, forKey: .diskId)
    }
    if container.contains(.diskName) {
        self.diskName = try container.decode(String?.self, forKey: .diskName)
    }
    if container.contains(.protectionStage) {
        self.protectionStage = try container.decode(String?.self, forKey: .protectionStage)
    }
    if container.contains(.healthErrorCode) {
        self.healthErrorCode = try container.decode(String?.self, forKey: .healthErrorCode)
    }
    if container.contains(.rpoInSeconds) {
        self.rpoInSeconds = try container.decode(Int64?.self, forKey: .rpoInSeconds)
    }
    if container.contains(.resyncRequired) {
        self.resyncRequired = try container.decode(String?.self, forKey: .resyncRequired)
    }
    if container.contains(.resyncProgressPercentage) {
        self.resyncProgressPercentage = try container.decode(Int32?.self, forKey: .resyncProgressPercentage)
    }
    if container.contains(.resyncDurationInSeconds) {
        self.resyncDurationInSeconds = try container.decode(Int64?.self, forKey: .resyncDurationInSeconds)
    }
    if container.contains(.diskCapacityInBytes) {
        self.diskCapacityInBytes = try container.decode(Int64?.self, forKey: .diskCapacityInBytes)
    }
    if container.contains(.fileSystemCapacityInBytes) {
        self.fileSystemCapacityInBytes = try container.decode(Int64?.self, forKey: .fileSystemCapacityInBytes)
    }
    if container.contains(.sourceDataInMegaBytes) {
        self.sourceDataInMegaBytes = try container.decode(Double?.self, forKey: .sourceDataInMegaBytes)
    }
    if container.contains(.psDataInMegaBytes) {
        self.psDataInMegaBytes = try container.decode(Double?.self, forKey: .psDataInMegaBytes)
    }
    if container.contains(.targetDataInMegaBytes) {
        self.targetDataInMegaBytes = try container.decode(Double?.self, forKey: .targetDataInMegaBytes)
    }
    if container.contains(.diskResized) {
        self.diskResized = try container.decode(String?.self, forKey: .diskResized)
    }
    if container.contains(.lastRpoCalculatedTime) {
        self.lastRpoCalculatedTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastRpoCalculatedTime)), format: .dateTime)
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
    if self.diskId != nil {try container.encode(self.diskId, forKey: .diskId)}
    if self.diskName != nil {try container.encode(self.diskName, forKey: .diskName)}
    if self.protectionStage != nil {try container.encode(self.protectionStage, forKey: .protectionStage)}
    if self.healthErrorCode != nil {try container.encode(self.healthErrorCode, forKey: .healthErrorCode)}
    if self.rpoInSeconds != nil {try container.encode(self.rpoInSeconds, forKey: .rpoInSeconds)}
    if self.resyncRequired != nil {try container.encode(self.resyncRequired, forKey: .resyncRequired)}
    if self.resyncProgressPercentage != nil {try container.encode(self.resyncProgressPercentage, forKey: .resyncProgressPercentage)}
    if self.resyncDurationInSeconds != nil {try container.encode(self.resyncDurationInSeconds, forKey: .resyncDurationInSeconds)}
    if self.diskCapacityInBytes != nil {try container.encode(self.diskCapacityInBytes, forKey: .diskCapacityInBytes)}
    if self.fileSystemCapacityInBytes != nil {try container.encode(self.fileSystemCapacityInBytes, forKey: .fileSystemCapacityInBytes)}
    if self.sourceDataInMegaBytes != nil {try container.encode(self.sourceDataInMegaBytes, forKey: .sourceDataInMegaBytes)}
    if self.psDataInMegaBytes != nil {try container.encode(self.psDataInMegaBytes, forKey: .psDataInMegaBytes)}
    if self.targetDataInMegaBytes != nil {try container.encode(self.targetDataInMegaBytes, forKey: .targetDataInMegaBytes)}
    if self.diskResized != nil {try container.encode(self.diskResized, forKey: .diskResized)}
    if self.lastRpoCalculatedTime != nil {
        try container.encode(DateConverter.toString(date: self.lastRpoCalculatedTime!, format: .dateTime), forKey: .lastRpoCalculatedTime)
    }
  }
}

extension DataFactory {
  public static func createInMageAzureV2ProtectedDiskDetailsProtocol() -> InMageAzureV2ProtectedDiskDetailsProtocol {
    return InMageAzureV2ProtectedDiskDetailsData()
  }
}