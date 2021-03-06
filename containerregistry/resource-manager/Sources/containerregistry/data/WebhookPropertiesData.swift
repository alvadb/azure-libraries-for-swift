// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct WebhookPropertiesData : WebhookPropertiesProtocol {
    public var status: WebhookStatusEnum?
    public var scope: String?
    public var actions: [WebhookActionEnum]
    public var provisioningState: ProvisioningStateEnum?

        enum CodingKeys: String, CodingKey {case status = "status"
        case scope = "scope"
        case actions = "actions"
        case provisioningState = "provisioningState"
        }

  public init(actions: [WebhookActionEnum])  {
    self.actions = actions
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.status) {
        self.status = try container.decode(WebhookStatusEnum?.self, forKey: .status)
    }
    if container.contains(.scope) {
        self.scope = try container.decode(String?.self, forKey: .scope)
    }
    self.actions = try container.decode([WebhookActionEnum].self, forKey: .actions)
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(ProvisioningStateEnum?.self, forKey: .provisioningState)
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
    if self.status != nil {try container.encode(self.status, forKey: .status)}
    if self.scope != nil {try container.encode(self.scope, forKey: .scope)}
    try container.encode(self.actions as! [WebhookActionEnum], forKey: .actions)
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
  }
}

extension DataFactory {
  public static func createWebhookPropertiesProtocol(actions: [WebhookActionEnum]) -> WebhookPropertiesProtocol {
    return WebhookPropertiesData(actions: actions)
  }
}
