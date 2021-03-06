// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ApplicationProtocol is contains information about an application in a Batch account.
public protocol ApplicationProtocol : Codable {
     var id: String? { get set }
     var displayName: String? { get set }
     var packages: [ApplicationPackageProtocol?]? { get set }
     var allowUpdates: Bool? { get set }
     var defaultVersion: String? { get set }
}
