// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Applications is the the Graph RBAC Management Client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Applications {
    public static func AddOwner(applicationObjectId: String, tenantID: String, parameters: ApplicationAddOwnerParametersProtocol) -> ApplicationsAddOwner {
        return AddOwnerCommand(applicationObjectId: applicationObjectId, tenantID: tenantID, parameters: parameters)
    }
    public static func Create(tenantID: String, parameters: ApplicationCreateParametersProtocol) -> ApplicationsCreate {
        return CreateCommand(tenantID: tenantID, parameters: parameters)
    }
    public static func Delete(applicationObjectId: String, tenantID: String) -> ApplicationsDelete {
        return DeleteCommand(applicationObjectId: applicationObjectId, tenantID: tenantID)
    }
    public static func Get(applicationObjectId: String, tenantID: String) -> ApplicationsGet {
        return GetCommand(applicationObjectId: applicationObjectId, tenantID: tenantID)
    }
    public static func List(tenantID: String) -> ApplicationsList {
        return ListCommand(tenantID: tenantID)
    }
    public static func ListKeyCredentials(applicationObjectId: String, tenantID: String) -> ApplicationsListKeyCredentials {
        return ListKeyCredentialsCommand(applicationObjectId: applicationObjectId, tenantID: tenantID)
    }
    public static func ListNext(_nextLink: String, tenantID: String) -> ApplicationsListNext {
        return ListNextCommand(_nextLink: _nextLink, tenantID: tenantID)
    }
    public static func ListOwners(applicationObjectId: String, tenantID: String) -> ApplicationsListOwners {
        return ListOwnersCommand(applicationObjectId: applicationObjectId, tenantID: tenantID)
    }
    public static func ListPasswordCredentials(applicationObjectId: String, tenantID: String) -> ApplicationsListPasswordCredentials {
        return ListPasswordCredentialsCommand(applicationObjectId: applicationObjectId, tenantID: tenantID)
    }
    public static func Patch(applicationObjectId: String, tenantID: String, parameters: ApplicationUpdateParametersProtocol) -> ApplicationsPatch {
        return PatchCommand(applicationObjectId: applicationObjectId, tenantID: tenantID, parameters: parameters)
    }
    public static func UpdateKeyCredentials(applicationObjectId: String, tenantID: String, parameters: KeyCredentialsUpdateParametersProtocol) -> ApplicationsUpdateKeyCredentials {
        return UpdateKeyCredentialsCommand(applicationObjectId: applicationObjectId, tenantID: tenantID, parameters: parameters)
    }
    public static func UpdatePasswordCredentials(applicationObjectId: String, tenantID: String, parameters: PasswordCredentialsUpdateParametersProtocol) -> ApplicationsUpdatePasswordCredentials {
        return UpdatePasswordCredentialsCommand(applicationObjectId: applicationObjectId, tenantID: tenantID, parameters: parameters)
    }
}
}
