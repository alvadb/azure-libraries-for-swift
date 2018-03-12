// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct A2APolicyCreationInputData : A2APolicyCreationInputProtocol, PolicyProviderSpecificInputProtocol {
    public var recoveryPointHistory: Int32?
    public var crashConsistentFrequencyInMinutes: Int32?
    public var appConsistentFrequencyInMinutes: Int32?
    public var multiVmSyncStatus: SetMultiVmSyncStatusEnum

        enum CodingKeys: String, CodingKey {case recoveryPointHistory = "recoveryPointHistory"
        case crashConsistentFrequencyInMinutes = "crashConsistentFrequencyInMinutes"
        case appConsistentFrequencyInMinutes = "appConsistentFrequencyInMinutes"
        case multiVmSyncStatus = "multiVmSyncStatus"
        }

  public init(multiVmSyncStatus: SetMultiVmSyncStatusEnum)  {
    self.multiVmSyncStatus = multiVmSyncStatus
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.recoveryPointHistory) {
        self.recoveryPointHistory = try container.decode(Int32?.self, forKey: .recoveryPointHistory)
    }
    if container.contains(.crashConsistentFrequencyInMinutes) {
        self.crashConsistentFrequencyInMinutes = try container.decode(Int32?.self, forKey: .crashConsistentFrequencyInMinutes)
    }
    if container.contains(.appConsistentFrequencyInMinutes) {
        self.appConsistentFrequencyInMinutes = try container.decode(Int32?.self, forKey: .appConsistentFrequencyInMinutes)
    }
    self.multiVmSyncStatus = try container.decode(SetMultiVmSyncStatusEnum.self, forKey: .multiVmSyncStatus)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.recoveryPointHistory != nil {try container.encode(self.recoveryPointHistory, forKey: .recoveryPointHistory)}
    if self.crashConsistentFrequencyInMinutes != nil {try container.encode(self.crashConsistentFrequencyInMinutes, forKey: .crashConsistentFrequencyInMinutes)}
    if self.appConsistentFrequencyInMinutes != nil {try container.encode(self.appConsistentFrequencyInMinutes, forKey: .appConsistentFrequencyInMinutes)}
    try container.encode(self.multiVmSyncStatus, forKey: .multiVmSyncStatus)
  }
}

extension DataFactory {
  public static func createA2APolicyCreationInputProtocol(multiVmSyncStatus: SetMultiVmSyncStatusEnum) -> A2APolicyCreationInputProtocol {
    return A2APolicyCreationInputData(multiVmSyncStatus: multiVmSyncStatus)
  }
}