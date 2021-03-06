// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SourceProtocol is the registry node that generated the event. Put differently, while the actor initiates the event,
// the source generates it.
public protocol SourceProtocol : Codable {
     var addr: String? { get set }
     var instanceID: String? { get set }
}
