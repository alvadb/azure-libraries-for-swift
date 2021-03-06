// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RecoveryPlanHyperVReplicaAzureFailoverInputData : RecoveryPlanHyperVReplicaAzureFailoverInputProtocol, RecoveryPlanProviderSpecificFailoverInputProtocol {
    public var vaultLocation: String
    public var primaryKekCertificatePfx: String?
    public var secondaryKekCertificatePfx: String?
    public var recoveryPointType: HyperVReplicaAzureRpRecoveryPointTypeEnum?

        enum CodingKeys: String, CodingKey {case vaultLocation = "vaultLocation"
        case primaryKekCertificatePfx = "primaryKekCertificatePfx"
        case secondaryKekCertificatePfx = "secondaryKekCertificatePfx"
        case recoveryPointType = "recoveryPointType"
        }

  public init(vaultLocation: String)  {
    self.vaultLocation = vaultLocation
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.vaultLocation = try container.decode(String.self, forKey: .vaultLocation)
    if container.contains(.primaryKekCertificatePfx) {
        self.primaryKekCertificatePfx = try container.decode(String?.self, forKey: .primaryKekCertificatePfx)
    }
    if container.contains(.secondaryKekCertificatePfx) {
        self.secondaryKekCertificatePfx = try container.decode(String?.self, forKey: .secondaryKekCertificatePfx)
    }
    if container.contains(.recoveryPointType) {
        self.recoveryPointType = try container.decode(HyperVReplicaAzureRpRecoveryPointTypeEnum?.self, forKey: .recoveryPointType)
    }
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.vaultLocation, forKey: .vaultLocation)
    if self.primaryKekCertificatePfx != nil {try container.encode(self.primaryKekCertificatePfx, forKey: .primaryKekCertificatePfx)}
    if self.secondaryKekCertificatePfx != nil {try container.encode(self.secondaryKekCertificatePfx, forKey: .secondaryKekCertificatePfx)}
    if self.recoveryPointType != nil {try container.encode(self.recoveryPointType, forKey: .recoveryPointType)}
  }
}

extension DataFactory {
  public static func createRecoveryPlanHyperVReplicaAzureFailoverInputProtocol(vaultLocation: String) -> RecoveryPlanHyperVReplicaAzureFailoverInputProtocol {
    return RecoveryPlanHyperVReplicaAzureFailoverInputData(vaultLocation: vaultLocation)
  }
}
