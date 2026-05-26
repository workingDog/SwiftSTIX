import Foundation

/// Attack Patterns are a type of TTP that describe ways that adversaries attempt to compromise targets.
public struct AttackPattern: STIXObjectProtocol, Equatable {
    public static let stixType = "attack-pattern"
    public var type: String = "attack-pattern"
    public var specVersion: STIXSpecificationVersion = .v21
    public var id: STIXIdentifier
    public var createdByRef: STIXIdentifier?
    public var labels: [String]?
    public var created: Date
    public var modified: Date
    public var revoked: Bool?
    public var confidence: Int?
    public var lang: String?
    public var externalReferences: [ExternalReference]?
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var extensions: [String: STIXValue]?
    public var aliases: [String]?
    public var name: String
    public var description: String?
    public var killChainPhases: [KillChainPhase]?

    public init(type: String = "attack-pattern", specVersion: STIXSpecificationVersion = .v21, id: STIXIdentifier, createdByRef: STIXIdentifier? = nil, labels: [String]? = nil, created: Date, modified: Date, revoked: Bool? = nil, confidence: Int? = nil, lang: String? = nil, externalReferences: [ExternalReference]? = nil, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, extensions: [String: STIXValue]? = nil, aliases: [String]? = nil, name: String, description: String? = nil, killChainPhases: [KillChainPhase]? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.id = id
        self.createdByRef = createdByRef
        self.labels = labels
        self.created = created
        self.modified = modified
        self.revoked = revoked
        self.confidence = confidence
        self.lang = lang
        self.externalReferences = externalReferences
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.extensions = extensions
        self.aliases = aliases
        self.name = name
        self.description = description
        self.killChainPhases = killChainPhases
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case id
        case createdByRef = "created_by_ref"
        case labels
        case created
        case modified
        case revoked
        case confidence
        case lang
        case externalReferences = "external_references"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case extensions
        case aliases
        case name
        case description
        case killChainPhases = "kill_chain_phases"
    }
}

/// A Campaign is a grouping of adversary behavior that describes a set of malicious activities or attacks that occur over a period of time against a specific set of targets.
public struct Campaign: STIXObjectProtocol, Equatable {
    public static let stixType = "campaign"
    public var type: String = "campaign"
    public var specVersion: STIXSpecificationVersion = .v21
    public var id: STIXIdentifier
    public var createdByRef: STIXIdentifier?
    public var labels: [String]?
    public var created: Date
    public var modified: Date
    public var revoked: Bool?
    public var confidence: Int?
    public var lang: String?
    public var externalReferences: [ExternalReference]?
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var extensions: [String: STIXValue]?
    public var name: String
    public var description: String?
    public var aliases: [String]?
    public var firstSeen: Date?
    public var lastSeen: Date?
    public var objective: String?

    public init(type: String = "campaign", specVersion: STIXSpecificationVersion = .v21, id: STIXIdentifier, createdByRef: STIXIdentifier? = nil, labels: [String]? = nil, created: Date, modified: Date, revoked: Bool? = nil, confidence: Int? = nil, lang: String? = nil, externalReferences: [ExternalReference]? = nil, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, extensions: [String: STIXValue]? = nil, name: String, description: String? = nil, aliases: [String]? = nil, firstSeen: Date? = nil, lastSeen: Date? = nil, objective: String? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.id = id
        self.createdByRef = createdByRef
        self.labels = labels
        self.created = created
        self.modified = modified
        self.revoked = revoked
        self.confidence = confidence
        self.lang = lang
        self.externalReferences = externalReferences
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.extensions = extensions
        self.name = name
        self.description = description
        self.aliases = aliases
        self.firstSeen = firstSeen
        self.lastSeen = lastSeen
        self.objective = objective
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case id
        case createdByRef = "created_by_ref"
        case labels
        case created
        case modified
        case revoked
        case confidence
        case lang
        case externalReferences = "external_references"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case extensions
        case name
        case description
        case aliases
        case firstSeen = "first_seen"
        case lastSeen = "last_seen"
        case objective
    }
}

/// A Course of Action is an action taken either to prevent an attack or to respond to an attack that is in progress.
public struct CourseOfAction: STIXObjectProtocol, Equatable {
    public static let stixType = "course-of-action"
    public var type: String = "course-of-action"
    public var specVersion: STIXSpecificationVersion = .v21
    public var id: STIXIdentifier
    public var createdByRef: STIXIdentifier?
    public var labels: [String]?
    public var created: Date
    public var modified: Date
    public var revoked: Bool?
    public var confidence: Int?
    public var lang: String?
    public var externalReferences: [ExternalReference]?
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var extensions: [String: STIXValue]?
    public var name: String
    public var description: String?

    public init(type: String = "course-of-action", specVersion: STIXSpecificationVersion = .v21, id: STIXIdentifier, createdByRef: STIXIdentifier? = nil, labels: [String]? = nil, created: Date, modified: Date, revoked: Bool? = nil, confidence: Int? = nil, lang: String? = nil, externalReferences: [ExternalReference]? = nil, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, extensions: [String: STIXValue]? = nil, name: String, description: String? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.id = id
        self.createdByRef = createdByRef
        self.labels = labels
        self.created = created
        self.modified = modified
        self.revoked = revoked
        self.confidence = confidence
        self.lang = lang
        self.externalReferences = externalReferences
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.extensions = extensions
        self.name = name
        self.description = description
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case id
        case createdByRef = "created_by_ref"
        case labels
        case created
        case modified
        case revoked
        case confidence
        case lang
        case externalReferences = "external_references"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case extensions
        case name
        case description
    }
}

/// A Grouping object explicitly asserts that the referenced STIX Objects have a shared content.
public struct Grouping: STIXObjectProtocol, Equatable {
    public static let stixType = "grouping"
    public var type: String = "grouping"
    public var specVersion: STIXSpecificationVersion = .v21
    public var id: STIXIdentifier
    public var createdByRef: STIXIdentifier?
    public var labels: [String]?
    public var created: Date
    public var modified: Date
    public var revoked: Bool?
    public var confidence: Int?
    public var lang: String?
    public var externalReferences: [ExternalReference]?
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var extensions: [String: STIXValue]?
    public var name: String?
    public var description: String?
    public var context: String
    public var objectRefs: [STIXIdentifier]

    public init(type: String = "grouping", specVersion: STIXSpecificationVersion = .v21, id: STIXIdentifier, createdByRef: STIXIdentifier? = nil, labels: [String]? = nil, created: Date, modified: Date, revoked: Bool? = nil, confidence: Int? = nil, lang: String? = nil, externalReferences: [ExternalReference]? = nil, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, extensions: [String: STIXValue]? = nil, name: String? = nil, description: String? = nil, context: String, objectRefs: [STIXIdentifier]) {
        self.type = type
        self.specVersion = specVersion
        self.id = id
        self.createdByRef = createdByRef
        self.labels = labels
        self.created = created
        self.modified = modified
        self.revoked = revoked
        self.confidence = confidence
        self.lang = lang
        self.externalReferences = externalReferences
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.extensions = extensions
        self.name = name
        self.description = description
        self.context = context
        self.objectRefs = objectRefs
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case id
        case createdByRef = "created_by_ref"
        case labels
        case created
        case modified
        case revoked
        case confidence
        case lang
        case externalReferences = "external_references"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case extensions
        case name
        case description
        case context
        case objectRefs = "object_refs"
    }
}

/// Identities can represent actual individuals, organizations, or groups (e.g., ACME, Inc.) as well as classes of individuals, organizations, or groups.
public struct Identity: STIXObjectProtocol, Equatable {
    public static let stixType = "identity"
    public var type: String = "identity"
    public var specVersion: STIXSpecificationVersion = .v21
    public var id: STIXIdentifier
    public var createdByRef: STIXIdentifier?
    public var labels: [String]?
    public var created: Date
    public var modified: Date
    public var revoked: Bool?
    public var confidence: Int?
    public var lang: String?
    public var externalReferences: [ExternalReference]?
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var extensions: [String: STIXValue]?
    public var roles: [String]?
    public var name: String
    public var description: String?
    public var identityClass: String?
    public var sectors: [String]?
    public var contactInformation: String?

    public init(type: String = "identity", specVersion: STIXSpecificationVersion = .v21, id: STIXIdentifier, createdByRef: STIXIdentifier? = nil, labels: [String]? = nil, created: Date, modified: Date, revoked: Bool? = nil, confidence: Int? = nil, lang: String? = nil, externalReferences: [ExternalReference]? = nil, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, extensions: [String: STIXValue]? = nil, roles: [String]? = nil, name: String, description: String? = nil, identityClass: String? = nil, sectors: [String]? = nil, contactInformation: String? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.id = id
        self.createdByRef = createdByRef
        self.labels = labels
        self.created = created
        self.modified = modified
        self.revoked = revoked
        self.confidence = confidence
        self.lang = lang
        self.externalReferences = externalReferences
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.extensions = extensions
        self.roles = roles
        self.name = name
        self.description = description
        self.identityClass = identityClass
        self.sectors = sectors
        self.contactInformation = contactInformation
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case id
        case createdByRef = "created_by_ref"
        case labels
        case created
        case modified
        case revoked
        case confidence
        case lang
        case externalReferences = "external_references"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case extensions
        case roles
        case name
        case description
        case identityClass = "identity_class"
        case sectors
        case contactInformation = "contact_information"
    }
}

/// The Incident object in STIX 2.1 is a stub, to be expanded in future STIX 2 releases.
public struct Incident: STIXObjectProtocol, Equatable {
    public static let stixType = "incident"
    public var type: String = "incident"
    public var specVersion: STIXSpecificationVersion = .v21
    public var id: STIXIdentifier
    public var createdByRef: STIXIdentifier?
    public var labels: [String]?
    public var created: Date
    public var modified: Date
    public var revoked: Bool?
    public var confidence: Int?
    public var lang: String?
    public var externalReferences: [ExternalReference]?
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var extensions: [String: STIXValue]?
    public var name: String
    public var description: String?

    public init(type: String = "incident", specVersion: STIXSpecificationVersion = .v21, id: STIXIdentifier, createdByRef: STIXIdentifier? = nil, labels: [String]? = nil, created: Date, modified: Date, revoked: Bool? = nil, confidence: Int? = nil, lang: String? = nil, externalReferences: [ExternalReference]? = nil, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, extensions: [String: STIXValue]? = nil, name: String, description: String? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.id = id
        self.createdByRef = createdByRef
        self.labels = labels
        self.created = created
        self.modified = modified
        self.revoked = revoked
        self.confidence = confidence
        self.lang = lang
        self.externalReferences = externalReferences
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.extensions = extensions
        self.name = name
        self.description = description
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case id
        case createdByRef = "created_by_ref"
        case labels
        case created
        case modified
        case revoked
        case confidence
        case lang
        case externalReferences = "external_references"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case extensions
        case name
        case description
    }
}

/// Indicators contain a pattern that can be used to detect suspicious or malicious cyber activity.
public struct Indicator: STIXObjectProtocol, Equatable {
    public static let stixType = "indicator"
    public var type: String = "indicator"
    public var specVersion: STIXSpecificationVersion = .v21
    public var id: STIXIdentifier
    public var createdByRef: STIXIdentifier?
    public var labels: [String]?
    public var created: Date
    public var modified: Date
    public var revoked: Bool?
    public var confidence: Int?
    public var lang: String?
    public var externalReferences: [ExternalReference]?
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var extensions: [String: STIXValue]?
    public var indicatorTypes: [String]?
    public var name: String?
    public var description: String?
    public var pattern: String
    public var patternType: String
    public var patternVersion: String?
    public var validFrom: Date
    public var validUntil: Date?
    public var killChainPhases: [KillChainPhase]?

