// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ApplicableSchedulePropertiesFragmentData : ApplicableSchedulePropertiesFragmentProtocol {
    public var labVmsShutdown: ScheduleFragmentProtocol?
    public var labVmsStartup: ScheduleFragmentProtocol?

        enum CodingKeys: String, CodingKey {case labVmsShutdown = "labVmsShutdown"
        case labVmsStartup = "labVmsStartup"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.labVmsShutdown) {
        self.labVmsShutdown = try container.decode(ScheduleFragmentData?.self, forKey: .labVmsShutdown)
    }
    if container.contains(.labVmsStartup) {
        self.labVmsStartup = try container.decode(ScheduleFragmentData?.self, forKey: .labVmsStartup)
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
    if self.labVmsShutdown != nil {try container.encode(self.labVmsShutdown as! ScheduleFragmentData?, forKey: .labVmsShutdown)}
    if self.labVmsStartup != nil {try container.encode(self.labVmsStartup as! ScheduleFragmentData?, forKey: .labVmsStartup)}
  }
}

extension DataFactory {
  public static func createApplicableSchedulePropertiesFragmentProtocol() -> ApplicableSchedulePropertiesFragmentProtocol {
    return ApplicableSchedulePropertiesFragmentData()
  }
}
