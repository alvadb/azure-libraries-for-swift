// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DataLakeAnalyticsAccountListResultProtocol is data Lake Analytics account list information.
public protocol DataLakeAnalyticsAccountListResultProtocol : Codable {
     var value: [DataLakeAnalyticsAccountBasicProtocol?]? { get set }
     var _nextLink: String? { get set }
}