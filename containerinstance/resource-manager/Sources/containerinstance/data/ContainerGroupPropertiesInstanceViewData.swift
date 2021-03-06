// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ContainerGroupPropertiesInstanceViewData : ContainerGroupPropertiesInstanceViewProtocol {
    public var events: [EventProtocol?]?
    public var state: String?

        enum CodingKeys: String, CodingKey {case events = "events"
        case state = "state"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.events) {
        self.events = try container.decode([EventData?]?.self, forKey: .events)
    }
    if container.contains(.state) {
        self.state = try container.decode(String?.self, forKey: .state)
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
    if self.events != nil {try container.encode(self.events as! [EventData?]?, forKey: .events)}
    if self.state != nil {try container.encode(self.state, forKey: .state)}
  }
}

extension DataFactory {
  public static func createContainerGroupPropertiesInstanceViewProtocol() -> ContainerGroupPropertiesInstanceViewProtocol {
    return ContainerGroupPropertiesInstanceViewData()
  }
}
