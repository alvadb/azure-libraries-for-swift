// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct FileServerBasePropertiesData : FileServerBasePropertiesProtocol {
    public var vmSize: String
    public var sshConfiguration: SshConfigurationProtocol
    public var dataDisks: DataDisksProtocol
    public var subnet: ResourceIdProtocol?

        enum CodingKeys: String, CodingKey {case vmSize = "vmSize"
        case sshConfiguration = "sshConfiguration"
        case dataDisks = "dataDisks"
        case subnet = "subnet"
        }

  public init(vmSize: String, sshConfiguration: SshConfigurationProtocol, dataDisks: DataDisksProtocol)  {
    self.vmSize = vmSize
    self.sshConfiguration = sshConfiguration
    self.dataDisks = dataDisks
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.vmSize = try container.decode(String.self, forKey: .vmSize)
    self.sshConfiguration = try container.decode(SshConfigurationData.self, forKey: .sshConfiguration)
    self.dataDisks = try container.decode(DataDisksData.self, forKey: .dataDisks)
    if container.contains(.subnet) {
        self.subnet = try container.decode(ResourceIdData?.self, forKey: .subnet)
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
    try container.encode(self.vmSize, forKey: .vmSize)
    try container.encode(self.sshConfiguration as! SshConfigurationData, forKey: .sshConfiguration)
    try container.encode(self.dataDisks as! DataDisksData, forKey: .dataDisks)
    if self.subnet != nil {try container.encode(self.subnet as! ResourceIdData?, forKey: .subnet)}
  }
}

extension DataFactory {
  public static func createFileServerBasePropertiesProtocol(vmSize: String, sshConfiguration: SshConfigurationProtocol, dataDisks: DataDisksProtocol) -> FileServerBasePropertiesProtocol {
    return FileServerBasePropertiesData(vmSize: vmSize, sshConfiguration: sshConfiguration, dataDisks: dataDisks)
  }
}
