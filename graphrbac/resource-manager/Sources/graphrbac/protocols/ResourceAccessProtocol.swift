// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ResourceAccessProtocol is specifies an OAuth 2.0 permission scope or an app role that an application requires. The
// resourceAccess property of the RequiredResourceAccess type is a collection of ResourceAccess.
public protocol ResourceAccessProtocol : Codable {
     var additionalProperties: [String:[String: String?]]? { get set }
     var id: String { get set }
     var type: String? { get set }
}
