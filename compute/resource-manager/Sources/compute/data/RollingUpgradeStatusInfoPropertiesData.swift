// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RollingUpgradeStatusInfoPropertiesData : RollingUpgradeStatusInfoPropertiesProtocol {
    public var policy: RollingUpgradePolicyProtocol?
    public var runningStatus: RollingUpgradeRunningStatusProtocol?
    public var progress: RollingUpgradeProgressInfoProtocol?
    public var error: ApiErrorProtocol?

        enum CodingKeys: String, CodingKey {case policy = "policy"
        case runningStatus = "runningStatus"
        case progress = "progress"
        case error = "error"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.policy) {
        self.policy = try container.decode(RollingUpgradePolicyData?.self, forKey: .policy)
    }
    if container.contains(.runningStatus) {
        self.runningStatus = try container.decode(RollingUpgradeRunningStatusData?.self, forKey: .runningStatus)
    }
    if container.contains(.progress) {
        self.progress = try container.decode(RollingUpgradeProgressInfoData?.self, forKey: .progress)
    }
    if container.contains(.error) {
        self.error = try container.decode(ApiErrorData?.self, forKey: .error)
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
    if self.policy != nil {try container.encode(self.policy as! RollingUpgradePolicyData?, forKey: .policy)}
    if self.runningStatus != nil {try container.encode(self.runningStatus as! RollingUpgradeRunningStatusData?, forKey: .runningStatus)}
    if self.progress != nil {try container.encode(self.progress as! RollingUpgradeProgressInfoData?, forKey: .progress)}
    if self.error != nil {try container.encode(self.error as! ApiErrorData?, forKey: .error)}
  }
}

extension DataFactory {
  public static func createRollingUpgradeStatusInfoPropertiesProtocol() -> RollingUpgradeStatusInfoPropertiesProtocol {
    return RollingUpgradeStatusInfoPropertiesData()
  }
}
