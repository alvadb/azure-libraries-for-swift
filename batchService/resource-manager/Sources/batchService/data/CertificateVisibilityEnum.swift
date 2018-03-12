// CertificateVisibility enumerates the values for certificate visibility.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum CertificateVisibilityEnum: String, Codable
{
// CertificateVisibilityRemoteUser specifies the certificate visibility remote user state for certificate visibility.
    case CertificateVisibilityRemoteUser = "remoteuser"
// CertificateVisibilityStartTask specifies the certificate visibility start task state for certificate visibility.
    case CertificateVisibilityStartTask = "starttask"
// CertificateVisibilityTask specifies the certificate visibility task state for certificate visibility.
    case CertificateVisibilityTask = "task"
}