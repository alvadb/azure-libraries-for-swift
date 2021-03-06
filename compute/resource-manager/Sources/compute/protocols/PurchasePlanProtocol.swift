// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// PurchasePlanProtocol is used for establishing the purchase context of any 3rd Party artifact through MarketPlace.
public protocol PurchasePlanProtocol : Codable {
     var publisher: String { get set }
     var name: String { get set }
     var product: String { get set }
}
