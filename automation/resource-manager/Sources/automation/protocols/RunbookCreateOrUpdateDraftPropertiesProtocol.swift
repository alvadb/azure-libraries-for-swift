// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RunbookCreateOrUpdateDraftPropertiesProtocol is the parameters supplied to the create or update dratft runbook
// properties.
public protocol RunbookCreateOrUpdateDraftPropertiesProtocol : Codable {
     var logVerbose: Bool? { get set }
     var logProgress: Bool? { get set }
     var runbookType: RunbookTypeEnumEnum { get set }
     var draft: RunbookDraftProtocol { get set }
     var description: String? { get set }
     var logActivityTrace: Int32? { get set }
}
