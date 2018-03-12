// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AS2MdnSettingsData : AS2MdnSettingsProtocol {
    public var needMdn: Bool
    public var signMdn: Bool
    public var sendMdnAsynchronously: Bool
    public var receiptDeliveryUrl: String?
    public var dispositionNotificationTo: String?
    public var signOutboundMdnIfOptional: Bool
    public var mdnText: String?
    public var sendInboundMdnToMessageBox: Bool
    public var micHashingAlgorithm: HashingAlgorithmEnum

        enum CodingKeys: String, CodingKey {case needMdn = "needMdn"
        case signMdn = "signMdn"
        case sendMdnAsynchronously = "sendMdnAsynchronously"
        case receiptDeliveryUrl = "receiptDeliveryUrl"
        case dispositionNotificationTo = "dispositionNotificationTo"
        case signOutboundMdnIfOptional = "signOutboundMdnIfOptional"
        case mdnText = "mdnText"
        case sendInboundMdnToMessageBox = "sendInboundMdnToMessageBox"
        case micHashingAlgorithm = "micHashingAlgorithm"
        }

  public init(needMdn: Bool, signMdn: Bool, sendMdnAsynchronously: Bool, signOutboundMdnIfOptional: Bool, sendInboundMdnToMessageBox: Bool, micHashingAlgorithm: HashingAlgorithmEnum)  {
    self.needMdn = needMdn
    self.signMdn = signMdn
    self.sendMdnAsynchronously = sendMdnAsynchronously
    self.signOutboundMdnIfOptional = signOutboundMdnIfOptional
    self.sendInboundMdnToMessageBox = sendInboundMdnToMessageBox
    self.micHashingAlgorithm = micHashingAlgorithm
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.needMdn = try container.decode(Bool.self, forKey: .needMdn)
    self.signMdn = try container.decode(Bool.self, forKey: .signMdn)
    self.sendMdnAsynchronously = try container.decode(Bool.self, forKey: .sendMdnAsynchronously)
    if container.contains(.receiptDeliveryUrl) {
        self.receiptDeliveryUrl = try container.decode(String?.self, forKey: .receiptDeliveryUrl)
    }
    if container.contains(.dispositionNotificationTo) {
        self.dispositionNotificationTo = try container.decode(String?.self, forKey: .dispositionNotificationTo)
    }
    self.signOutboundMdnIfOptional = try container.decode(Bool.self, forKey: .signOutboundMdnIfOptional)
    if container.contains(.mdnText) {
        self.mdnText = try container.decode(String?.self, forKey: .mdnText)
    }
    self.sendInboundMdnToMessageBox = try container.decode(Bool.self, forKey: .sendInboundMdnToMessageBox)
    self.micHashingAlgorithm = try container.decode(HashingAlgorithmEnum.self, forKey: .micHashingAlgorithm)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.needMdn, forKey: .needMdn)
    try container.encode(self.signMdn, forKey: .signMdn)
    try container.encode(self.sendMdnAsynchronously, forKey: .sendMdnAsynchronously)
    if self.receiptDeliveryUrl != nil {try container.encode(self.receiptDeliveryUrl, forKey: .receiptDeliveryUrl)}
    if self.dispositionNotificationTo != nil {try container.encode(self.dispositionNotificationTo, forKey: .dispositionNotificationTo)}
    try container.encode(self.signOutboundMdnIfOptional, forKey: .signOutboundMdnIfOptional)
    if self.mdnText != nil {try container.encode(self.mdnText, forKey: .mdnText)}
    try container.encode(self.sendInboundMdnToMessageBox, forKey: .sendInboundMdnToMessageBox)
    try container.encode(self.micHashingAlgorithm, forKey: .micHashingAlgorithm)
  }
}

extension DataFactory {
  public static func createAS2MdnSettingsProtocol(needMdn: Bool, signMdn: Bool, sendMdnAsynchronously: Bool, signOutboundMdnIfOptional: Bool, sendInboundMdnToMessageBox: Bool, micHashingAlgorithm: HashingAlgorithmEnum) -> AS2MdnSettingsProtocol {
    return AS2MdnSettingsData(needMdn: needMdn, signMdn: signMdn, sendMdnAsynchronously: sendMdnAsynchronously, signOutboundMdnIfOptional: signOutboundMdnIfOptional, sendInboundMdnToMessageBox: sendInboundMdnToMessageBox, micHashingAlgorithm: micHashingAlgorithm)
  }
}