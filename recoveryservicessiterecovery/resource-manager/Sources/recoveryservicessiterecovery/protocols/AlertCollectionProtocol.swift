// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AlertCollectionProtocol is collection of alerts.
public protocol AlertCollectionProtocol : Codable {
     var value: [AlertProtocol?]? { get set }
     var _nextLink: String? { get set }
}
