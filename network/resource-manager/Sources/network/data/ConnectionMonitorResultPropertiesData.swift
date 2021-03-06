// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ConnectionMonitorResultPropertiesData : ConnectionMonitorResultPropertiesProtocol, ConnectionMonitorParametersProtocol {
    public var source: ConnectionMonitorSourceProtocol
    public var destination: ConnectionMonitorDestinationProtocol
    public var autoStart: Bool?
    public var monitoringIntervalInSeconds: Int32?
    public var provisioningState: ProvisioningStateEnum?
    public var startTime: Date?
    public var monitoringStatus: String?

        enum CodingKeys: String, CodingKey {case source = "source"
        case destination = "destination"
        case autoStart = "autoStart"
        case monitoringIntervalInSeconds = "monitoringIntervalInSeconds"
        case provisioningState = "provisioningState"
        case startTime = "startTime"
        case monitoringStatus = "monitoringStatus"
        }

  public init(source: ConnectionMonitorSourceProtocol, destination: ConnectionMonitorDestinationProtocol)  {
    self.source = source
    self.destination = destination
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.source = try container.decode(ConnectionMonitorSourceData.self, forKey: .source)
    self.destination = try container.decode(ConnectionMonitorDestinationData.self, forKey: .destination)
    if container.contains(.autoStart) {
        self.autoStart = try container.decode(Bool?.self, forKey: .autoStart)
    }
    if container.contains(.monitoringIntervalInSeconds) {
        self.monitoringIntervalInSeconds = try container.decode(Int32?.self, forKey: .monitoringIntervalInSeconds)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(ProvisioningStateEnum?.self, forKey: .provisioningState)
    }
    if container.contains(.startTime) {
        self.startTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .startTime)), format: .dateTime)
    }
    if container.contains(.monitoringStatus) {
        self.monitoringStatus = try container.decode(String?.self, forKey: .monitoringStatus)
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
    try container.encode(self.source as! ConnectionMonitorSourceData, forKey: .source)
    try container.encode(self.destination as! ConnectionMonitorDestinationData, forKey: .destination)
    if self.autoStart != nil {try container.encode(self.autoStart, forKey: .autoStart)}
    if self.monitoringIntervalInSeconds != nil {try container.encode(self.monitoringIntervalInSeconds, forKey: .monitoringIntervalInSeconds)}
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
    if self.startTime != nil {
        try container.encode(DateConverter.toString(date: self.startTime!, format: .dateTime), forKey: .startTime)
    }
    if self.monitoringStatus != nil {try container.encode(self.monitoringStatus, forKey: .monitoringStatus)}
  }
}

extension DataFactory {
  public static func createConnectionMonitorResultPropertiesProtocol(source: ConnectionMonitorSourceProtocol, destination: ConnectionMonitorDestinationProtocol) -> ConnectionMonitorResultPropertiesProtocol {
    return ConnectionMonitorResultPropertiesData(source: source, destination: destination)
  }
}
