// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SyncGroupListResultProtocol is a list of sync groups.
public protocol SyncGroupListResultProtocol : Codable {
     var value: [SyncGroupProtocol?]? { get set }
     var _nextLink: String? { get set }
}