    public init(type: String = "indicator", specVersion: STIXSpecificationVersion = .v21, id: STIXIdentifier, createdByRef: STIXIdentifier? = nil, labels: [String]? = nil, created: Date, modified: Date, revoked: Bool? = nil, confidence: Int? = nil, lang: String? = nil, externalReferences: [ExternalReference]? = nil, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, extensions: [String: STIXValue]? = nil, indicatorTypes: [String]? = nil, name: String? = nil, description: String? = nil, pattern: String, patternType: String, patternVersion: String? = nil, validFrom: Date, validUntil: Date? = nil, killChainPhases: [KillChainPhase]? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.id = id
        self.createdByRef = createdByRef
        self.labels = labels
        self.created = created
        self.modified = modified
        self.revoked = revoked
        self.confidence = confidence
        self.lang = lang
        self.externalReferences = externalReferences
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.extensions = extensions
        self.indicatorTypes = indicatorTypes
        self.name = name
        self.description = description
        self.pattern = pattern
        self.patternType = patternType
        self.patternVersion = patternVersion
        self.validFrom = validFrom
        self.validUntil = validUntil
        self.killChainPhases = killChainPhases
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case id
        case createdByRef = "created_by_ref"
        case labels
        case created
        case modified
        case revoked
        case confidence
        case lang
        case externalReferences = "external_references"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case extensions
        case indicatorTypes = "indicator_types"
        case name
        case description
        case pattern
        case patternType = "pattern_type"
        case patternVersion = "pattern_version"
        case validFrom = "valid_from"
        case validUntil = "valid_until"
        case killChainPhases = "kill_chain_phases"
    }
}

/// Infrastructure objects describe systems, software services, and associated physical or virtual resources.
public struct Infrastructure: STIXObjectProtocol, Equatable {
    public static let stixType = "infrastructure"
    public var type: String = "infrastructure"
    public var specVersion: STIXSpecificationVersion = .v21
    public var id: STIXIdentifier
    public var createdByRef: STIXIdentifier?
    public var labels: [String]?
    public var created: Date
    public var modified: Date
    public var revoked: Bool?
    public var confidence: Int?
    public var lang: String?
    public var externalReferences: [ExternalReference]?
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var extensions: [String: STIXValue]?
    public var name: String
    public var description: String?
    public var infrastructureTypes: [String]?
    public var aliases: [String]?
    public var killChainPhases: [KillChainPhase]?
    public var firstSeen: Date?
    public var lastSeen: Date?

    public init(type: String = "infrastructure", specVersion: STIXSpecificationVersion = .v21, id: STIXIdentifier, createdByRef: STIXIdentifier? = nil, labels: [String]? = nil, created: Date, modified: Date, revoked: Bool? = nil, confidence: Int? = nil, lang: String? = nil, externalReferences: [ExternalReference]? = nil, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, extensions: [String: STIXValue]? = nil, name: String, description: String? = nil, infrastructureTypes: [String]? = nil, aliases: [String]? = nil, killChainPhases: [KillChainPhase]? = nil, firstSeen: Date? = nil, lastSeen: Date? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.id = id
        self.createdByRef = createdByRef
        self.labels = labels
        self.created = created
        self.modified = modified
        self.revoked = revoked
        self.confidence = confidence
        self.lang = lang
        self.externalReferences = externalReferences
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.extensions = extensions
        self.name = name
        self.description = description
        self.infrastructureTypes = infrastructureTypes
        self.aliases = aliases
        self.killChainPhases = killChainPhases
        self.firstSeen = firstSeen
        self.lastSeen = lastSeen
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case id
        case createdByRef = "created_by_ref"
        case labels
        case created
        case modified
        case revoked
        case confidence
        case lang
        case externalReferences = "external_references"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case extensions
        case name
        case description
        case infrastructureTypes = "infrastructure_types"
        case aliases
        case killChainPhases = "kill_chain_phases"
        case firstSeen = "first_seen"
        case lastSeen = "last_seen"
    }
}

/// An Intrusion Set is a grouped set of adversary behavior and resources with common properties that is believed to be orchestrated by a single organization.
public struct IntrusionSet: STIXObjectProtocol, Equatable {
    public static let stixType = "intrusion-set"
    public var type: String = "intrusion-set"
    public var specVersion: STIXSpecificationVersion = .v21
    public var id: STIXIdentifier
    public var createdByRef: STIXIdentifier?
    public var labels: [String]?
    public var created: Date
    public var modified: Date
    public var revoked: Bool?
    public var confidence: Int?
    public var lang: String?
    public var externalReferences: [ExternalReference]?
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var extensions: [String: STIXValue]?
    public var name: String
    public var description: String?
    public var aliases: [String]?
    public var firstSeen: Date?
    public var lastSeen: Date?
    public var goals: [String]?
    public var resourceLevel: String?
    public var primaryMotivation: String?
    public var secondaryMotivations: [String]?

    public init(type: String = "intrusion-set", specVersion: STIXSpecificationVersion = .v21, id: STIXIdentifier, createdByRef: STIXIdentifier? = nil, labels: [String]? = nil, created: Date, modified: Date, revoked: Bool? = nil, confidence: Int? = nil, lang: String? = nil, externalReferences: [ExternalReference]? = nil, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, extensions: [String: STIXValue]? = nil, name: String, description: String? = nil, aliases: [String]? = nil, firstSeen: Date? = nil, lastSeen: Date? = nil, goals: [String]? = nil, resourceLevel: String? = nil, primaryMotivation: String? = nil, secondaryMotivations: [String]? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.id = id
        self.createdByRef = createdByRef
        self.labels = labels
        self.created = created
        self.modified = modified
        self.revoked = revoked
        self.confidence = confidence
        self.lang = lang
        self.externalReferences = externalReferences
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.extensions = extensions
        self.name = name
        self.description = description
        self.aliases = aliases
        self.firstSeen = firstSeen
        self.lastSeen = lastSeen
        self.goals = goals
        self.resourceLevel = resourceLevel
        self.primaryMotivation = primaryMotivation
        self.secondaryMotivations = secondaryMotivations
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case id
        case createdByRef = "created_by_ref"
        case labels
        case created
        case modified
        case revoked
        case confidence
        case lang
        case externalReferences = "external_references"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case extensions
        case name
        case description
        case aliases
        case firstSeen = "first_seen"
        case lastSeen = "last_seen"
        case goals
        case resourceLevel = "resource_level"
        case primaryMotivation = "primary_motivation"
        case secondaryMotivations = "secondary_motivations"
    }
}

/// A Location represents a geographic location. The location may be described as any, some or all of the following: region (e.g., North America), civic address (e.g. New York, US), latitude and longitude.
public struct Location: STIXObjectProtocol, Equatable {
    public static let stixType = "location"
    public var type: String = "location"
    public var specVersion: STIXSpecificationVersion = .v21
    public var id: STIXIdentifier
    public var createdByRef: STIXIdentifier?
    public var labels: [String]?
    public var created: Date
    public var modified: Date
    public var revoked: Bool?
    public var confidence: Int?
    public var lang: String?
    public var externalReferences: [ExternalReference]?
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var extensions: [String: STIXValue]?
    public var description: String?
    public var name: String?
    public var latitude: Double?
    public var longitude: Double?
    public var precision: Double?
    public var region: String?
    public var country: String?
    public var administrativeArea: String?
    public var city: String?
    public var streetAddress: String?
    public var postalCode: String?

    public init(type: String = "location", specVersion: STIXSpecificationVersion = .v21, id: STIXIdentifier, createdByRef: STIXIdentifier? = nil, labels: [String]? = nil, created: Date, modified: Date, revoked: Bool? = nil, confidence: Int? = nil, lang: String? = nil, externalReferences: [ExternalReference]? = nil, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, extensions: [String: STIXValue]? = nil, description: String? = nil, name: String? = nil, latitude: Double? = nil, longitude: Double? = nil, precision: Double? = nil, region: String? = nil, country: String? = nil, administrativeArea: String? = nil, city: String? = nil, streetAddress: String? = nil, postalCode: String? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.id = id
        self.createdByRef = createdByRef
        self.labels = labels
        self.created = created
        self.modified = modified
        self.revoked = revoked
        self.confidence = confidence
        self.lang = lang
        self.externalReferences = externalReferences
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.extensions = extensions
        self.description = description
        self.name = name
        self.latitude = latitude
        self.longitude = longitude
        self.precision = precision
        self.region = region
        self.country = country
        self.administrativeArea = administrativeArea
        self.city = city
        self.streetAddress = streetAddress
        self.postalCode = postalCode
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case id
        case createdByRef = "created_by_ref"
        case labels
        case created
        case modified
        case revoked
        case confidence
        case lang
        case externalReferences = "external_references"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case extensions
        case description
        case name
        case latitude
        case longitude
        case precision
        case region
        case country
        case administrativeArea = "administrative_area"
        case city
        case streetAddress = "street_address"
        case postalCode = "postal_code"
    }
}

/// Malware Analysis captures the metadata and results of a particular analysis performed (static or dynamic) on the malware instance or family.
public struct MalwareAnalysis: STIXObjectProtocol, Equatable {
    public static let stixType = "malware-analysis"
    public var type: String = "malware-analysis"
    public var specVersion: STIXSpecificationVersion = .v21
    public var id: STIXIdentifier
    public var createdByRef: STIXIdentifier?
    public var labels: [String]?
    public var created: Date
    public var modified: Date
    public var revoked: Bool?
    public var confidence: Int?
    public var lang: String?
    public var externalReferences: [ExternalReference]?
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var extensions: [String: STIXValue]?
    public var product: String
    public var version: String?
    public var configurationVersion: String?
    public var modules: [String]?
    public var analysisEngineVersion: String?
    public var analysisDefinitionVersion: String?
    public var submitted: Date?
    public var analysisStarted: Date?
    public var analysisEnded: Date?
    public var resultName: String?
    public var result: String?
    public var hostVmRef: STIXIdentifier?
    public var operatingSystemRef: STIXIdentifier?
    public var installedSoftwareRefs: [STIXIdentifier]?
    public var analysisScoRefs: [STIXIdentifier]?
    public var sampleRef: STIXIdentifier?

    public init(type: String = "malware-analysis", specVersion: STIXSpecificationVersion = .v21, id: STIXIdentifier, createdByRef: STIXIdentifier? = nil, labels: [String]? = nil, created: Date, modified: Date, revoked: Bool? = nil, confidence: Int? = nil, lang: String? = nil, externalReferences: [ExternalReference]? = nil, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, extensions: [String: STIXValue]? = nil, product: String, version: String? = nil, configurationVersion: String? = nil, modules: [String]? = nil, analysisEngineVersion: String? = nil, analysisDefinitionVersion: String? = nil, submitted: Date? = nil, analysisStarted: Date? = nil, analysisEnded: Date? = nil, resultName: String? = nil, result: String? = nil, hostVmRef: STIXIdentifier? = nil, operatingSystemRef: STIXIdentifier? = nil, installedSoftwareRefs: [STIXIdentifier]? = nil, analysisScoRefs: [STIXIdentifier]? = nil, sampleRef: STIXIdentifier? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.id = id
        self.createdByRef = createdByRef
        self.labels = labels
        self.created = created
        self.modified = modified
        self.revoked = revoked
        self.confidence = confidence
        self.lang = lang
        self.externalReferences = externalReferences
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.extensions = extensions
        self.product = product
        self.version = version
        self.configurationVersion = configurationVersion
        self.modules = modules
        self.analysisEngineVersion = analysisEngineVersion
        self.analysisDefinitionVersion = analysisDefinitionVersion
        self.submitted = submitted
        self.analysisStarted = analysisStarted
        self.analysisEnded = analysisEnded
        self.resultName = resultName
        self.result = result
        self.hostVmRef = hostVmRef
        self.operatingSystemRef = operatingSystemRef
        self.installedSoftwareRefs = installedSoftwareRefs
        self.analysisScoRefs = analysisScoRefs
        self.sampleRef = sampleRef
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case id
        case createdByRef = "created_by_ref"
        case labels
        case created
        case modified
        case revoked
        case confidence
        case lang
        case externalReferences = "external_references"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case extensions
        case product
        case version
        case configurationVersion = "configuration_version"
        case modules
        case analysisEngineVersion = "analysis_engine_version"
        case analysisDefinitionVersion = "analysis_definition_version"
        case submitted
        case analysisStarted = "analysis_started"
        case analysisEnded = "analysis_ended"
        case resultName = "result_name"
        case result
        case hostVmRef = "host_vm_ref"
        case operatingSystemRef = "operating_system_ref"
        case installedSoftwareRefs = "installed_software_refs"
        case analysisScoRefs = "analysis_sco_refs"
        case sampleRef = "sample_ref"
    }
}

