// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ReplicationListResultProtocol is the result of a request to list replications for a container registry.
public protocol ReplicationListResultProtocol : Codable {
     var value: [ReplicationProtocol?]? { get set }
     var _nextLink: String? { get set }
}
