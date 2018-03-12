// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// EdifactOneWayAgreementProtocol is the Edifact one way agreement.
public protocol EdifactOneWayAgreementProtocol : Codable {
     var senderBusinessIdentity: BusinessIdentityProtocol { get set }
     var receiverBusinessIdentity: BusinessIdentityProtocol { get set }
     var protocolSettings: EdifactProtocolSettingsProtocol { get set }
}