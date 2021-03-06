// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RegistryListCredentialsResultProtocol is the response from the ListCredentials operation.
public protocol RegistryListCredentialsResultProtocol : Codable {
     var username: String? { get set }
     var passwords: [RegistryPasswordProtocol?]? { get set }
}