/// Malware is a type of TTP that is also known as malicious code and malicious software, refers to a program that is inserted into a system, usually covertly, with the intent of compromising the confidentiality, integrity, or availability of the victim's data, applications, or operating system (OS) or of otherwise annoying or disrupting the victim.
public struct Malware: STIXObjectProtocol, Equatable {
    public static let stixType = "malware"
    public var type: String = "malware"
    public var specVersion: STIXSpecificationVersion = .v21
    public var id: STIXIdentifier
    public var createdByRef: STIXIdentifier?
    public var labels: [String]?
    public var created: Date
    public var modified: Date
    public var revoked: Bool?
    public var confidence: Int?
    public var lang: String?
    public var externalReferences: [ExternalReference]?
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var extensions: [String: STIXValue]?
    public var aliases: [String]?
    public var firstSeen: Date?
    public var lastSeen: Date?
    public var operatingSystemRefs: [STIXIdentifier]?
    public var architectureExecutionEnvs: [String]?
    public var implementationLanguages: [String]?
    public var capabilities: [String]?
    public var sampleRefs: [String]?
    public var malwareTypes: [String]?
    public var name: String?
    public var description: String?
    public var killChainPhases: [KillChainPhase]?
    public var isFamily: Bool

    public init(type: String = "malware", specVersion: STIXSpecificationVersion = .v21, id: STIXIdentifier, createdByRef: STIXIdentifier? = nil, labels: [String]? = nil, created: Date, modified: Date, revoked: Bool? = nil, confidence: Int? = nil, lang: String? = nil, externalReferences: [ExternalReference]? = nil, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, extensions: [String: STIXValue]? = nil, aliases: [String]? = nil, firstSeen: Date? = nil, lastSeen: Date? = nil, operatingSystemRefs: [STIXIdentifier]? = nil, architectureExecutionEnvs: [String]? = nil, implementationLanguages: [String]? = nil, capabilities: [String]? = nil, sampleRefs: [String]? = nil, malwareTypes: [String]? = nil, name: String? = nil, description: String? = nil, killChainPhases: [KillChainPhase]? = nil, isFamily: Bool) {
        self.type = type
        self.specVersion = specVersion
        self.id = id
        self.createdByRef = createdByRef
        self.labels = labels
        self.created = created
        self.modified = modified
        self.revoked = revoked
        self.confidence = confidence
        self.lang = lang
        self.externalReferences = externalReferences
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.extensions = extensions
        self.aliases = aliases
        self.firstSeen = firstSeen
        self.lastSeen = lastSeen
        self.operatingSystemRefs = operatingSystemRefs
        self.architectureExecutionEnvs = architectureExecutionEnvs
        self.implementationLanguages = implementationLanguages
        self.capabilities = capabilities
        self.sampleRefs = sampleRefs
        self.malwareTypes = malwareTypes
        self.name = name
        self.description = description
        self.killChainPhases = killChainPhases
        self.isFamily = isFamily
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case id
        case createdByRef = "created_by_ref"
        case labels
        case created
        case modified
        case revoked
        case confidence
        case lang
        case externalReferences = "external_references"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case extensions
        case aliases
        case firstSeen = "first_seen"
        case lastSeen = "last_seen"
        case operatingSystemRefs = "operating_system_refs"
        case architectureExecutionEnvs = "architecture_execution_envs"
        case implementationLanguages = "implementation_languages"
        case capabilities
        case sampleRefs = "sample_refs"
        case malwareTypes = "malware_types"
        case name
        case description
        case killChainPhases = "kill_chain_phases"
        case isFamily = "is_family"
    }
}

/// A Note is a comment or note containing informative text to help explain the context of one or more STIX Objects (SDOs or SROs) or to provide additional analysis that is not contained in the original object.
public struct Note: STIXObjectProtocol, Equatable {
    public static let stixType = "note"
    public var type: String = "note"
    public var specVersion: STIXSpecificationVersion = .v21
    public var id: STIXIdentifier
    public var createdByRef: STIXIdentifier?
    public var labels: [String]?
    public var created: Date
    public var modified: Date
    public var revoked: Bool?
    public var confidence: Int?
    public var lang: String?
    public var externalReferences: [ExternalReference]?
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var extensions: [String: STIXValue]?
    public var abstract: String?
    public var content: String
    public var authors: [String]?
    public var objectRefs: [STIXIdentifier]

    public init(type: String = "note", specVersion: STIXSpecificationVersion = .v21, id: STIXIdentifier, createdByRef: STIXIdentifier? = nil, labels: [String]? = nil, created: Date, modified: Date, revoked: Bool? = nil, confidence: Int? = nil, lang: String? = nil, externalReferences: [ExternalReference]? = nil, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, extensions: [String: STIXValue]? = nil, abstract: String? = nil, content: String, authors: [String]? = nil, objectRefs: [STIXIdentifier]) {
        self.type = type
        self.specVersion = specVersion
        self.id = id
        self.createdByRef = createdByRef
        self.labels = labels
        self.created = created
        self.modified = modified
        self.revoked = revoked
        self.confidence = confidence
        self.lang = lang
        self.externalReferences = externalReferences
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.extensions = extensions
        self.abstract = abstract
        self.content = content
        self.authors = authors
        self.objectRefs = objectRefs
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case id
        case createdByRef = "created_by_ref"
        case labels
        case created
        case modified
        case revoked
        case confidence
        case lang
        case externalReferences = "external_references"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case extensions
        case abstract
        case content
        case authors
        case objectRefs = "object_refs"
    }
}

/// Observed data conveys information that was observed on systems and networks, such as log data or network traffic, using the Cyber Observable specification.
public struct ObservedData: STIXObjectProtocol, Equatable {
    public static let stixType = "observed-data"
    public var type: String = "observed-data"
    public var specVersion: STIXSpecificationVersion = .v21
    public var id: STIXIdentifier
    public var createdByRef: STIXIdentifier?
    public var labels: [String]?
    public var created: Date
    public var modified: Date
    public var revoked: Bool?
    public var confidence: Int?
    public var lang: String?
    public var externalReferences: [ExternalReference]?
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var extensions: [String: STIXValue]?
    public var firstObserved: Date
    public var lastObserved: Date
    public var numberObserved: Int
    public var objects: [String: STIXObservable]?
    public var objectRefs: [STIXIdentifier]?

    public init(type: String = "observed-data", specVersion: STIXSpecificationVersion = .v21, id: STIXIdentifier, createdByRef: STIXIdentifier? = nil, labels: [String]? = nil, created: Date, modified: Date, revoked: Bool? = nil, confidence: Int? = nil, lang: String? = nil, externalReferences: [ExternalReference]? = nil, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, extensions: [String: STIXValue]? = nil, firstObserved: Date, lastObserved: Date, numberObserved: Int, objects: [String: STIXObservable]? = nil, objectRefs: [STIXIdentifier]? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.id = id
        self.createdByRef = createdByRef
        self.labels = labels
        self.created = created
        self.modified = modified
        self.revoked = revoked
        self.confidence = confidence
        self.lang = lang
        self.externalReferences = externalReferences
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.extensions = extensions
        self.firstObserved = firstObserved
        self.lastObserved = lastObserved
        self.numberObserved = numberObserved
        self.objects = objects
        self.objectRefs = objectRefs
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case id
        case createdByRef = "created_by_ref"
        case labels
        case created
        case modified
        case revoked
        case confidence
        case lang
        case externalReferences = "external_references"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case extensions
        case firstObserved = "first_observed"
        case lastObserved = "last_observed"
        case numberObserved = "number_observed"
        case objects
        case objectRefs = "object_refs"
    }
}

/// An Opinion is an assessment of the correctness of the information in a STIX Object produced by a different entity and captures the level of agreement or disagreement using a fixed scale.
public struct Opinion: STIXObjectProtocol, Equatable {
    public static let stixType = "opinion"
    public var type: String = "opinion"
    public var specVersion: STIXSpecificationVersion = .v21
    public var id: STIXIdentifier
    public var createdByRef: STIXIdentifier?
    public var labels: [String]?
    public var created: Date
    public var modified: Date
    public var revoked: Bool?
    public var confidence: Int?
    public var lang: String?
    public var externalReferences: [ExternalReference]?
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var extensions: [String: STIXValue]?
    public var explanation: String?
    public var authors: [String]?
    public var objectRefs: [STIXIdentifier]
    public var opinion: String

    public init(type: String = "opinion", specVersion: STIXSpecificationVersion = .v21, id: STIXIdentifier, createdByRef: STIXIdentifier? = nil, labels: [String]? = nil, created: Date, modified: Date, revoked: Bool? = nil, confidence: Int? = nil, lang: String? = nil, externalReferences: [ExternalReference]? = nil, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, extensions: [String: STIXValue]? = nil, explanation: String? = nil, authors: [String]? = nil, objectRefs: [STIXIdentifier], opinion: String) {
        self.type = type
        self.specVersion = specVersion
        self.id = id
        self.createdByRef = createdByRef
        self.labels = labels
        self.created = created
        self.modified = modified
        self.revoked = revoked
        self.confidence = confidence
        self.lang = lang
        self.externalReferences = externalReferences
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.extensions = extensions
        self.explanation = explanation
        self.authors = authors
        self.objectRefs = objectRefs
        self.opinion = opinion
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case id
        case createdByRef = "created_by_ref"
        case labels
        case created
        case modified
        case revoked
        case confidence
        case lang
        case externalReferences = "external_references"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case extensions
        case explanation
        case authors
        case objectRefs = "object_refs"
        case opinion
    }
}

/// Reports are collections of threat intelligence focused on one or more topics, such as a description of a threat actor, malware, or attack technique, including context and related details.
public struct Report: STIXObjectProtocol, Equatable {
    public static let stixType = "report"
    public var type: String = "report"
    public var specVersion: STIXSpecificationVersion = .v21
    public var id: STIXIdentifier
    public var createdByRef: STIXIdentifier?
    public var labels: [String]?
    public var created: Date
    public var modified: Date
    public var revoked: Bool?
    public var confidence: Int?
    public var lang: String?
    public var externalReferences: [ExternalReference]?
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var extensions: [String: STIXValue]?
    public var reportTypes: [String]?
    public var name: String
    public var description: String?
    public var published: Date
    public var objectRefs: [STIXIdentifier]

    public init(type: String = "report", specVersion: STIXSpecificationVersion = .v21, id: STIXIdentifier, createdByRef: STIXIdentifier? = nil, labels: [String]? = nil, created: Date, modified: Date, revoked: Bool? = nil, confidence: Int? = nil, lang: String? = nil, externalReferences: [ExternalReference]? = nil, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, extensions: [String: STIXValue]? = nil, reportTypes: [String]? = nil, name: String, description: String? = nil, published: Date, objectRefs: [STIXIdentifier]) {
        self.type = type
        self.specVersion = specVersion
        self.id = id
        self.createdByRef = createdByRef
        self.labels = labels
        self.created = created
        self.modified = modified
        self.revoked = revoked
        self.confidence = confidence
        self.lang = lang
        self.externalReferences = externalReferences
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.extensions = extensions
        self.reportTypes = reportTypes
        self.name = name
        self.description = description
        self.published = published
        self.objectRefs = objectRefs
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case id
        case createdByRef = "created_by_ref"
        case labels
        case created
        case modified
        case revoked
        case confidence
        case lang
        case externalReferences = "external_references"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case extensions
        case reportTypes = "report_types"
        case name
        case description
        case published
        case objectRefs = "object_refs"
    }
}

