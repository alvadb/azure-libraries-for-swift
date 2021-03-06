// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ContinuousWebJobCollectionProtocol is collection of Kudu continuous web job information elements.
public protocol ContinuousWebJobCollectionProtocol : Codable {
     var value: [ContinuousWebJobProtocol] { get set }
     var _nextLink: String? { get set }
}
