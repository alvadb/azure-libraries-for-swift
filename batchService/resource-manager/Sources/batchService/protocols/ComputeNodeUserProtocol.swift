// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ComputeNodeUserProtocol is
public protocol ComputeNodeUserProtocol : Codable {
     var name: String { get set }
     var isAdmin: Bool? { get set }
     var expiryTime: Date? { get set }
     var password: String? { get set }
     var sshPublicKey: String? { get set }
}
