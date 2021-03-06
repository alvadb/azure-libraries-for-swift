// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// WidgetTypeListResultProtocol is the response of list widget type operation.
public protocol WidgetTypeListResultProtocol : Codable {
     var value: [WidgetTypeResourceFormatProtocol?]? { get set }
     var _nextLink: String? { get set }
}
