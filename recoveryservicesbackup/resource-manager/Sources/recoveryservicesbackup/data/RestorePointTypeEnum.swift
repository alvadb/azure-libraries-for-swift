// RestorePointType enumerates the values for restore point type.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum RestorePointTypeEnum: String, Codable
{
// RestorePointTypeDifferential specifies the restore point type differential state for restore point type.
    case RestorePointTypeDifferential = "Differential"
// RestorePointTypeFull specifies the restore point type full state for restore point type.
    case RestorePointTypeFull = "Full"
// RestorePointTypeInvalid specifies the restore point type invalid state for restore point type.
    case RestorePointTypeInvalid = "Invalid"
// RestorePointTypeLog specifies the restore point type log state for restore point type.
    case RestorePointTypeLog = "Log"
}
