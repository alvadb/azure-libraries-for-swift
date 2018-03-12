// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ServiceTierAdvisorPropertiesData : ServiceTierAdvisorPropertiesProtocol {
    public var observationPeriodStart: Date?
    public var observationPeriodEnd: Date?
    public var activeTimeRatio: Double?
    public var minDtu: Double?
    public var avgDtu: Double?
    public var maxDtu: Double?
    public var maxSizeInGB: Double?
    public var serviceLevelObjectiveUsageMetrics: [SloUsageMetricProtocol?]?
    public var currentServiceLevelObjective: String?
    public var currentServiceLevelObjectiveId: String?
    public var usageBasedRecommendationServiceLevelObjective: String?
    public var usageBasedRecommendationServiceLevelObjectiveId: String?
    public var databaseSizeBasedRecommendationServiceLevelObjective: String?
    public var databaseSizeBasedRecommendationServiceLevelObjectiveId: String?
    public var disasterPlanBasedRecommendationServiceLevelObjective: String?
    public var disasterPlanBasedRecommendationServiceLevelObjectiveId: String?
    public var overallRecommendationServiceLevelObjective: String?
    public var overallRecommendationServiceLevelObjectiveId: String?
    public var confidence: Double?

        enum CodingKeys: String, CodingKey {case observationPeriodStart = "observationPeriodStart"
        case observationPeriodEnd = "observationPeriodEnd"
        case activeTimeRatio = "activeTimeRatio"
        case minDtu = "minDtu"
        case avgDtu = "avgDtu"
        case maxDtu = "maxDtu"
        case maxSizeInGB = "maxSizeInGB"
        case serviceLevelObjectiveUsageMetrics = "serviceLevelObjectiveUsageMetrics"
        case currentServiceLevelObjective = "currentServiceLevelObjective"
        case currentServiceLevelObjectiveId = "currentServiceLevelObjectiveId"
        case usageBasedRecommendationServiceLevelObjective = "usageBasedRecommendationServiceLevelObjective"
        case usageBasedRecommendationServiceLevelObjectiveId = "usageBasedRecommendationServiceLevelObjectiveId"
        case databaseSizeBasedRecommendationServiceLevelObjective = "databaseSizeBasedRecommendationServiceLevelObjective"
        case databaseSizeBasedRecommendationServiceLevelObjectiveId = "databaseSizeBasedRecommendationServiceLevelObjectiveId"
        case disasterPlanBasedRecommendationServiceLevelObjective = "disasterPlanBasedRecommendationServiceLevelObjective"
        case disasterPlanBasedRecommendationServiceLevelObjectiveId = "disasterPlanBasedRecommendationServiceLevelObjectiveId"
        case overallRecommendationServiceLevelObjective = "overallRecommendationServiceLevelObjective"
        case overallRecommendationServiceLevelObjectiveId = "overallRecommendationServiceLevelObjectiveId"
        case confidence = "confidence"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.observationPeriodStart) {
        self.observationPeriodStart = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .observationPeriodStart)), format: .dateTime)
    }
    if container.contains(.observationPeriodEnd) {
        self.observationPeriodEnd = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .observationPeriodEnd)), format: .dateTime)
    }
    if container.contains(.activeTimeRatio) {
        self.activeTimeRatio = try container.decode(Double?.self, forKey: .activeTimeRatio)
    }
    if container.contains(.minDtu) {
        self.minDtu = try container.decode(Double?.self, forKey: .minDtu)
    }
    if container.contains(.avgDtu) {
        self.avgDtu = try container.decode(Double?.self, forKey: .avgDtu)
    }
    if container.contains(.maxDtu) {
        self.maxDtu = try container.decode(Double?.self, forKey: .maxDtu)
    }
    if container.contains(.maxSizeInGB) {
        self.maxSizeInGB = try container.decode(Double?.self, forKey: .maxSizeInGB)
    }
    if container.contains(.serviceLevelObjectiveUsageMetrics) {
        self.serviceLevelObjectiveUsageMetrics = try container.decode([SloUsageMetricData?]?.self, forKey: .serviceLevelObjectiveUsageMetrics)
    }
    if container.contains(.currentServiceLevelObjective) {
        self.currentServiceLevelObjective = try container.decode(String?.self, forKey: .currentServiceLevelObjective)
    }
    if container.contains(.currentServiceLevelObjectiveId) {
        self.currentServiceLevelObjectiveId = try container.decode(String?.self, forKey: .currentServiceLevelObjectiveId)
    }
    if container.contains(.usageBasedRecommendationServiceLevelObjective) {
        self.usageBasedRecommendationServiceLevelObjective = try container.decode(String?.self, forKey: .usageBasedRecommendationServiceLevelObjective)
    }
    if container.contains(.usageBasedRecommendationServiceLevelObjectiveId) {
        self.usageBasedRecommendationServiceLevelObjectiveId = try container.decode(String?.self, forKey: .usageBasedRecommendationServiceLevelObjectiveId)
    }
    if container.contains(.databaseSizeBasedRecommendationServiceLevelObjective) {
        self.databaseSizeBasedRecommendationServiceLevelObjective = try container.decode(String?.self, forKey: .databaseSizeBasedRecommendationServiceLevelObjective)
    }
    if container.contains(.databaseSizeBasedRecommendationServiceLevelObjectiveId) {
        self.databaseSizeBasedRecommendationServiceLevelObjectiveId = try container.decode(String?.self, forKey: .databaseSizeBasedRecommendationServiceLevelObjectiveId)
    }
    if container.contains(.disasterPlanBasedRecommendationServiceLevelObjective) {
        self.disasterPlanBasedRecommendationServiceLevelObjective = try container.decode(String?.self, forKey: .disasterPlanBasedRecommendationServiceLevelObjective)
    }
    if container.contains(.disasterPlanBasedRecommendationServiceLevelObjectiveId) {
        self.disasterPlanBasedRecommendationServiceLevelObjectiveId = try container.decode(String?.self, forKey: .disasterPlanBasedRecommendationServiceLevelObjectiveId)
    }
    if container.contains(.overallRecommendationServiceLevelObjective) {
        self.overallRecommendationServiceLevelObjective = try container.decode(String?.self, forKey: .overallRecommendationServiceLevelObjective)
    }
    if container.contains(.overallRecommendationServiceLevelObjectiveId) {
        self.overallRecommendationServiceLevelObjectiveId = try container.decode(String?.self, forKey: .overallRecommendationServiceLevelObjectiveId)
    }
    if container.contains(.confidence) {
        self.confidence = try container.decode(Double?.self, forKey: .confidence)
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
    if self.observationPeriodStart != nil {
        try container.encode(DateConverter.toString(date: self.observationPeriodStart!, format: .dateTime), forKey: .observationPeriodStart)
    }
    if self.observationPeriodEnd != nil {
        try container.encode(DateConverter.toString(date: self.observationPeriodEnd!, format: .dateTime), forKey: .observationPeriodEnd)
    }
    if self.activeTimeRatio != nil {try container.encode(self.activeTimeRatio, forKey: .activeTimeRatio)}
    if self.minDtu != nil {try container.encode(self.minDtu, forKey: .minDtu)}
    if self.avgDtu != nil {try container.encode(self.avgDtu, forKey: .avgDtu)}
    if self.maxDtu != nil {try container.encode(self.maxDtu, forKey: .maxDtu)}
    if self.maxSizeInGB != nil {try container.encode(self.maxSizeInGB, forKey: .maxSizeInGB)}
    if self.serviceLevelObjectiveUsageMetrics != nil {try container.encode(self.serviceLevelObjectiveUsageMetrics as! [SloUsageMetricData?]?, forKey: .serviceLevelObjectiveUsageMetrics)}
    if self.currentServiceLevelObjective != nil {try container.encode(self.currentServiceLevelObjective, forKey: .currentServiceLevelObjective)}
    if self.currentServiceLevelObjectiveId != nil {try container.encode(self.currentServiceLevelObjectiveId, forKey: .currentServiceLevelObjectiveId)}
    if self.usageBasedRecommendationServiceLevelObjective != nil {try container.encode(self.usageBasedRecommendationServiceLevelObjective, forKey: .usageBasedRecommendationServiceLevelObjective)}
    if self.usageBasedRecommendationServiceLevelObjectiveId != nil {try container.encode(self.usageBasedRecommendationServiceLevelObjectiveId, forKey: .usageBasedRecommendationServiceLevelObjectiveId)}
    if self.databaseSizeBasedRecommendationServiceLevelObjective != nil {try container.encode(self.databaseSizeBasedRecommendationServiceLevelObjective, forKey: .databaseSizeBasedRecommendationServiceLevelObjective)}
    if self.databaseSizeBasedRecommendationServiceLevelObjectiveId != nil {try container.encode(self.databaseSizeBasedRecommendationServiceLevelObjectiveId, forKey: .databaseSizeBasedRecommendationServiceLevelObjectiveId)}
    if self.disasterPlanBasedRecommendationServiceLevelObjective != nil {try container.encode(self.disasterPlanBasedRecommendationServiceLevelObjective, forKey: .disasterPlanBasedRecommendationServiceLevelObjective)}
    if self.disasterPlanBasedRecommendationServiceLevelObjectiveId != nil {try container.encode(self.disasterPlanBasedRecommendationServiceLevelObjectiveId, forKey: .disasterPlanBasedRecommendationServiceLevelObjectiveId)}
    if self.overallRecommendationServiceLevelObjective != nil {try container.encode(self.overallRecommendationServiceLevelObjective, forKey: .overallRecommendationServiceLevelObjective)}
    if self.overallRecommendationServiceLevelObjectiveId != nil {try container.encode(self.overallRecommendationServiceLevelObjectiveId, forKey: .overallRecommendationServiceLevelObjectiveId)}
    if self.confidence != nil {try container.encode(self.confidence, forKey: .confidence)}
  }
}

extension DataFactory {
  public static func createServiceTierAdvisorPropertiesProtocol() -> ServiceTierAdvisorPropertiesProtocol {
    return ServiceTierAdvisorPropertiesData()
  }
}