/// Threat Actors are actual individuals, groups, or organizations believed to be operating with malicious intent.
public struct ThreatActor: STIXObjectProtocol, Equatable {
    public static let stixType = "threat-actor"
    public var type: String = "threat-actor"
    public var specVersion: STIXSpecificationVersion = .v21
    public var id: STIXIdentifier
    public var createdByRef: STIXIdentifier?
    public var labels: [String]?
    public var created: Date
    public var modified: Date
    public var revoked: Bool?
    public var confidence: Int?
    public var lang: String?
    public var externalReferences: [ExternalReference]?
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var extensions: [String: STIXValue]?
    public var threatActorTypes: [String]?
    public var name: String
    public var description: String?
    public var aliases: [String]?
    public var roles: [String]?
    public var goals: [String]?
    public var firstSeen: Date?
    public var lastSeen: Date?
    public var sophistication: String?
    public var resourceLevel: String?
    public var primaryMotivation: String?
    public var secondaryMotivations: [String]?
    public var personalMotivations: [String]?

    public init(type: String = "threat-actor", specVersion: STIXSpecificationVersion = .v21, id: STIXIdentifier, createdByRef: STIXIdentifier? = nil, labels: [String]? = nil, created: Date, modified: Date, revoked: Bool? = nil, confidence: Int? = nil, lang: String? = nil, externalReferences: [ExternalReference]? = nil, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, extensions: [String: STIXValue]? = nil, threatActorTypes: [String]? = nil, name: String, description: String? = nil, aliases: [String]? = nil, roles: [String]? = nil, goals: [String]? = nil, firstSeen: Date? = nil, lastSeen: Date? = nil, sophistication: String? = nil, resourceLevel: String? = nil, primaryMotivation: String? = nil, secondaryMotivations: [String]? = nil, personalMotivations: [String]? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.id = id
        self.createdByRef = createdByRef
        self.labels = labels
        self.created = created
        self.modified = modified
        self.revoked = revoked
        self.confidence = confidence
        self.lang = lang
        self.externalReferences = externalReferences
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.extensions = extensions
        self.threatActorTypes = threatActorTypes
        self.name = name
        self.description = description
        self.aliases = aliases
        self.roles = roles
        self.goals = goals
        self.firstSeen = firstSeen
        self.lastSeen = lastSeen
        self.sophistication = sophistication
        self.resourceLevel = resourceLevel
        self.primaryMotivation = primaryMotivation
        self.secondaryMotivations = secondaryMotivations
        self.personalMotivations = personalMotivations
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case id
        case createdByRef = "created_by_ref"
        case labels
        case created
        case modified
        case revoked
        case confidence
        case lang
        case externalReferences = "external_references"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case extensions
        case threatActorTypes = "threat_actor_types"
        case name
        case description
        case aliases
        case roles
        case goals
        case firstSeen = "first_seen"
        case lastSeen = "last_seen"
        case sophistication
        case resourceLevel = "resource_level"
        case primaryMotivation = "primary_motivation"
        case secondaryMotivations = "secondary_motivations"
        case personalMotivations = "personal_motivations"
    }
}

/// Tools are legitimate software that can be used by threat actors to perform attacks.
public struct Tool: STIXObjectProtocol, Equatable {
    public static let stixType = "tool"
    public var type: String = "tool"
    public var specVersion: STIXSpecificationVersion = .v21
    public var id: STIXIdentifier
    public var createdByRef: STIXIdentifier?
    public var labels: [String]?
    public var created: Date
    public var modified: Date
    public var revoked: Bool?
    public var confidence: Int?
    public var lang: String?
    public var externalReferences: [ExternalReference]?
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var extensions: [String: STIXValue]?
    public var aliases: [String]?
    public var toolTypes: [String]?
    public var name: String
    public var description: String?
    public var toolVersion: String?
    public var killChainPhases: [KillChainPhase]?

    public init(type: String = "tool", specVersion: STIXSpecificationVersion = .v21, id: STIXIdentifier, createdByRef: STIXIdentifier? = nil, labels: [String]? = nil, created: Date, modified: Date, revoked: Bool? = nil, confidence: Int? = nil, lang: String? = nil, externalReferences: [ExternalReference]? = nil, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, extensions: [String: STIXValue]? = nil, aliases: [String]? = nil, toolTypes: [String]? = nil, name: String, description: String? = nil, toolVersion: String? = nil, killChainPhases: [KillChainPhase]? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.id = id
        self.createdByRef = createdByRef
        self.labels = labels
        self.created = created
        self.modified = modified
        self.revoked = revoked
        self.confidence = confidence
        self.lang = lang
        self.externalReferences = externalReferences
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.extensions = extensions
        self.aliases = aliases
        self.toolTypes = toolTypes
        self.name = name
        self.description = description
        self.toolVersion = toolVersion
        self.killChainPhases = killChainPhases
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case id
        case createdByRef = "created_by_ref"
        case labels
        case created
        case modified
        case revoked
        case confidence
        case lang
        case externalReferences = "external_references"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case extensions
        case aliases
        case toolTypes = "tool_types"
        case name
        case description
        case toolVersion = "tool_version"
        case killChainPhases = "kill_chain_phases"
    }
}

/// A Vulnerability is a mistake in software that can be directly used by a hacker to gain access to a system or network.
public struct Vulnerability: STIXObjectProtocol, Equatable {
    public static let stixType = "vulnerability"
    public var type: String = "vulnerability"
    public var specVersion: STIXSpecificationVersion = .v21
    public var id: STIXIdentifier
    public var createdByRef: STIXIdentifier?
    public var labels: [String]?
    public var created: Date
    public var modified: Date
    public var revoked: Bool?
    public var confidence: Int?
    public var lang: String?
    public var externalReferences: [ExternalReference]?
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var extensions: [String: STIXValue]?
    public var name: String
    public var description: String?

    public init(type: String = "vulnerability", specVersion: STIXSpecificationVersion = .v21, id: STIXIdentifier, createdByRef: STIXIdentifier? = nil, labels: [String]? = nil, created: Date, modified: Date, revoked: Bool? = nil, confidence: Int? = nil, lang: String? = nil, externalReferences: [ExternalReference]? = nil, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, extensions: [String: STIXValue]? = nil, name: String, description: String? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.id = id
        self.createdByRef = createdByRef
        self.labels = labels
        self.created = created
        self.modified = modified
        self.revoked = revoked
        self.confidence = confidence
        self.lang = lang
        self.externalReferences = externalReferences
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.extensions = extensions
        self.name = name
        self.description = description
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case id
        case createdByRef = "created_by_ref"
        case labels
        case created
        case modified
        case revoked
        case confidence
        case lang
        case externalReferences = "external_references"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case extensions
        case name
        case description
    }
}

/// The Relationship object is used to link together two SDOs in order to describe how they are related to each other.
public struct Relationship: STIXObjectProtocol, Equatable {
    public static let stixType = "relationship"
    public var type: String = "relationship"
    public var specVersion: STIXSpecificationVersion = .v21
    public var id: STIXIdentifier
    public var createdByRef: STIXIdentifier?
    public var labels: [String]?
    public var created: Date
    public var modified: Date
    public var revoked: Bool?
    public var confidence: Int?
    public var lang: String?
    public var externalReferences: [ExternalReference]?
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var extensions: [String: STIXValue]?
    public var relationshipType: String
    public var description: String?
    public var sourceRef: STIXIdentifier
    public var targetRef: STIXIdentifier
    public var startTime: Date?
    public var stopTime: Date?

    public init(type: String = "relationship", specVersion: STIXSpecificationVersion = .v21, id: STIXIdentifier, createdByRef: STIXIdentifier? = nil, labels: [String]? = nil, created: Date, modified: Date, revoked: Bool? = nil, confidence: Int? = nil, lang: String? = nil, externalReferences: [ExternalReference]? = nil, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, extensions: [String: STIXValue]? = nil, relationshipType: String, description: String? = nil, sourceRef: STIXIdentifier, targetRef: STIXIdentifier, startTime: Date? = nil, stopTime: Date? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.id = id
        self.createdByRef = createdByRef
        self.labels = labels
        self.created = created
        self.modified = modified
        self.revoked = revoked
        self.confidence = confidence
        self.lang = lang
        self.externalReferences = externalReferences
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.extensions = extensions
        self.relationshipType = relationshipType
        self.description = description
        self.sourceRef = sourceRef
        self.targetRef = targetRef
        self.startTime = startTime
        self.stopTime = stopTime
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case id
        case createdByRef = "created_by_ref"
        case labels
        case created
        case modified
        case revoked
        case confidence
        case lang
        case externalReferences = "external_references"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case extensions
        case relationshipType = "relationship_type"
        case description
        case sourceRef = "source_ref"
        case targetRef = "target_ref"
        case startTime = "start_time"
        case stopTime = "stop_time"
    }
}

/// A Sighting denotes the belief that something in CTI (e.g., an indicator, malware, tool, threat actor, etc.) was seen.
public struct Sighting: STIXObjectProtocol, Equatable {
    public static let stixType = "sighting"
    public var type: String = "sighting"
    public var specVersion: STIXSpecificationVersion = .v21
    public var id: STIXIdentifier
    public var createdByRef: STIXIdentifier?
    public var labels: [String]?
    public var created: Date
    public var modified: Date
    public var revoked: Bool?
    public var confidence: Int?
    public var lang: String?
    public var externalReferences: [ExternalReference]?
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var extensions: [String: STIXValue]?
    public var description: String?
    public var firstSeen: Date?
    public var lastSeen: Date?
    public var count: Int?
    public var sightingOfRef: STIXIdentifier
    public var observedDataRefs: [STIXIdentifier]?
    public var whereSightedRefs: [STIXIdentifier]?
    public var summary: Bool?

    public init(type: String = "sighting", specVersion: STIXSpecificationVersion = .v21, id: STIXIdentifier, createdByRef: STIXIdentifier? = nil, labels: [String]? = nil, created: Date, modified: Date, revoked: Bool? = nil, confidence: Int? = nil, lang: String? = nil, externalReferences: [ExternalReference]? = nil, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, extensions: [String: STIXValue]? = nil, description: String? = nil, firstSeen: Date? = nil, lastSeen: Date? = nil, count: Int? = nil, sightingOfRef: STIXIdentifier, observedDataRefs: [STIXIdentifier]? = nil, whereSightedRefs: [STIXIdentifier]? = nil, summary: Bool? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.id = id
        self.createdByRef = createdByRef
        self.labels = labels
        self.created = created
        self.modified = modified
        self.revoked = revoked
        self.confidence = confidence
        self.lang = lang
        self.externalReferences = externalReferences
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.extensions = extensions
        self.description = description
        self.firstSeen = firstSeen
        self.lastSeen = lastSeen
        self.count = count
        self.sightingOfRef = sightingOfRef
        self.observedDataRefs = observedDataRefs
        self.whereSightedRefs = whereSightedRefs
        self.summary = summary
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case id
        case createdByRef = "created_by_ref"
        case labels
        case created
        case modified
        case revoked
        case confidence
        case lang
        case externalReferences = "external_references"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case extensions
        case description
        case firstSeen = "first_seen"
        case lastSeen = "last_seen"
        case count
        case sightingOfRef = "sighting_of_ref"
        case observedDataRefs = "observed_data_refs"
        case whereSightedRefs = "where_sighted_refs"
        case summary
    }
}

