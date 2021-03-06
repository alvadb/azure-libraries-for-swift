// EventLevel enumerates the values for event level.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum EventLevelEnum: String, Codable
{
// Critical specifies the critical state for event level.
    case Critical = "Critical"
// Error specifies the error state for event level.
    case Error = "Error"
// Informational specifies the informational state for event level.
    case Informational = "Informational"
// Verbose specifies the verbose state for event level.
    case Verbose = "Verbose"
// Warning specifies the warning state for event level.
    case Warning = "Warning"
}
