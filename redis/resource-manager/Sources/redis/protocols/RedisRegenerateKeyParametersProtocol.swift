// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RedisRegenerateKeyParametersProtocol is specifies which Redis access keys to reset.
public protocol RedisRegenerateKeyParametersProtocol : Codable {
     var keyType: RedisKeyTypeEnum { get set }
}