/// The Artifact Object permits capturing an array of bytes (8-bits), as a base64-encoded string string, or linking to a file-like payload.
public struct Artifact: STIXObservableProtocol, Equatable {
    public static let stixType = "artifact"
    public var type: String = "artifact"
    public var specVersion: STIXSpecificationVersion = .v21
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var defanged: Bool?
    public var id: STIXIdentifier
    public var extensions: [String: STIXValue]?
    public var mimeType: String?
    public var payloadBin: String?
    public var url: STIXValue?
    public var hashes: [String: STIXValue]?
    public var encryptionAlgorithm: STIXValue?
    public var decryptionKey: String?

    public init(type: String = "artifact", specVersion: STIXSpecificationVersion = .v21, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, defanged: Bool? = nil, id: STIXIdentifier, extensions: [String: STIXValue]? = nil, mimeType: String? = nil, payloadBin: String? = nil, url: STIXValue? = nil, hashes: [String: STIXValue]? = nil, encryptionAlgorithm: STIXValue? = nil, decryptionKey: String? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.defanged = defanged
        self.id = id
        self.extensions = extensions
        self.mimeType = mimeType
        self.payloadBin = payloadBin
        self.url = url
        self.hashes = hashes
        self.encryptionAlgorithm = encryptionAlgorithm
        self.decryptionKey = decryptionKey
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case defanged
        case id
        case extensions
        case mimeType = "mime_type"
        case payloadBin = "payload_bin"
        case url
        case hashes
        case encryptionAlgorithm = "encryption_algorithm"
        case decryptionKey = "decryption_key"
    }
}

/// The AS object represents the properties of an Autonomous Systems (AS).
public struct AutonomousSystem: STIXObservableProtocol, Equatable {
    public static let stixType = "autonomous-system"
    public var type: String = "autonomous-system"
    public var specVersion: STIXSpecificationVersion = .v21
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var defanged: Bool?
    public var id: STIXIdentifier
    public var extensions: [String: STIXValue]?
    public var number: Int
    public var name: String?
    public var rir: String?

    public init(type: String = "autonomous-system", specVersion: STIXSpecificationVersion = .v21, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, defanged: Bool? = nil, id: STIXIdentifier, extensions: [String: STIXValue]? = nil, number: Int, name: String? = nil, rir: String? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.defanged = defanged
        self.id = id
        self.extensions = extensions
        self.number = number
        self.name = name
        self.rir = rir
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case defanged
        case id
        case extensions
        case number
        case name
        case rir
    }
}

/// The Directory Object represents the properties common to a file system directory.
public struct Directory: STIXObservableProtocol, Equatable {
    public static let stixType = "directory"
    public var type: String = "directory"
    public var specVersion: STIXSpecificationVersion = .v21
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var defanged: Bool?
    public var id: STIXIdentifier
    public var extensions: [String: STIXValue]?
    public var path: String
    public var pathEnc: String?
    public var ctime: Date?
    public var mtime: Date?
    public var atime: Date?
    public var containsRefs: [String]?

    public init(type: String = "directory", specVersion: STIXSpecificationVersion = .v21, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, defanged: Bool? = nil, id: STIXIdentifier, extensions: [String: STIXValue]? = nil, path: String, pathEnc: String? = nil, ctime: Date? = nil, mtime: Date? = nil, atime: Date? = nil, containsRefs: [String]? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.defanged = defanged
        self.id = id
        self.extensions = extensions
        self.path = path
        self.pathEnc = pathEnc
        self.ctime = ctime
        self.mtime = mtime
        self.atime = atime
        self.containsRefs = containsRefs
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case defanged
        case id
        case extensions
        case path
        case pathEnc = "path_enc"
        case ctime
        case mtime
        case atime
        case containsRefs = "contains_refs"
    }
}

/// The Domain Name represents the properties of a network domain name.
public struct DomainName: STIXObservableProtocol, Equatable {
    public static let stixType = "domain-name"
    public var type: String = "domain-name"
    public var specVersion: STIXSpecificationVersion = .v21
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var defanged: Bool?
    public var id: STIXIdentifier
    public var extensions: [String: STIXValue]?
    public var value: String
    public var resolvesToRefs: [String]?

    public init(type: String = "domain-name", specVersion: STIXSpecificationVersion = .v21, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, defanged: Bool? = nil, id: STIXIdentifier, extensions: [String: STIXValue]? = nil, value: String, resolvesToRefs: [String]? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.defanged = defanged
        self.id = id
        self.extensions = extensions
        self.value = value
        self.resolvesToRefs = resolvesToRefs
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case defanged
        case id
        case extensions
        case value
        case resolvesToRefs = "resolves_to_refs"
    }
}

/// The Email Address Object represents a single email address.
public struct EmailAddr: STIXObservableProtocol, Equatable {
    public static let stixType = "email-addr"
    public var type: String = "email-addr"
    public var specVersion: STIXSpecificationVersion = .v21
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var defanged: Bool?
    public var id: STIXIdentifier
    public var extensions: [String: STIXValue]?
    public var value: String
    public var displayName: String?
    public var belongsToRef: String?

    public init(type: String = "email-addr", specVersion: STIXSpecificationVersion = .v21, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, defanged: Bool? = nil, id: STIXIdentifier, extensions: [String: STIXValue]? = nil, value: String, displayName: String? = nil, belongsToRef: String? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.defanged = defanged
        self.id = id
        self.extensions = extensions
        self.value = value
        self.displayName = displayName
        self.belongsToRef = belongsToRef
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case defanged
        case id
        case extensions
        case value
        case displayName = "display_name"
        case belongsToRef = "belongs_to_ref"
    }
}

/// The Email Message Object represents an instance of an email message.
public struct EmailMessage: STIXObservableProtocol, Equatable {
    public static let stixType = "email-message"
    public var type: String = "email-message"
    public var specVersion: STIXSpecificationVersion = .v21
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var defanged: Bool?
    public var id: STIXIdentifier
    public var extensions: [String: STIXValue]?
    public var date: Date?
    public var contentType: String?
    public var fromRef: String?
    public var senderRef: String?
    public var toRefs: [String]?
    public var ccRefs: [String]?
    public var bccRefs: [String]?
    public var messageId: String?
    public var subject: String?
    public var receivedLines: [String]?
    public var additionalHeaderFields: STIXValue?
    public var rawEmailRef: String?
    public var isMultipart: Bool?
    public var body: String?
    public var bodyMultipart: [STIXValue]?

    public init(type: String = "email-message", specVersion: STIXSpecificationVersion = .v21, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, defanged: Bool? = nil, id: STIXIdentifier, extensions: [String: STIXValue]? = nil, date: Date? = nil, contentType: String? = nil, fromRef: String? = nil, senderRef: String? = nil, toRefs: [String]? = nil, ccRefs: [String]? = nil, bccRefs: [String]? = nil, messageId: String? = nil, subject: String? = nil, receivedLines: [String]? = nil, additionalHeaderFields: STIXValue? = nil, rawEmailRef: String? = nil, isMultipart: Bool? = nil, body: String? = nil, bodyMultipart: [STIXValue]? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.defanged = defanged
        self.id = id
        self.extensions = extensions
        self.date = date
        self.contentType = contentType
        self.fromRef = fromRef
        self.senderRef = senderRef
        self.toRefs = toRefs
        self.ccRefs = ccRefs
        self.bccRefs = bccRefs
        self.messageId = messageId
        self.subject = subject
        self.receivedLines = receivedLines
        self.additionalHeaderFields = additionalHeaderFields
        self.rawEmailRef = rawEmailRef
        self.isMultipart = isMultipart
        self.body = body
        self.bodyMultipart = bodyMultipart
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case defanged
        case id
        case extensions
        case date
        case contentType = "content_type"
        case fromRef = "from_ref"
        case senderRef = "sender_ref"
        case toRefs = "to_refs"
        case ccRefs = "cc_refs"
        case bccRefs = "bcc_refs"
        case messageId = "message_id"
        case subject
        case receivedLines = "received_lines"
        case additionalHeaderFields = "additional_header_fields"
        case rawEmailRef = "raw_email_ref"
        case isMultipart = "is_multipart"
        case body
        case bodyMultipart = "body_multipart"
    }
}

/// The File Object represents the properties of a file.
public struct File: STIXObservableProtocol, Equatable {
    public static let stixType = "file"
    public var type: String = "file"
    public var specVersion: STIXSpecificationVersion = .v21
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var defanged: Bool?
    public var id: STIXIdentifier
    public var extensions: [String: STIXValue]?
    public var hashes: [String: STIXValue]?
    public var size: Int?
    public var name: String?
    public var nameEnc: String?
    public var magicNumberHex: String?
    public var mimeType: String?
    public var ctime: Date?
    public var mtime: Date?
    public var atime: Date?
    public var parentDirectoryRef: String?
    public var containsRefs: [String]?
    public var contentRef: String?

    public init(type: String = "file", specVersion: STIXSpecificationVersion = .v21, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, defanged: Bool? = nil, id: STIXIdentifier, extensions: [String: STIXValue]? = nil, hashes: [String: STIXValue]? = nil, size: Int? = nil, name: String? = nil, nameEnc: String? = nil, magicNumberHex: String? = nil, mimeType: String? = nil, ctime: Date? = nil, mtime: Date? = nil, atime: Date? = nil, parentDirectoryRef: String? = nil, containsRefs: [String]? = nil, contentRef: String? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.defanged = defanged
        self.id = id
        self.extensions = extensions
        self.hashes = hashes
        self.size = size
        self.name = name
        self.nameEnc = nameEnc
        self.magicNumberHex = magicNumberHex
        self.mimeType = mimeType
        self.ctime = ctime
        self.mtime = mtime
        self.atime = atime
        self.parentDirectoryRef = parentDirectoryRef
        self.containsRefs = containsRefs
        self.contentRef = contentRef
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case defanged
        case id
        case extensions
        case hashes
        case size
        case name
        case nameEnc = "name_enc"
        case magicNumberHex = "magic_number_hex"
        case mimeType = "mime_type"
        case ctime
        case mtime
        case atime
        case parentDirectoryRef = "parent_directory_ref"
        case containsRefs = "contains_refs"
        case contentRef = "content_ref"
    }
}

/// The IPv4 Address Object represents one or more IPv4 addresses expressed using CIDR notation.
public struct Ipv4Addr: STIXObservableProtocol, Equatable {
    public static let stixType = "ipv4-addr"
    public var type: String = "ipv4-addr"
    public var specVersion: STIXSpecificationVersion = .v21
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var defanged: Bool?
    public var id: STIXIdentifier
    public var extensions: [String: STIXValue]?
    public var value: String
    public var resolvesToRefs: [String]?
    public var belongsToRefs: [String]?

    public init(type: String = "ipv4-addr", specVersion: STIXSpecificationVersion = .v21, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, defanged: Bool? = nil, id: STIXIdentifier, extensions: [String: STIXValue]? = nil, value: String, resolvesToRefs: [String]? = nil, belongsToRefs: [String]? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.defanged = defanged
        self.id = id
        self.extensions = extensions
        self.value = value
        self.resolvesToRefs = resolvesToRefs
        self.belongsToRefs = belongsToRefs
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case defanged
        case id
        case extensions
        case value
        case resolvesToRefs = "resolves_to_refs"
        case belongsToRefs = "belongs_to_refs"
    }
}

/// The IPv6 Address Object represents one or more IPv6 addresses expressed using CIDR notation.
public struct Ipv6Addr: STIXObservableProtocol, Equatable {
    public static let stixType = "ipv6-addr"
    public var type: String = "ipv6-addr"
    public var specVersion: STIXSpecificationVersion = .v21
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var defanged: Bool?
    public var id: STIXIdentifier
    public var extensions: [String: STIXValue]?
    public var value: String
    public var resolvesToRefs: [String]?
    public var belongsToRefs: [String]?

