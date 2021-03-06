// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AlertPropertiesProtocol is the proprties of an alert.
public protocol AlertPropertiesProtocol : Codable {
     var sendToOwners: String? { get set }
     var customEmailAddresses: [String]? { get set }
     var locale: String? { get set }
}
