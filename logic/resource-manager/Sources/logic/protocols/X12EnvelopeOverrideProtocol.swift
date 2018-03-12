// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// X12EnvelopeOverrideProtocol is the X12 envelope override settings.
public protocol X12EnvelopeOverrideProtocol : Codable {
     var targetNamespace: String { get set }
     var protocolVersion: String { get set }
     var messageId: String { get set }
     var responsibleAgencyCode: String { get set }
     var headerVersion: String { get set }
     var senderApplicationId: String { get set }
     var receiverApplicationId: String { get set }
     var functionalIdentifierCode: String? { get set }
     var dateFormat: X12DateFormatEnum { get set }
     var timeFormat: X12TimeFormatEnum { get set }
}