    public init(type: String = "ipv6-addr", specVersion: STIXSpecificationVersion = .v21, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, defanged: Bool? = nil, id: STIXIdentifier, extensions: [String: STIXValue]? = nil, value: String, resolvesToRefs: [String]? = nil, belongsToRefs: [String]? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.defanged = defanged
        self.id = id
        self.extensions = extensions
        self.value = value
        self.resolvesToRefs = resolvesToRefs
        self.belongsToRefs = belongsToRefs
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case defanged
        case id
        case extensions
        case value
        case resolvesToRefs = "resolves_to_refs"
        case belongsToRefs = "belongs_to_refs"
    }
}

/// The MAC Address Object represents a single Media Access Control (MAC) address.
public struct MacAddr: STIXObservableProtocol, Equatable {
    public static let stixType = "mac-addr"
    public var type: String = "mac-addr"
    public var specVersion: STIXSpecificationVersion = .v21
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var defanged: Bool?
    public var id: STIXIdentifier
    public var extensions: [String: STIXValue]?
    public var value: String

    public init(type: String = "mac-addr", specVersion: STIXSpecificationVersion = .v21, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, defanged: Bool? = nil, id: STIXIdentifier, extensions: [String: STIXValue]? = nil, value: String) {
        self.type = type
        self.specVersion = specVersion
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.defanged = defanged
        self.id = id
        self.extensions = extensions
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case defanged
        case id
        case extensions
        case value
    }
}

/// The Mutex Object represents the properties of a mutual exclusion (mutex) object.
public struct Mutex: STIXObservableProtocol, Equatable {
    public static let stixType = "mutex"
    public var type: String = "mutex"
    public var specVersion: STIXSpecificationVersion = .v21
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var defanged: Bool?
    public var id: STIXIdentifier
    public var extensions: [String: STIXValue]?
    public var name: String

    public init(type: String = "mutex", specVersion: STIXSpecificationVersion = .v21, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, defanged: Bool? = nil, id: STIXIdentifier, extensions: [String: STIXValue]? = nil, name: String) {
        self.type = type
        self.specVersion = specVersion
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.defanged = defanged
        self.id = id
        self.extensions = extensions
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case defanged
        case id
        case extensions
        case name
    }
}

/// The Network Traffic Object represents arbitrary network traffic that originates from a source and is addressed to a destination.
public struct NetworkTraffic: STIXObservableProtocol, Equatable {
    public static let stixType = "network-traffic"
    public var type: String = "network-traffic"
    public var specVersion: STIXSpecificationVersion = .v21
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var defanged: Bool?
    public var id: STIXIdentifier
    public var extensions: [String: STIXValue]?
    public var start: Date?
    public var end: Date?
    public var srcRef: String?
    public var dstRef: String?
    public var srcPort: Int?
    public var dstPort: Int?
    public var protocols: [String]
    public var srcByteCount: Int?
    public var dstByteCount: Int?
    public var srcPackets: Int?
    public var dstPackets: Int?
    public var ipfix: [String: STIXValue]?
    public var srcPayloadRef: String?
    public var dstPayloadRef: String?
    public var encapsulatesRefs: [String]?
    public var encapsulatedByRef: String?
    public var isActive: Bool?

    public init(type: String = "network-traffic", specVersion: STIXSpecificationVersion = .v21, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, defanged: Bool? = nil, id: STIXIdentifier, extensions: [String: STIXValue]? = nil, start: Date? = nil, end: Date? = nil, srcRef: String? = nil, dstRef: String? = nil, srcPort: Int? = nil, dstPort: Int? = nil, protocols: [String], srcByteCount: Int? = nil, dstByteCount: Int? = nil, srcPackets: Int? = nil, dstPackets: Int? = nil, ipfix: [String: STIXValue]? = nil, srcPayloadRef: String? = nil, dstPayloadRef: String? = nil, encapsulatesRefs: [String]? = nil, encapsulatedByRef: String? = nil, isActive: Bool? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.defanged = defanged
        self.id = id
        self.extensions = extensions
        self.start = start
        self.end = end
        self.srcRef = srcRef
        self.dstRef = dstRef
        self.srcPort = srcPort
        self.dstPort = dstPort
        self.protocols = protocols
        self.srcByteCount = srcByteCount
        self.dstByteCount = dstByteCount
        self.srcPackets = srcPackets
        self.dstPackets = dstPackets
        self.ipfix = ipfix
        self.srcPayloadRef = srcPayloadRef
        self.dstPayloadRef = dstPayloadRef
        self.encapsulatesRefs = encapsulatesRefs
        self.encapsulatedByRef = encapsulatedByRef
        self.isActive = isActive
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case defanged
        case id
        case extensions
        case start
        case end
        case srcRef = "src_ref"
        case dstRef = "dst_ref"
        case srcPort = "src_port"
        case dstPort = "dst_port"
        case protocols
        case srcByteCount = "src_byte_count"
        case dstByteCount = "dst_byte_count"
        case srcPackets = "src_packets"
        case dstPackets = "dst_packets"
        case ipfix
        case srcPayloadRef = "src_payload_ref"
        case dstPayloadRef = "dst_payload_ref"
        case encapsulatesRefs = "encapsulates_refs"
        case encapsulatedByRef = "encapsulated_by_ref"
        case isActive = "is_active"
    }
}

/// The Process Object represents common properties of an instance of a computer program as executed on an operating system.
public struct Process: STIXObservableProtocol, Equatable {
    public static let stixType = "process"
    public var type: String = "process"
    public var specVersion: STIXSpecificationVersion = .v21
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var defanged: Bool?
    public var id: STIXIdentifier
    public var extensions: [String: STIXValue]?
    public var isHidden: Bool?
    public var pid: Int?
    public var createdTime: Date?
    public var cwd: String?
    public var commandLine: String?
    public var environmentVariables: [String: STIXValue]?
    public var openedConnectionRefs: [String]?
    public var creatorUserRef: String?
    public var imageRef: String?
    public var parentRef: String?
    public var childRefs: [String]?

    public init(type: String = "process", specVersion: STIXSpecificationVersion = .v21, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, defanged: Bool? = nil, id: STIXIdentifier, extensions: [String: STIXValue]? = nil, isHidden: Bool? = nil, pid: Int? = nil, createdTime: Date? = nil, cwd: String? = nil, commandLine: String? = nil, environmentVariables: [String: STIXValue]? = nil, openedConnectionRefs: [String]? = nil, creatorUserRef: String? = nil, imageRef: String? = nil, parentRef: String? = nil, childRefs: [String]? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.defanged = defanged
        self.id = id
        self.extensions = extensions
        self.isHidden = isHidden
        self.pid = pid
        self.createdTime = createdTime
        self.cwd = cwd
        self.commandLine = commandLine
        self.environmentVariables = environmentVariables
        self.openedConnectionRefs = openedConnectionRefs
        self.creatorUserRef = creatorUserRef
        self.imageRef = imageRef
        self.parentRef = parentRef
        self.childRefs = childRefs
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case defanged
        case id
        case extensions
        case isHidden = "is_hidden"
        case pid
        case createdTime = "created_time"
        case cwd
        case commandLine = "command_line"
        case environmentVariables = "environment_variables"
        case openedConnectionRefs = "opened_connection_refs"
        case creatorUserRef = "creator_user_ref"
        case imageRef = "image_ref"
        case parentRef = "parent_ref"
        case childRefs = "child_refs"
    }
}

/// The Software Object represents high-level properties associated with software, including software products.
public struct Software: STIXObservableProtocol, Equatable {
    public static let stixType = "software"
    public var type: String = "software"
    public var specVersion: STIXSpecificationVersion = .v21
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var defanged: Bool?
    public var id: STIXIdentifier
    public var extensions: [String: STIXValue]?
    public var name: String
    public var cpe: String?
    public var swid: String?
    public var languages: [String]?
    public var vendor: String?
    public var version: String?

    public init(type: String = "software", specVersion: STIXSpecificationVersion = .v21, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, defanged: Bool? = nil, id: STIXIdentifier, extensions: [String: STIXValue]? = nil, name: String, cpe: String? = nil, swid: String? = nil, languages: [String]? = nil, vendor: String? = nil, version: String? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.defanged = defanged
        self.id = id
        self.extensions = extensions
        self.name = name
        self.cpe = cpe
        self.swid = swid
        self.languages = languages
        self.vendor = vendor
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case defanged
        case id
        case extensions
        case name
        case cpe
        case swid
        case languages
        case vendor
        case version
    }
}

/// The URL Object represents the properties of a uniform resource locator (URL).
public struct Url: STIXObservableProtocol, Equatable {
    public static let stixType = "url"
    public var type: String = "url"
    public var specVersion: STIXSpecificationVersion = .v21
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var defanged: Bool?
    public var id: STIXIdentifier
    public var extensions: [String: STIXValue]?
    public var value: STIXValue

    public init(type: String = "url", specVersion: STIXSpecificationVersion = .v21, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, defanged: Bool? = nil, id: STIXIdentifier, extensions: [String: STIXValue]? = nil, value: STIXValue) {
        self.type = type
        self.specVersion = specVersion
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.defanged = defanged
        self.id = id
        self.extensions = extensions
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case defanged
        case id
        case extensions
        case value
    }
}

/// The User Account Object represents an instance of any type of user account, including but not limited to operating system, device, messaging service, and social media platform accounts.
public struct UserAccount: STIXObservableProtocol, Equatable {
    public static let stixType = "user-account"
    public var type: String = "user-account"
    public var specVersion: STIXSpecificationVersion = .v21
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var defanged: Bool?
    public var id: STIXIdentifier
    public var extensions: [String: STIXValue]?
    public var userId: String?
    public var credential: String?
    public var accountLogin: String?
    public var accountType: String?
    public var displayName: String?
    public var isServiceAccount: Bool?
    public var isPrivileged: Bool?
    public var canEscalatePrivs: Bool?
    public var isDisabled: Bool?
    public var accountCreated: Date?
    public var accountExpires: Date?
    public var credentialLastChanged: Date?
    public var accountFirstLogin: Date?
    public var accountLastLogin: Date?

    public init(type: String = "user-account", specVersion: STIXSpecificationVersion = .v21, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, defanged: Bool? = nil, id: STIXIdentifier, extensions: [String: STIXValue]? = nil, userId: String? = nil, credential: String? = nil, accountLogin: String? = nil, accountType: String? = nil, displayName: String? = nil, isServiceAccount: Bool? = nil, isPrivileged: Bool? = nil, canEscalatePrivs: Bool? = nil, isDisabled: Bool? = nil, accountCreated: Date? = nil, accountExpires: Date? = nil, credentialLastChanged: Date? = nil, accountFirstLogin: Date? = nil, accountLastLogin: Date? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.defanged = defanged
        self.id = id
        self.extensions = extensions
        self.userId = userId
        self.credential = credential
        self.accountLogin = accountLogin
        self.accountType = accountType
        self.displayName = displayName
        self.isServiceAccount = isServiceAccount
        self.isPrivileged = isPrivileged
        self.canEscalatePrivs = canEscalatePrivs
        self.isDisabled = isDisabled
        self.accountCreated = accountCreated
        self.accountExpires = accountExpires
        self.credentialLastChanged = credentialLastChanged
        self.accountFirstLogin = accountFirstLogin
        self.accountLastLogin = accountLastLogin
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case defanged
        case id
        case extensions
        case userId = "user_id"
        case credential
        case accountLogin = "account_login"
        case accountType = "account_type"
        case displayName = "display_name"
        case isServiceAccount = "is_service_account"
        case isPrivileged = "is_privileged"
        case canEscalatePrivs = "can_escalate_privs"
        case isDisabled = "is_disabled"
        case accountCreated = "account_created"
        case accountExpires = "account_expires"
        case credentialLastChanged = "credential_last_changed"
        case accountFirstLogin = "account_first_login"
        case accountLastLogin = "account_last_login"
    }
}

