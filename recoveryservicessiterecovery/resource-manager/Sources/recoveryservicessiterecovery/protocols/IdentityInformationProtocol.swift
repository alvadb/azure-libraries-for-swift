// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// IdentityInformationProtocol is identity details.
public protocol IdentityInformationProtocol : Codable {
     var identityProviderType: IdentityProviderTypeEnum? { get set }
     var tenantId: String? { get set }
     var applicationId: String? { get set }
     var objectId: String? { get set }
     var audience: String? { get set }
     var aadAuthority: String? { get set }
     var certificateThumbprint: String? { get set }
}
