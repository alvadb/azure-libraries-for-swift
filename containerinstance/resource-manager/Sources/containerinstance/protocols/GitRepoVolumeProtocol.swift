// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// GitRepoVolumeProtocol is represents a volume that is populated with the contents of a git repository
public protocol GitRepoVolumeProtocol : Codable {
     var directory: String? { get set }
     var repository: String { get set }
     var revision: String? { get set }
}