/// The Registry Key Object represents the properties of a Windows registry key.
public struct WindowsRegistryKey: STIXObservableProtocol, Equatable {
    public static let stixType = "windows-registry-key"
    public var type: String = "windows-registry-key"
    public var specVersion: STIXSpecificationVersion = .v21
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var defanged: Bool?
    public var id: STIXIdentifier
    public var extensions: [String: STIXValue]?
    public var key: String?
    public var values: [STIXValue]?
    public var modifiedTime: Date?
    public var creatorUserRef: String?
    public var numberOfSubkeys: Int?

    public init(type: String = "windows-registry-key", specVersion: STIXSpecificationVersion = .v21, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, defanged: Bool? = nil, id: STIXIdentifier, extensions: [String: STIXValue]? = nil, key: String? = nil, values: [STIXValue]? = nil, modifiedTime: Date? = nil, creatorUserRef: String? = nil, numberOfSubkeys: Int? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.defanged = defanged
        self.id = id
        self.extensions = extensions
        self.key = key
        self.values = values
        self.modifiedTime = modifiedTime
        self.creatorUserRef = creatorUserRef
        self.numberOfSubkeys = numberOfSubkeys
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case defanged
        case id
        case extensions
        case key
        case values
        case modifiedTime = "modified_time"
        case creatorUserRef = "creator_user_ref"
        case numberOfSubkeys = "number_of_subkeys"
    }
}

/// The X509 Certificate Object represents the properties of an X.509 certificate.
public struct X509Certificate: STIXObservableProtocol, Equatable {
    public static let stixType = "x509-certificate"
    public var type: String = "x509-certificate"
    public var specVersion: STIXSpecificationVersion = .v21
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var defanged: Bool?
    public var id: STIXIdentifier
    public var extensions: [String: STIXValue]?
    public var isSelfSigned: Bool?
    public var hashes: [String: STIXValue]?
    public var version: String?
    public var serialNumber: String?
    public var signatureAlgorithm: String?
    public var issuer: String?
    public var validityNotBefore: Date?
    public var validityNotAfter: Date?
    public var subject: String?
    public var subjectPublicKeyAlgorithm: String?
    public var subjectPublicKeyModulus: String?
    public var subjectPublicKeyExponent: Int?
    public var x509V3Extensions: STIXValue?

    public init(type: String = "x509-certificate", specVersion: STIXSpecificationVersion = .v21, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, defanged: Bool? = nil, id: STIXIdentifier, extensions: [String: STIXValue]? = nil, isSelfSigned: Bool? = nil, hashes: [String: STIXValue]? = nil, version: String? = nil, serialNumber: String? = nil, signatureAlgorithm: String? = nil, issuer: String? = nil, validityNotBefore: Date? = nil, validityNotAfter: Date? = nil, subject: String? = nil, subjectPublicKeyAlgorithm: String? = nil, subjectPublicKeyModulus: String? = nil, subjectPublicKeyExponent: Int? = nil, x509V3Extensions: STIXValue? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.defanged = defanged
        self.id = id
        self.extensions = extensions
        self.isSelfSigned = isSelfSigned
        self.hashes = hashes
        self.version = version
        self.serialNumber = serialNumber
        self.signatureAlgorithm = signatureAlgorithm
        self.issuer = issuer
        self.validityNotBefore = validityNotBefore
        self.validityNotAfter = validityNotAfter
        self.subject = subject
        self.subjectPublicKeyAlgorithm = subjectPublicKeyAlgorithm
        self.subjectPublicKeyModulus = subjectPublicKeyModulus
        self.subjectPublicKeyExponent = subjectPublicKeyExponent
        self.x509V3Extensions = x509V3Extensions
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case defanged
        case id
        case extensions
        case isSelfSigned = "is_self_signed"
        case hashes
        case version
        case serialNumber = "serial_number"
        case signatureAlgorithm = "signature_algorithm"
        case issuer
        case validityNotBefore = "validity_not_before"
        case validityNotAfter = "validity_not_after"
        case subject
        case subjectPublicKeyAlgorithm = "subject_public_key_algorithm"
        case subjectPublicKeyModulus = "subject_public_key_modulus"
        case subjectPublicKeyExponent = "subject_public_key_exponent"
        case x509V3Extensions = "x509_v3_extensions"
    }
}

/// A Bundle is a collection of arbitrary STIX Objects and Marking Definitions grouped together in a single container.
public struct Bundle: Codable, Sendable, Equatable {
    public var type: String = "bundle"
    public var id: STIXIdentifier
    public var objects: [STIXObject]?

    public init(type: String = "bundle", id: STIXIdentifier, objects: [STIXObject]? = nil) {
        self.type = type
        self.id = id
        self.objects = objects
    }

    enum CodingKeys: String, CodingKey {
        case type
        case id
        case objects
    }
}

/// The language-content object represents text content for STIX Objects represented in languages other than that of the original object.
public struct LanguageContent: STIXObjectProtocol, Equatable {
    public static let stixType = "language-content"
    public var type: String = "language-content"
    public var specVersion: STIXSpecificationVersion = .v21
    public var id: STIXIdentifier
    public var createdByRef: STIXIdentifier?
    public var labels: [String]?
    public var created: Date
    public var modified: Date
    public var revoked: Bool?
    public var confidence: Int?
    public var lang: String?
    public var externalReferences: [ExternalReference]?
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var extensions: [String: STIXValue]?
    public var objectRef: STIXIdentifier
    public var objectModified: Date?
    public var contents: [String: STIXValue]

    public init(type: String = "language-content", specVersion: STIXSpecificationVersion = .v21, id: STIXIdentifier, createdByRef: STIXIdentifier? = nil, labels: [String]? = nil, created: Date, modified: Date, revoked: Bool? = nil, confidence: Int? = nil, lang: String? = nil, externalReferences: [ExternalReference]? = nil, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, extensions: [String: STIXValue]? = nil, objectRef: STIXIdentifier, objectModified: Date? = nil, contents: [String: STIXValue]) {
        self.type = type
        self.specVersion = specVersion
        self.id = id
        self.createdByRef = createdByRef
        self.labels = labels
        self.created = created
        self.modified = modified
        self.revoked = revoked
        self.confidence = confidence
        self.lang = lang
        self.externalReferences = externalReferences
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.extensions = extensions
        self.objectRef = objectRef
        self.objectModified = objectModified
        self.contents = contents
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case id
        case createdByRef = "created_by_ref"
        case labels
        case created
        case modified
        case revoked
        case confidence
        case lang
        case externalReferences = "external_references"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case extensions
        case objectRef = "object_ref"
        case objectModified = "object_modified"
        case contents
    }
}

/// The marking-definition object represents a specific marking.
public struct MarkingDefinition: STIXObjectProtocol, Equatable {
    public static let stixType = "marking-definition"
    public var type: String = "marking-definition"
    public var specVersion: STIXSpecificationVersion = .v21
    public var name: String?
    public var createdByRef: STIXIdentifier?
    public var created: String?
    public var externalReferences: [ExternalReference]?
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var extensions: [String: STIXValue]?
    public var id: STIXIdentifier
    public var definitionType: String?
    public var definition: [String: STIXValue]?

    public init(type: String = "marking-definition", specVersion: STIXSpecificationVersion = .v21, name: String? = nil, createdByRef: STIXIdentifier? = nil, created: String? = nil, externalReferences: [ExternalReference]? = nil, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, extensions: [String: STIXValue]? = nil, id: STIXIdentifier, definitionType: String? = nil, definition: [String: STIXValue]? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.name = name
        self.createdByRef = createdByRef
        self.created = created
        self.externalReferences = externalReferences
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.extensions = extensions
        self.id = id
        self.definitionType = definitionType
        self.definition = definition
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case name
        case createdByRef = "created_by_ref"
        case created
        case externalReferences = "external_references"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case extensions
        case id
        case definitionType = "definition_type"
        case definition
    }
}

/// The STIX Extension Definition object allows producers of threat intelligence to extend existing STIX objects or to create entirely new STIX objects in a standardized way.
public struct ExtensionDefinition: STIXObjectProtocol, Equatable {
    public static let stixType = "extension-definition"
    public var type: String = "extension-definition"
    public var specVersion: STIXSpecificationVersion = .v21
    public var id: STIXIdentifier
    public var createdByRef: STIXIdentifier?
    public var labels: [String]?
    public var created: Date
    public var modified: Date
    public var revoked: Bool?
    public var confidence: Int?
    public var lang: String?
    public var externalReferences: [ExternalReference]?
    public var objectMarkingRefs: [STIXIdentifier]?
    public var granularMarkings: [GranularMarking]?
    public var extensions: [String: STIXValue]?
    public var name: String
    public var description: String?
    public var schema: String
    public var version: String
    public var extensionTypes: [STIXValue]
    public var extensionProperties: [String]?

    public init(type: String = "extension-definition", specVersion: STIXSpecificationVersion = .v21, id: STIXIdentifier, createdByRef: STIXIdentifier? = nil, labels: [String]? = nil, created: Date, modified: Date, revoked: Bool? = nil, confidence: Int? = nil, lang: String? = nil, externalReferences: [ExternalReference]? = nil, objectMarkingRefs: [STIXIdentifier]? = nil, granularMarkings: [GranularMarking]? = nil, extensions: [String: STIXValue]? = nil, name: String, description: String? = nil, schema: String, version: String, extensionTypes: [STIXValue], extensionProperties: [String]? = nil) {
        self.type = type
        self.specVersion = specVersion
        self.id = id
        self.createdByRef = createdByRef
        self.labels = labels
        self.created = created
        self.modified = modified
        self.revoked = revoked
        self.confidence = confidence
        self.lang = lang
        self.externalReferences = externalReferences
        self.objectMarkingRefs = objectMarkingRefs
        self.granularMarkings = granularMarkings
        self.extensions = extensions
        self.name = name
        self.description = description
        self.schema = schema
        self.version = version
        self.extensionTypes = extensionTypes
        self.extensionProperties = extensionProperties
    }

    enum CodingKeys: String, CodingKey {
        case type
        case specVersion = "spec_version"
        case id
        case createdByRef = "created_by_ref"
        case labels
        case created
        case modified
        case revoked
        case confidence
        case lang
        case externalReferences = "external_references"
        case objectMarkingRefs = "object_marking_refs"
        case granularMarkings = "granular_markings"
        case extensions
        case name
        case description
        case schema
        case version
        case extensionTypes = "extension_types"
        case extensionProperties = "extension_properties"
    }
}

