// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ProcessThreadInfoCollectionProtocol is collection of Kudu thread information elements.
public protocol ProcessThreadInfoCollectionProtocol : Codable {
     var value: [ProcessThreadInfoProtocol] { get set }
     var _nextLink: String? { get set }
}