// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SiteConfigData : SiteConfigProtocol {
    public var numberOfWorkers: Int32?
    public var defaultDocuments: [String]?
    public var netFrameworkVersion: String?
    public var phpVersion: String?
    public var pythonVersion: String?
    public var nodeVersion: String?
    public var linuxFxVersion: String?
    public var requestTracingEnabled: Bool?
    public var requestTracingExpirationTime: Date?
    public var remoteDebuggingEnabled: Bool?
    public var remoteDebuggingVersion: String?
    public var httpLoggingEnabled: Bool?
    public var logsDirectorySizeLimit: Int32?
    public var detailedErrorLoggingEnabled: Bool?
    public var publishingUsername: String?
    public var appSettings: [NameValuePairProtocol?]?
    public var connectionStrings: [ConnStringInfoProtocol?]?
    public var machineKey: SiteMachineKeyProtocol?
    public var handlerMappings: [HandlerMappingProtocol?]?
    public var documentRoot: String?
    public var scmType: ScmTypeEnum?
    public var use32BitWorkerProcess: Bool?
    public var webSocketsEnabled: Bool?
    public var alwaysOn: Bool?
    public var javaVersion: String?
    public var javaContainer: String?
    public var javaContainerVersion: String?
    public var appCommandLine: String?
    public var managedPipelineMode: ManagedPipelineModeEnum?
    public var virtualApplications: [VirtualApplicationProtocol?]?
    public var loadBalancing: SiteLoadBalancingEnum?
    public var experiments: ExperimentsProtocol?
    public var limits: SiteLimitsProtocol?
    public var autoHealEnabled: Bool?
    public var autoHealRules: AutoHealRulesProtocol?
    public var tracingOptions: String?
    public var vnetName: String?
    public var cors: CorsSettingsProtocol?
    public var push: PushSettingsProtocol?
    public var apiDefinition: ApiDefinitionInfoProtocol?
    public var autoSwapSlotName: String?
    public var localMySqlEnabled: Bool?
    public var ipSecurityRestrictions: [IpSecurityRestrictionProtocol?]?
    public var http20Enabled: Bool?
    public var minTlsVersion: SupportedTlsVersionsEnum?

        enum CodingKeys: String, CodingKey {case numberOfWorkers = "numberOfWorkers"
        case defaultDocuments = "defaultDocuments"
        case netFrameworkVersion = "netFrameworkVersion"
        case phpVersion = "phpVersion"
        case pythonVersion = "pythonVersion"
        case nodeVersion = "nodeVersion"
        case linuxFxVersion = "linuxFxVersion"
        case requestTracingEnabled = "requestTracingEnabled"
        case requestTracingExpirationTime = "requestTracingExpirationTime"
        case remoteDebuggingEnabled = "remoteDebuggingEnabled"
        case remoteDebuggingVersion = "remoteDebuggingVersion"
        case httpLoggingEnabled = "httpLoggingEnabled"
        case logsDirectorySizeLimit = "logsDirectorySizeLimit"
        case detailedErrorLoggingEnabled = "detailedErrorLoggingEnabled"
        case publishingUsername = "publishingUsername"
        case appSettings = "appSettings"
        case connectionStrings = "connectionStrings"
        case machineKey = "machineKey"
        case handlerMappings = "handlerMappings"
        case documentRoot = "documentRoot"
        case scmType = "scmType"
        case use32BitWorkerProcess = "use32BitWorkerProcess"
        case webSocketsEnabled = "webSocketsEnabled"
        case alwaysOn = "alwaysOn"
        case javaVersion = "javaVersion"
        case javaContainer = "javaContainer"
        case javaContainerVersion = "javaContainerVersion"
        case appCommandLine = "appCommandLine"
        case managedPipelineMode = "managedPipelineMode"
        case virtualApplications = "virtualApplications"
        case loadBalancing = "loadBalancing"
        case experiments = "experiments"
        case limits = "limits"
        case autoHealEnabled = "autoHealEnabled"
        case autoHealRules = "autoHealRules"
        case tracingOptions = "tracingOptions"
        case vnetName = "vnetName"
        case cors = "cors"
        case push = "push"
        case apiDefinition = "apiDefinition"
        case autoSwapSlotName = "autoSwapSlotName"
        case localMySqlEnabled = "localMySqlEnabled"
        case ipSecurityRestrictions = "ipSecurityRestrictions"
        case http20Enabled = "http20Enabled"
        case minTlsVersion = "minTlsVersion"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.numberOfWorkers) {
        self.numberOfWorkers = try container.decode(Int32?.self, forKey: .numberOfWorkers)
    }
    if container.contains(.defaultDocuments) {
        self.defaultDocuments = try container.decode([String]?.self, forKey: .defaultDocuments)
    }
    if container.contains(.netFrameworkVersion) {
        self.netFrameworkVersion = try container.decode(String?.self, forKey: .netFrameworkVersion)
    }
    if container.contains(.phpVersion) {
        self.phpVersion = try container.decode(String?.self, forKey: .phpVersion)
    }
    if container.contains(.pythonVersion) {
        self.pythonVersion = try container.decode(String?.self, forKey: .pythonVersion)
    }
    if container.contains(.nodeVersion) {
        self.nodeVersion = try container.decode(String?.self, forKey: .nodeVersion)
    }
    if container.contains(.linuxFxVersion) {
        self.linuxFxVersion = try container.decode(String?.self, forKey: .linuxFxVersion)
    }
    if container.contains(.requestTracingEnabled) {
        self.requestTracingEnabled = try container.decode(Bool?.self, forKey: .requestTracingEnabled)
    }
    if container.contains(.requestTracingExpirationTime) {
        self.requestTracingExpirationTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .requestTracingExpirationTime)), format: .dateTime)
    }
    if container.contains(.remoteDebuggingEnabled) {
        self.remoteDebuggingEnabled = try container.decode(Bool?.self, forKey: .remoteDebuggingEnabled)
    }
    if container.contains(.remoteDebuggingVersion) {
        self.remoteDebuggingVersion = try container.decode(String?.self, forKey: .remoteDebuggingVersion)
    }
    if container.contains(.httpLoggingEnabled) {
        self.httpLoggingEnabled = try container.decode(Bool?.self, forKey: .httpLoggingEnabled)
    }
    if container.contains(.logsDirectorySizeLimit) {
        self.logsDirectorySizeLimit = try container.decode(Int32?.self, forKey: .logsDirectorySizeLimit)
    }
    if container.contains(.detailedErrorLoggingEnabled) {
        self.detailedErrorLoggingEnabled = try container.decode(Bool?.self, forKey: .detailedErrorLoggingEnabled)
    }
    if container.contains(.publishingUsername) {
        self.publishingUsername = try container.decode(String?.self, forKey: .publishingUsername)
    }
    if container.contains(.appSettings) {
        self.appSettings = try container.decode([NameValuePairData?]?.self, forKey: .appSettings)
    }
    if container.contains(.connectionStrings) {
        self.connectionStrings = try container.decode([ConnStringInfoData?]?.self, forKey: .connectionStrings)
    }
    if container.contains(.machineKey) {
        self.machineKey = try container.decode(SiteMachineKeyData?.self, forKey: .machineKey)
    }
    if container.contains(.handlerMappings) {
        self.handlerMappings = try container.decode([HandlerMappingData?]?.self, forKey: .handlerMappings)
    }
    if container.contains(.documentRoot) {
        self.documentRoot = try container.decode(String?.self, forKey: .documentRoot)
    }
    if container.contains(.scmType) {
        self.scmType = try container.decode(ScmTypeEnum?.self, forKey: .scmType)
    }
    if container.contains(.use32BitWorkerProcess) {
        self.use32BitWorkerProcess = try container.decode(Bool?.self, forKey: .use32BitWorkerProcess)
    }
    if container.contains(.webSocketsEnabled) {
        self.webSocketsEnabled = try container.decode(Bool?.self, forKey: .webSocketsEnabled)
    }
    if container.contains(.alwaysOn) {
        self.alwaysOn = try container.decode(Bool?.self, forKey: .alwaysOn)
    }
    if container.contains(.javaVersion) {
        self.javaVersion = try container.decode(String?.self, forKey: .javaVersion)
    }
    if container.contains(.javaContainer) {
        self.javaContainer = try container.decode(String?.self, forKey: .javaContainer)
    }
    if container.contains(.javaContainerVersion) {
        self.javaContainerVersion = try container.decode(String?.self, forKey: .javaContainerVersion)
    }
    if container.contains(.appCommandLine) {
        self.appCommandLine = try container.decode(String?.self, forKey: .appCommandLine)
    }
    if container.contains(.managedPipelineMode) {
        self.managedPipelineMode = try container.decode(ManagedPipelineModeEnum?.self, forKey: .managedPipelineMode)
    }
    if container.contains(.virtualApplications) {
        self.virtualApplications = try container.decode([VirtualApplicationData?]?.self, forKey: .virtualApplications)
    }
    if container.contains(.loadBalancing) {
        self.loadBalancing = try container.decode(SiteLoadBalancingEnum?.self, forKey: .loadBalancing)
    }
    if container.contains(.experiments) {
        self.experiments = try container.decode(ExperimentsData?.self, forKey: .experiments)
    }
    if container.contains(.limits) {
        self.limits = try container.decode(SiteLimitsData?.self, forKey: .limits)
    }
    if container.contains(.autoHealEnabled) {
        self.autoHealEnabled = try container.decode(Bool?.self, forKey: .autoHealEnabled)
    }
    if container.contains(.autoHealRules) {
        self.autoHealRules = try container.decode(AutoHealRulesData?.self, forKey: .autoHealRules)
    }
    if container.contains(.tracingOptions) {
        self.tracingOptions = try container.decode(String?.self, forKey: .tracingOptions)
    }
    if container.contains(.vnetName) {
        self.vnetName = try container.decode(String?.self, forKey: .vnetName)
    }
    if container.contains(.cors) {
        self.cors = try container.decode(CorsSettingsData?.self, forKey: .cors)
    }
    if container.contains(.push) {
        self.push = try container.decode(PushSettingsData?.self, forKey: .push)
    }
    if container.contains(.apiDefinition) {
        self.apiDefinition = try container.decode(ApiDefinitionInfoData?.self, forKey: .apiDefinition)
    }
    if container.contains(.autoSwapSlotName) {
        self.autoSwapSlotName = try container.decode(String?.self, forKey: .autoSwapSlotName)
    }
    if container.contains(.localMySqlEnabled) {
        self.localMySqlEnabled = try container.decode(Bool?.self, forKey: .localMySqlEnabled)
    }
    if container.contains(.ipSecurityRestrictions) {
        self.ipSecurityRestrictions = try container.decode([IpSecurityRestrictionData?]?.self, forKey: .ipSecurityRestrictions)
    }
    if container.contains(.http20Enabled) {
        self.http20Enabled = try container.decode(Bool?.self, forKey: .http20Enabled)
    }
    if container.contains(.minTlsVersion) {
        self.minTlsVersion = try container.decode(SupportedTlsVersionsEnum?.self, forKey: .minTlsVersion)
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
    if self.numberOfWorkers != nil {try container.encode(self.numberOfWorkers, forKey: .numberOfWorkers)}
    if self.defaultDocuments != nil {try container.encode(self.defaultDocuments as! [String]?, forKey: .defaultDocuments)}
    if self.netFrameworkVersion != nil {try container.encode(self.netFrameworkVersion, forKey: .netFrameworkVersion)}
    if self.phpVersion != nil {try container.encode(self.phpVersion, forKey: .phpVersion)}
    if self.pythonVersion != nil {try container.encode(self.pythonVersion, forKey: .pythonVersion)}
    if self.nodeVersion != nil {try container.encode(self.nodeVersion, forKey: .nodeVersion)}
    if self.linuxFxVersion != nil {try container.encode(self.linuxFxVersion, forKey: .linuxFxVersion)}
    if self.requestTracingEnabled != nil {try container.encode(self.requestTracingEnabled, forKey: .requestTracingEnabled)}
    if self.requestTracingExpirationTime != nil {
        try container.encode(DateConverter.toString(date: self.requestTracingExpirationTime!, format: .dateTime), forKey: .requestTracingExpirationTime)
    }
    if self.remoteDebuggingEnabled != nil {try container.encode(self.remoteDebuggingEnabled, forKey: .remoteDebuggingEnabled)}
    if self.remoteDebuggingVersion != nil {try container.encode(self.remoteDebuggingVersion, forKey: .remoteDebuggingVersion)}
    if self.httpLoggingEnabled != nil {try container.encode(self.httpLoggingEnabled, forKey: .httpLoggingEnabled)}
    if self.logsDirectorySizeLimit != nil {try container.encode(self.logsDirectorySizeLimit, forKey: .logsDirectorySizeLimit)}
    if self.detailedErrorLoggingEnabled != nil {try container.encode(self.detailedErrorLoggingEnabled, forKey: .detailedErrorLoggingEnabled)}
    if self.publishingUsername != nil {try container.encode(self.publishingUsername, forKey: .publishingUsername)}
    if self.appSettings != nil {try container.encode(self.appSettings as! [NameValuePairData?]?, forKey: .appSettings)}
    if self.connectionStrings != nil {try container.encode(self.connectionStrings as! [ConnStringInfoData?]?, forKey: .connectionStrings)}
    if self.machineKey != nil {try container.encode(self.machineKey as! SiteMachineKeyData?, forKey: .machineKey)}
    if self.handlerMappings != nil {try container.encode(self.handlerMappings as! [HandlerMappingData?]?, forKey: .handlerMappings)}
    if self.documentRoot != nil {try container.encode(self.documentRoot, forKey: .documentRoot)}
    if self.scmType != nil {try container.encode(self.scmType, forKey: .scmType)}
    if self.use32BitWorkerProcess != nil {try container.encode(self.use32BitWorkerProcess, forKey: .use32BitWorkerProcess)}
    if self.webSocketsEnabled != nil {try container.encode(self.webSocketsEnabled, forKey: .webSocketsEnabled)}
    if self.alwaysOn != nil {try container.encode(self.alwaysOn, forKey: .alwaysOn)}
    if self.javaVersion != nil {try container.encode(self.javaVersion, forKey: .javaVersion)}
    if self.javaContainer != nil {try container.encode(self.javaContainer, forKey: .javaContainer)}
    if self.javaContainerVersion != nil {try container.encode(self.javaContainerVersion, forKey: .javaContainerVersion)}
    if self.appCommandLine != nil {try container.encode(self.appCommandLine, forKey: .appCommandLine)}
    if self.managedPipelineMode != nil {try container.encode(self.managedPipelineMode, forKey: .managedPipelineMode)}
    if self.virtualApplications != nil {try container.encode(self.virtualApplications as! [VirtualApplicationData?]?, forKey: .virtualApplications)}
    if self.loadBalancing != nil {try container.encode(self.loadBalancing, forKey: .loadBalancing)}
    if self.experiments != nil {try container.encode(self.experiments as! ExperimentsData?, forKey: .experiments)}
    if self.limits != nil {try container.encode(self.limits as! SiteLimitsData?, forKey: .limits)}
    if self.autoHealEnabled != nil {try container.encode(self.autoHealEnabled, forKey: .autoHealEnabled)}
    if self.autoHealRules != nil {try container.encode(self.autoHealRules as! AutoHealRulesData?, forKey: .autoHealRules)}
    if self.tracingOptions != nil {try container.encode(self.tracingOptions, forKey: .tracingOptions)}
    if self.vnetName != nil {try container.encode(self.vnetName, forKey: .vnetName)}
    if self.cors != nil {try container.encode(self.cors as! CorsSettingsData?, forKey: .cors)}
    if self.push != nil {try container.encode(self.push as! PushSettingsData?, forKey: .push)}
    if self.apiDefinition != nil {try container.encode(self.apiDefinition as! ApiDefinitionInfoData?, forKey: .apiDefinition)}
    if self.autoSwapSlotName != nil {try container.encode(self.autoSwapSlotName, forKey: .autoSwapSlotName)}
    if self.localMySqlEnabled != nil {try container.encode(self.localMySqlEnabled, forKey: .localMySqlEnabled)}
    if self.ipSecurityRestrictions != nil {try container.encode(self.ipSecurityRestrictions as! [IpSecurityRestrictionData?]?, forKey: .ipSecurityRestrictions)}
    if self.http20Enabled != nil {try container.encode(self.http20Enabled, forKey: .http20Enabled)}
    if self.minTlsVersion != nil {try container.encode(self.minTlsVersion, forKey: .minTlsVersion)}
  }
}

extension DataFactory {
  public static func createSiteConfigProtocol() -> SiteConfigProtocol {
    return SiteConfigData()
  }
}