public enum STIXObservable: Codable, Sendable, Equatable {
    case artifact(Artifact)
    case autonomousSystem(AutonomousSystem)
    case directory(Directory)
    case domainName(DomainName)
    case emailAddr(EmailAddr)
    case emailMessage(EmailMessage)
    case file(File)
    case ipv4Addr(Ipv4Addr)
    case ipv6Addr(Ipv6Addr)
    case macAddr(MacAddr)
    case mutex(Mutex)
    case networkTraffic(NetworkTraffic)
    case process(Process)
    case software(Software)
    case url(Url)
    case userAccount(UserAccount)
    case windowsRegistryKey(WindowsRegistryKey)
    case x509Certificate(X509Certificate)
    case custom(CustomObservable)

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKey.self)
        let type = try container.decode(String.self, forKey: DynamicCodingKey("type"))
        switch type {
        case Artifact.stixType:
            self = .artifact(try Artifact(from: decoder))
        case AutonomousSystem.stixType:
            self = .autonomousSystem(try AutonomousSystem(from: decoder))
        case Directory.stixType:
            self = .directory(try Directory(from: decoder))
        case DomainName.stixType:
            self = .domainName(try DomainName(from: decoder))
        case EmailAddr.stixType:
            self = .emailAddr(try EmailAddr(from: decoder))
        case EmailMessage.stixType:
            self = .emailMessage(try EmailMessage(from: decoder))
        case File.stixType:
            self = .file(try File(from: decoder))
        case Ipv4Addr.stixType:
            self = .ipv4Addr(try Ipv4Addr(from: decoder))
        case Ipv6Addr.stixType:
            self = .ipv6Addr(try Ipv6Addr(from: decoder))
        case MacAddr.stixType:
            self = .macAddr(try MacAddr(from: decoder))
        case Mutex.stixType:
            self = .mutex(try Mutex(from: decoder))
        case NetworkTraffic.stixType:
            self = .networkTraffic(try NetworkTraffic(from: decoder))
        case Process.stixType:
            self = .process(try Process(from: decoder))
        case Software.stixType:
            self = .software(try Software(from: decoder))
        case Url.stixType:
            self = .url(try Url(from: decoder))
        case UserAccount.stixType:
            self = .userAccount(try UserAccount(from: decoder))
        case WindowsRegistryKey.stixType:
            self = .windowsRegistryKey(try WindowsRegistryKey(from: decoder))
        case X509Certificate.stixType:
            self = .x509Certificate(try X509Certificate(from: decoder))
        default:
            self = .custom(try CustomObservable(from: decoder))
        }
    }

    public func encode(to encoder: Encoder) throws {
        switch self {
        case .artifact(let value):
            try value.encode(to: encoder)
        case .autonomousSystem(let value):
            try value.encode(to: encoder)
        case .directory(let value):
            try value.encode(to: encoder)
        case .domainName(let value):
            try value.encode(to: encoder)
        case .emailAddr(let value):
            try value.encode(to: encoder)
        case .emailMessage(let value):
            try value.encode(to: encoder)
        case .file(let value):
            try value.encode(to: encoder)
        case .ipv4Addr(let value):
            try value.encode(to: encoder)
        case .ipv6Addr(let value):
            try value.encode(to: encoder)
        case .macAddr(let value):
            try value.encode(to: encoder)
        case .mutex(let value):
            try value.encode(to: encoder)
        case .networkTraffic(let value):
            try value.encode(to: encoder)
        case .process(let value):
            try value.encode(to: encoder)
        case .software(let value):
            try value.encode(to: encoder)
        case .url(let value):
            try value.encode(to: encoder)
        case .userAccount(let value):
            try value.encode(to: encoder)
        case .windowsRegistryKey(let value):
            try value.encode(to: encoder)
        case .x509Certificate(let value):
            try value.encode(to: encoder)
        case .custom(let value):
            try value.encode(to: encoder)
        }
    }

    public var type: String {
        return switch self {
            case .artifact(let value): value.type
            case .autonomousSystem(let value): value.type
            case .directory(let value): value.type
            case .domainName(let value): value.type
            case .emailAddr(let value): value.type
            case .emailMessage(let value): value.type
            case .file(let value): value.type
            case .ipv4Addr(let value): value.type
            case .ipv6Addr(let value): value.type
            case .macAddr(let value): value.type
            case .mutex(let value): value.type
            case .networkTraffic(let value): value.type
            case .process(let value): value.type
            case .software(let value): value.type
            case .url(let value): value.type
            case .userAccount(let value): value.type
            case .windowsRegistryKey(let value): value.type
            case .x509Certificate(let value): value.type
            case .custom(let value): value.type
        }
    }

    public var id: STIXIdentifier {
        return switch self {
            case .artifact(let value): value.id
            case .autonomousSystem(let value): value.id
            case .directory(let value): value.id
            case .domainName(let value): value.id
            case .emailAddr(let value): value.id
            case .emailMessage(let value): value.id
            case .file(let value): value.id
            case .ipv4Addr(let value): value.id
            case .ipv6Addr(let value): value.id
            case .macAddr(let value): value.id
            case .mutex(let value): value.id
            case .networkTraffic(let value): value.id
            case .process(let value): value.id
            case .software(let value): value.id
            case .url(let value): value.id
            case .userAccount(let value): value.id
            case .windowsRegistryKey(let value): value.id
            case .x509Certificate(let value): value.id
            case .custom(let value): value.id
        }
    }

    public var specVersion: STIXSpecificationVersion? {
        return switch self {
            case .artifact(let value): value.specVersion
            case .autonomousSystem(let value): value.specVersion
            case .directory(let value): value.specVersion
            case .domainName(let value): value.specVersion
            case .emailAddr(let value): value.specVersion
            case .emailMessage(let value): value.specVersion
            case .file(let value): value.specVersion
            case .ipv4Addr(let value): value.specVersion
            case .ipv6Addr(let value): value.specVersion
            case .macAddr(let value): value.specVersion
            case .mutex(let value): value.specVersion
            case .networkTraffic(let value): value.specVersion
            case .process(let value): value.specVersion
            case .software(let value): value.specVersion
            case .url(let value): value.specVersion
            case .userAccount(let value): value.specVersion
            case .windowsRegistryKey(let value): value.specVersion
            case .x509Certificate(let value): value.specVersion
            case .custom(let value): value.specVersion
        }
    }
}

public enum STIXObject: Codable, Sendable, Equatable {
    case attackPattern(AttackPattern)
    case campaign(Campaign)
    case courseOfAction(CourseOfAction)
    case grouping(Grouping)
    case identity(Identity)
    case incident(Incident)
    case indicator(Indicator)
    case infrastructure(Infrastructure)
    case intrusionSet(IntrusionSet)
    case location(Location)
    case malwareAnalysis(MalwareAnalysis)
    case malware(Malware)
    case note(Note)
    case observedData(ObservedData)
    case opinion(Opinion)
    case report(Report)
    case threatActor(ThreatActor)
    case tool(Tool)
    case vulnerability(Vulnerability)
    case relationship(Relationship)
    case sighting(Sighting)
    case languageContent(LanguageContent)
    case markingDefinition(MarkingDefinition)
    case extensionDefinition(ExtensionDefinition)
    case custom(CustomObject)

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKey.self)
        let type = try container.decode(String.self, forKey: DynamicCodingKey("type"))
        switch type {
        case AttackPattern.stixType:
            self = .attackPattern(try AttackPattern(from: decoder))
        case Campaign.stixType:
            self = .campaign(try Campaign(from: decoder))
        case CourseOfAction.stixType:
            self = .courseOfAction(try CourseOfAction(from: decoder))
        case Grouping.stixType:
            self = .grouping(try Grouping(from: decoder))
        case Identity.stixType:
            self = .identity(try Identity(from: decoder))
        case Incident.stixType:
            self = .incident(try Incident(from: decoder))
        case Indicator.stixType:
            self = .indicator(try Indicator(from: decoder))
        case Infrastructure.stixType:
            self = .infrastructure(try Infrastructure(from: decoder))
        case IntrusionSet.stixType:
            self = .intrusionSet(try IntrusionSet(from: decoder))
        case Location.stixType:
            self = .location(try Location(from: decoder))
        case MalwareAnalysis.stixType:
            self = .malwareAnalysis(try MalwareAnalysis(from: decoder))
        case Malware.stixType:
            self = .malware(try Malware(from: decoder))
        case Note.stixType:
            self = .note(try Note(from: decoder))
        case ObservedData.stixType:
            self = .observedData(try ObservedData(from: decoder))
        case Opinion.stixType:
            self = .opinion(try Opinion(from: decoder))
        case Report.stixType:
            self = .report(try Report(from: decoder))
        case ThreatActor.stixType:
            self = .threatActor(try ThreatActor(from: decoder))
        case Tool.stixType:
            self = .tool(try Tool(from: decoder))
        case Vulnerability.stixType:
            self = .vulnerability(try Vulnerability(from: decoder))
        case Relationship.stixType:
            self = .relationship(try Relationship(from: decoder))
        case Sighting.stixType:
            self = .sighting(try Sighting(from: decoder))
        case LanguageContent.stixType:
            self = .languageContent(try LanguageContent(from: decoder))
        case MarkingDefinition.stixType:
            self = .markingDefinition(try MarkingDefinition(from: decoder))
        case ExtensionDefinition.stixType:
            self = .extensionDefinition(try ExtensionDefinition(from: decoder))
        default:
            self = .custom(try CustomObject(from: decoder))
        }
    }

    public func encode(to encoder: Encoder) throws {
        switch self {
        case .attackPattern(let value):
            try value.encode(to: encoder)
        case .campaign(let value):
            try value.encode(to: encoder)
        case .courseOfAction(let value):
            try value.encode(to: encoder)
        case .grouping(let value):
            try value.encode(to: encoder)
        case .identity(let value):
            try value.encode(to: encoder)
        case .incident(let value):
            try value.encode(to: encoder)
        case .indicator(let value):
            try value.encode(to: encoder)
        case .infrastructure(let value):
            try value.encode(to: encoder)
        case .intrusionSet(let value):
            try value.encode(to: encoder)
        case .location(let value):
            try value.encode(to: encoder)
        case .malwareAnalysis(let value):
            try value.encode(to: encoder)
        case .malware(let value):
            try value.encode(to: encoder)
        case .note(let value):
            try value.encode(to: encoder)
        case .observedData(let value):
            try value.encode(to: encoder)
        case .opinion(let value):
            try value.encode(to: encoder)
        case .report(let value):
            try value.encode(to: encoder)
        case .threatActor(let value):
            try value.encode(to: encoder)
        case .tool(let value):
            try value.encode(to: encoder)
        case .vulnerability(let value):
            try value.encode(to: encoder)
        case .relationship(let value):
            try value.encode(to: encoder)
        case .sighting(let value):
            try value.encode(to: encoder)
        case .languageContent(let value):
            try value.encode(to: encoder)
        case .markingDefinition(let value):
            try value.encode(to: encoder)
        case .extensionDefinition(let value):
            try value.encode(to: encoder)
        case .custom(let value):
            try value.encode(to: encoder)
        }
    }

    public var type: String {
        return switch self {
            case .attackPattern(let value): value.type
            case .campaign(let value): value.type
            case .courseOfAction(let value): value.type
            case .grouping(let value): value.type
            case .identity(let value): value.type
            case .incident(let value): value.type
            case .indicator(let value): value.type
            case .infrastructure(let value): value.type
            case .intrusionSet(let value): value.type
            case .location(let value): value.type
            case .malwareAnalysis(let value): value.type
            case .malware(let value): value.type
            case .note(let value): value.type
            case .observedData(let value): value.type
            case .opinion(let value): value.type
            case .report(let value): value.type
            case .threatActor(let value): value.type
            case .tool(let value): value.type
            case .vulnerability(let value): value.type
            case .relationship(let value): value.type
            case .sighting(let value): value.type
            case .languageContent(let value): value.type
            case .markingDefinition(let value): value.type
            case .extensionDefinition(let value): value.type
            case .custom(let value): value.type
        }
    }

    public var id: STIXIdentifier {
        return switch self {
            case .attackPattern(let value): value.id
            case .campaign(let value): value.id
            case .courseOfAction(let value): value.id
            case .grouping(let value): value.id
            case .identity(let value): value.id
            case .incident(let value): value.id
            case .indicator(let value): value.id
            case .infrastructure(let value): value.id
            case .intrusionSet(let value): value.id
            case .location(let value): value.id
            case .malwareAnalysis(let value): value.id
            case .malware(let value): value.id
            case .note(let value): value.id
            case .observedData(let value): value.id
            case .opinion(let value): value.id
            case .report(let value): value.id
            case .threatActor(let value): value.id
            case .tool(let value): value.id
            case .vulnerability(let value): value.id
            case .relationship(let value): value.id
            case .sighting(let value): value.id
            case .languageContent(let value): value.id
            case .markingDefinition(let value): value.id
            case .extensionDefinition(let value): value.id
            case .custom(let value): value.id
        }
    }
}
