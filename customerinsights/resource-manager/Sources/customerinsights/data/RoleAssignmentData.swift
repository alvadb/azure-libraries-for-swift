// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RoleAssignmentData : RoleAssignmentProtocol {
    public var tenantId: String?
    public var assignmentName: String?
    public var displayName: [String:String]?
    public var description: [String:String]?
    public var provisioningState: ProvisioningStatesEnum?
    public var role: RoleTypesEnum
    public var principals: [AssignmentPrincipalProtocol]
    public var profiles: ResourceSetDescriptionProtocol?
    public var interactions: ResourceSetDescriptionProtocol?
    public var links: ResourceSetDescriptionProtocol?
    public var kpis: ResourceSetDescriptionProtocol?
    public var sasPolicies: ResourceSetDescriptionProtocol?
    public var connectors: ResourceSetDescriptionProtocol?
    public var views: ResourceSetDescriptionProtocol?
    public var relationshipLinks: ResourceSetDescriptionProtocol?
    public var relationships: ResourceSetDescriptionProtocol?
    public var widgetTypes: ResourceSetDescriptionProtocol?
    public var roleAssignments: ResourceSetDescriptionProtocol?
    public var conflationPolicies: ResourceSetDescriptionProtocol?
    public var segments: ResourceSetDescriptionProtocol?

        enum CodingKeys: String, CodingKey {case tenantId = "tenantId"
        case assignmentName = "assignmentName"
        case displayName = "displayName"
        case description = "description"
        case provisioningState = "provisioningState"
        case role = "role"
        case principals = "principals"
        case profiles = "profiles"
        case interactions = "interactions"
        case links = "links"
        case kpis = "kpis"
        case sasPolicies = "sasPolicies"
        case connectors = "connectors"
        case views = "views"
        case relationshipLinks = "relationshipLinks"
        case relationships = "relationships"
        case widgetTypes = "widgetTypes"
        case roleAssignments = "roleAssignments"
        case conflationPolicies = "conflationPolicies"
        case segments = "segments"
        }

  public init(role: RoleTypesEnum, principals: [AssignmentPrincipalProtocol])  {
    self.role = role
    self.principals = principals
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.tenantId) {
        self.tenantId = try container.decode(String?.self, forKey: .tenantId)
    }
    if container.contains(.assignmentName) {
        self.assignmentName = try container.decode(String?.self, forKey: .assignmentName)
    }
    if container.contains(.displayName) {
        self.displayName = try container.decode([String:String]?.self, forKey: .displayName)
    }
    if container.contains(.description) {
        self.description = try container.decode([String:String]?.self, forKey: .description)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(ProvisioningStatesEnum?.self, forKey: .provisioningState)
    }
    self.role = try container.decode(RoleTypesEnum.self, forKey: .role)
    self.principals = try container.decode([AssignmentPrincipalData].self, forKey: .principals)
    if container.contains(.profiles) {
        self.profiles = try container.decode(ResourceSetDescriptionData?.self, forKey: .profiles)
    }
    if container.contains(.interactions) {
        self.interactions = try container.decode(ResourceSetDescriptionData?.self, forKey: .interactions)
    }
    if container.contains(.links) {
        self.links = try container.decode(ResourceSetDescriptionData?.self, forKey: .links)
    }
    if container.contains(.kpis) {
        self.kpis = try container.decode(ResourceSetDescriptionData?.self, forKey: .kpis)
    }
    if container.contains(.sasPolicies) {
        self.sasPolicies = try container.decode(ResourceSetDescriptionData?.self, forKey: .sasPolicies)
    }
    if container.contains(.connectors) {
        self.connectors = try container.decode(ResourceSetDescriptionData?.self, forKey: .connectors)
    }
    if container.contains(.views) {
        self.views = try container.decode(ResourceSetDescriptionData?.self, forKey: .views)
    }
    if container.contains(.relationshipLinks) {
        self.relationshipLinks = try container.decode(ResourceSetDescriptionData?.self, forKey: .relationshipLinks)
    }
    if container.contains(.relationships) {
        self.relationships = try container.decode(ResourceSetDescriptionData?.self, forKey: .relationships)
    }
    if container.contains(.widgetTypes) {
        self.widgetTypes = try container.decode(ResourceSetDescriptionData?.self, forKey: .widgetTypes)
    }
    if container.contains(.roleAssignments) {
        self.roleAssignments = try container.decode(ResourceSetDescriptionData?.self, forKey: .roleAssignments)
    }
    if container.contains(.conflationPolicies) {
        self.conflationPolicies = try container.decode(ResourceSetDescriptionData?.self, forKey: .conflationPolicies)
    }
    if container.contains(.segments) {
        self.segments = try container.decode(ResourceSetDescriptionData?.self, forKey: .segments)
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
    if self.tenantId != nil {try container.encode(self.tenantId, forKey: .tenantId)}
    if self.assignmentName != nil {try container.encode(self.assignmentName, forKey: .assignmentName)}
    if self.displayName != nil {try container.encode(self.displayName, forKey: .displayName)}
    if self.description != nil {try container.encode(self.description, forKey: .description)}
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
    try container.encode(self.role, forKey: .role)
    try container.encode(self.principals as! [AssignmentPrincipalData], forKey: .principals)
    if self.profiles != nil {try container.encode(self.profiles as! ResourceSetDescriptionData?, forKey: .profiles)}
    if self.interactions != nil {try container.encode(self.interactions as! ResourceSetDescriptionData?, forKey: .interactions)}
    if self.links != nil {try container.encode(self.links as! ResourceSetDescriptionData?, forKey: .links)}
    if self.kpis != nil {try container.encode(self.kpis as! ResourceSetDescriptionData?, forKey: .kpis)}
    if self.sasPolicies != nil {try container.encode(self.sasPolicies as! ResourceSetDescriptionData?, forKey: .sasPolicies)}
    if self.connectors != nil {try container.encode(self.connectors as! ResourceSetDescriptionData?, forKey: .connectors)}
    if self.views != nil {try container.encode(self.views as! ResourceSetDescriptionData?, forKey: .views)}
    if self.relationshipLinks != nil {try container.encode(self.relationshipLinks as! ResourceSetDescriptionData?, forKey: .relationshipLinks)}
    if self.relationships != nil {try container.encode(self.relationships as! ResourceSetDescriptionData?, forKey: .relationships)}
    if self.widgetTypes != nil {try container.encode(self.widgetTypes as! ResourceSetDescriptionData?, forKey: .widgetTypes)}
    if self.roleAssignments != nil {try container.encode(self.roleAssignments as! ResourceSetDescriptionData?, forKey: .roleAssignments)}
    if self.conflationPolicies != nil {try container.encode(self.conflationPolicies as! ResourceSetDescriptionData?, forKey: .conflationPolicies)}
    if self.segments != nil {try container.encode(self.segments as! ResourceSetDescriptionData?, forKey: .segments)}
  }
}

extension DataFactory {
  public static func createRoleAssignmentProtocol(role: RoleTypesEnum, principals: [AssignmentPrincipalProtocol]) -> RoleAssignmentProtocol {
    return RoleAssignmentData(role: role, principals: principals)
  }
}
