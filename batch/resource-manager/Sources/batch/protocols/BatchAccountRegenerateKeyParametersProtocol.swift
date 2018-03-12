// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// BatchAccountRegenerateKeyParametersProtocol is parameters supplied to the RegenerateKey operation.
public protocol BatchAccountRegenerateKeyParametersProtocol : Codable {
     var keyName: AccountKeyTypeEnum { get set }
}