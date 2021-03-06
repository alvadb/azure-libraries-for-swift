// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AzureToAzureVmSyncedConfigDetailsData : AzureToAzureVmSyncedConfigDetailsProtocol {
    public var tags: [String:String]?
    public var roleAssignments: [RoleAssignmentProtocol?]?
    public var inputEndpoints: [InputEndpointProtocol?]?

        enum CodingKeys: String, CodingKey {case tags = "tags"
        case roleAssignments = "roleAssignments"
        case inputEndpoints = "inputEndpoints"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.tags) {
        self.tags = try container.decode([String:String]?.self, forKey: .tags)
    }
    if container.contains(.roleAssignments) {
        self.roleAssignments = try container.decode([RoleAssignmentData?]?.self, forKey: .roleAssignments)
    }
    if container.contains(.inputEndpoints) {
        self.inputEndpoints = try container.decode([InputEndpointData?]?.self, forKey: .inputEndpoints)
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
    if self.tags != nil {try container.encode(self.tags, forKey: .tags)}
    if self.roleAssignments != nil {try container.encode(self.roleAssignments as! [RoleAssignmentData?]?, forKey: .roleAssignments)}
    if self.inputEndpoints != nil {try container.encode(self.inputEndpoints as! [InputEndpointData?]?, forKey: .inputEndpoints)}
  }
}

extension DataFactory {
  public static func createAzureToAzureVmSyncedConfigDetailsProtocol() -> AzureToAzureVmSyncedConfigDetailsProtocol {
    return AzureToAzureVmSyncedConfigDetailsData()
  }
}
