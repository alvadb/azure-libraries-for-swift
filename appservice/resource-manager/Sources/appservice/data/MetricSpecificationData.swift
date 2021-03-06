// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct MetricSpecificationData : MetricSpecificationProtocol {
    public var name: String?
    public var displayName: String?
    public var displayDescription: String?
    public var unit: String?
    public var aggregationType: String?
    public var supportsInstanceLevelAggregation: Bool?
    public var enableRegionalMdmAccount: Bool?
    public var sourceMdmAccount: String?
    public var sourceMdmNamespace: String?
    public var metricFilterPattern: String?
    public var fillGapWithZero: Bool?
    public var isInternal: Bool?
    public var dimensions: [DimensionProtocol?]?
    public var category: String?
    public var availabilities: [MetricAvailabilityProtocol?]?

        enum CodingKeys: String, CodingKey {case name = "name"
        case displayName = "displayName"
        case displayDescription = "displayDescription"
        case unit = "unit"
        case aggregationType = "aggregationType"
        case supportsInstanceLevelAggregation = "supportsInstanceLevelAggregation"
        case enableRegionalMdmAccount = "enableRegionalMdmAccount"
        case sourceMdmAccount = "sourceMdmAccount"
        case sourceMdmNamespace = "sourceMdmNamespace"
        case metricFilterPattern = "metricFilterPattern"
        case fillGapWithZero = "fillGapWithZero"
        case isInternal = "isInternal"
        case dimensions = "dimensions"
        case category = "category"
        case availabilities = "availabilities"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.displayName) {
        self.displayName = try container.decode(String?.self, forKey: .displayName)
    }
    if container.contains(.displayDescription) {
        self.displayDescription = try container.decode(String?.self, forKey: .displayDescription)
    }
    if container.contains(.unit) {
        self.unit = try container.decode(String?.self, forKey: .unit)
    }
    if container.contains(.aggregationType) {
        self.aggregationType = try container.decode(String?.self, forKey: .aggregationType)
    }
    if container.contains(.supportsInstanceLevelAggregation) {
        self.supportsInstanceLevelAggregation = try container.decode(Bool?.self, forKey: .supportsInstanceLevelAggregation)
    }
    if container.contains(.enableRegionalMdmAccount) {
        self.enableRegionalMdmAccount = try container.decode(Bool?.self, forKey: .enableRegionalMdmAccount)
    }
    if container.contains(.sourceMdmAccount) {
        self.sourceMdmAccount = try container.decode(String?.self, forKey: .sourceMdmAccount)
    }
    if container.contains(.sourceMdmNamespace) {
        self.sourceMdmNamespace = try container.decode(String?.self, forKey: .sourceMdmNamespace)
    }
    if container.contains(.metricFilterPattern) {
        self.metricFilterPattern = try container.decode(String?.self, forKey: .metricFilterPattern)
    }
    if container.contains(.fillGapWithZero) {
        self.fillGapWithZero = try container.decode(Bool?.self, forKey: .fillGapWithZero)
    }
    if container.contains(.isInternal) {
        self.isInternal = try container.decode(Bool?.self, forKey: .isInternal)
    }
    if container.contains(.dimensions) {
        self.dimensions = try container.decode([DimensionData?]?.self, forKey: .dimensions)
    }
    if container.contains(.category) {
        self.category = try container.decode(String?.self, forKey: .category)
    }
    if container.contains(.availabilities) {
        self.availabilities = try container.decode([MetricAvailabilityData?]?.self, forKey: .availabilities)
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
    if self.name != nil {try container.encode(self.name, forKey: .name)}
    if self.displayName != nil {try container.encode(self.displayName, forKey: .displayName)}
    if self.displayDescription != nil {try container.encode(self.displayDescription, forKey: .displayDescription)}
    if self.unit != nil {try container.encode(self.unit, forKey: .unit)}
    if self.aggregationType != nil {try container.encode(self.aggregationType, forKey: .aggregationType)}
    if self.supportsInstanceLevelAggregation != nil {try container.encode(self.supportsInstanceLevelAggregation, forKey: .supportsInstanceLevelAggregation)}
    if self.enableRegionalMdmAccount != nil {try container.encode(self.enableRegionalMdmAccount, forKey: .enableRegionalMdmAccount)}
    if self.sourceMdmAccount != nil {try container.encode(self.sourceMdmAccount, forKey: .sourceMdmAccount)}
    if self.sourceMdmNamespace != nil {try container.encode(self.sourceMdmNamespace, forKey: .sourceMdmNamespace)}
    if self.metricFilterPattern != nil {try container.encode(self.metricFilterPattern, forKey: .metricFilterPattern)}
    if self.fillGapWithZero != nil {try container.encode(self.fillGapWithZero, forKey: .fillGapWithZero)}
    if self.isInternal != nil {try container.encode(self.isInternal, forKey: .isInternal)}
    if self.dimensions != nil {try container.encode(self.dimensions as! [DimensionData?]?, forKey: .dimensions)}
    if self.category != nil {try container.encode(self.category, forKey: .category)}
    if self.availabilities != nil {try container.encode(self.availabilities as! [MetricAvailabilityData?]?, forKey: .availabilities)}
  }
}

extension DataFactory {
  public static func createMetricSpecificationProtocol() -> MetricSpecificationProtocol {
    return MetricSpecificationData()
  }
}
