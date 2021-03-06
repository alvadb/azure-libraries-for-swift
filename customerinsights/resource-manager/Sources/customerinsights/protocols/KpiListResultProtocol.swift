// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// KpiListResultProtocol is the response of list KPI operation.
public protocol KpiListResultProtocol : Codable {
     var value: [KpiResourceFormatProtocol?]? { get set }
     var _nextLink: String? { get set }
}
