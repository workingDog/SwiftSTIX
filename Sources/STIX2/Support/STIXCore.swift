import Foundation

public struct STIXIdentifier: RawRepresentable, Codable, Sendable, Hashable, ExpressibleByStringLiteral {
    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public init(stringLiteral value: String) {
        self.rawValue = value
    }
}

public protocol STIXObjectProtocol: Codable, Sendable {
    static var stixType: String { get }
    var type: String { get set }
    var id: STIXIdentifier { get set }
}

public protocol STIXObservableProtocol: Codable, Sendable {
    static var stixType: String { get }
    var type: String { get set }
    var id: STIXIdentifier { get set }
    var specVersion: String { get set }
}

public struct ExternalReference: Codable, Sendable, Equatable {
    public var sourceName: String
    public var externalID: String?
    public var description: String?
    public var url: String?
    public var hashes: [String: STIXValue]?

    public init(
        sourceName: String,
        externalID: String? = nil,
        description: String? = nil,
        url: String? = nil,
        hashes: [String: STIXValue]? = nil
    ) {
        self.sourceName = sourceName
        self.externalID = externalID
        self.description = description
        self.url = url
        self.hashes = hashes
    }

    enum CodingKeys: String, CodingKey {
        case sourceName = "source_name"
        case externalID = "external_id"
        case description
        case url
        case hashes
    }
}

public struct KillChainPhase: Codable, Sendable, Equatable {
    public var killChainName: String
    public var phaseName: String

    public init(killChainName: String, phaseName: String) {
        self.killChainName = killChainName
        self.phaseName = phaseName
    }

    enum CodingKeys: String, CodingKey {
        case killChainName = "kill_chain_name"
        case phaseName = "phase_name"
    }
}

public struct GranularMarking: Codable, Sendable, Equatable {
    public var selectors: [String]
    public var lang: String?
    public var markingRef: STIXIdentifier

    public init(selectors: [String], lang: String? = nil, markingRef: STIXIdentifier) {
        self.selectors = selectors
        self.lang = lang
        self.markingRef = markingRef
    }

    enum CodingKeys: String, CodingKey {
        case selectors
        case lang
        case markingRef = "marking_ref"
    }
}

public struct DynamicCodingKey: CodingKey, Hashable, Sendable {
    public var stringValue: String
    public var intValue: Int?

    public init(_ stringValue: String) {
        self.stringValue = stringValue
        self.intValue = nil
    }

    public init?(stringValue: String) {
        self.init(stringValue)
    }

    public init?(intValue: Int) {
        self.stringValue = String(intValue)
        self.intValue = intValue
    }
}

public enum STIXValue: Codable, Sendable, Equatable {
    case null
    case bool(Bool)
    case int(Int)
    case double(Double)
    case string(String)
    case array([STIXValue])
    case object([String: STIXValue])

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        if container.decodeNil() {
            self = .null
        } else if let value = try? container.decode(Bool.self) {
            self = .bool(value)
        } else if let value = try? container.decode(Int.self) {
            self = .int(value)
        } else if let value = try? container.decode(Double.self) {
            self = .double(value)
        } else if let value = try? container.decode(String.self) {
            self = .string(value)
        } else if let value = try? container.decode([STIXValue].self) {
            self = .array(value)
        } else {
            self = .object(try container.decode([String: STIXValue].self))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()

        switch self {
        case .null:
            try container.encodeNil()
        case .bool(let value):
            try container.encode(value)
        case .int(let value):
            try container.encode(value)
        case .double(let value):
            try container.encode(value)
        case .string(let value):
            try container.encode(value)
        case .array(let value):
            try container.encode(value)
        case .object(let value):
            try container.encode(value)
        }
    }
}

public enum STIXJSON {
    public static func makeDecoder() -> JSONDecoder {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .custom(decodeDate)
        return decoder
    }

    public static func makeEncoder(prettyPrinted: Bool = false) -> JSONEncoder {
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .custom(encodeDate)
        if prettyPrinted {
            encoder.outputFormatting = [.prettyPrinted, .sortedKeys]
        }
        return encoder
    }

    private static func decodeDate(_ decoder: Decoder) throws -> Date {
        let container = try decoder.singleValueContainer()
        let raw = try container.decode(String.self)
        if let date = makeFractionalDateFormatter().date(from: raw) ?? makeFallbackDateFormatter().date(from: raw) {
            return date
        }

        throw DecodingError.dataCorruptedError(
            in: container,
            debugDescription: "Expected a STIX RFC 3339 timestamp, received \(raw)"
        )
    }

    private static func encodeDate(_ date: Date, encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(makeFractionalDateFormatter().string(from: date))
    }

    private static func makeFractionalDateFormatter() -> ISO8601DateFormatter {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        return formatter
    }

    private static func makeFallbackDateFormatter() -> ISO8601DateFormatter {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withInternetDateTime]
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        return formatter
    }
}

public struct CustomObject: Codable, Sendable, Equatable {
    public var type: String
    public var specVersion: String?
    public var id: STIXIdentifier
    public var properties: [String: STIXValue]

    public init(
        type: String,
        specVersion: String? = nil,
        id: STIXIdentifier,
        properties: [String: STIXValue] = [:]
    ) {
        self.type = type
        self.specVersion = specVersion
        self.id = id
        self.properties = properties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKey.self)
        let type = try container.decode(String.self, forKey: DynamicCodingKey("type"))
        let id = try container.decode(STIXIdentifier.self, forKey: DynamicCodingKey("id"))
        let specVersion = try container.decodeIfPresent(
            String.self,
            forKey: DynamicCodingKey("spec_version")
        )

        var properties = try [String: STIXValue](from: decoder)
        properties.removeValue(forKey: "type")
        properties.removeValue(forKey: "id")
        properties.removeValue(forKey: "spec_version")

        self.init(type: type, specVersion: specVersion, id: id, properties: properties)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DynamicCodingKey.self)
        try container.encode(type, forKey: DynamicCodingKey("type"))
        try container.encode(id, forKey: DynamicCodingKey("id"))
        try container.encodeIfPresent(specVersion, forKey: DynamicCodingKey("spec_version"))
        for (key, value) in properties {
            try container.encode(value, forKey: DynamicCodingKey(key))
        }
    }
}

public struct CustomObservable: Codable, Sendable, Equatable {
    public var type: String
    public var specVersion: String
    public var id: STIXIdentifier
    public var properties: [String: STIXValue]

    public init(
        type: String,
        specVersion: String = "2.1",
        id: STIXIdentifier,
        properties: [String: STIXValue] = [:]
    ) {
        self.type = type
        self.specVersion = specVersion
        self.id = id
        self.properties = properties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKey.self)
        let type = try container.decode(String.self, forKey: DynamicCodingKey("type"))
        let id = try container.decode(STIXIdentifier.self, forKey: DynamicCodingKey("id"))
        let specVersion = try container.decodeIfPresent(
            String.self,
            forKey: DynamicCodingKey("spec_version")
        ) ?? "2.1"

        var properties = try [String: STIXValue](from: decoder)
        properties.removeValue(forKey: "type")
        properties.removeValue(forKey: "id")
        properties.removeValue(forKey: "spec_version")

        self.init(type: type, specVersion: specVersion, id: id, properties: properties)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DynamicCodingKey.self)
        try container.encode(type, forKey: DynamicCodingKey("type"))
        try container.encode(id, forKey: DynamicCodingKey("id"))
        try container.encode(specVersion, forKey: DynamicCodingKey("spec_version"))
        for (key, value) in properties {
            try container.encode(value, forKey: DynamicCodingKey(key))
        }
    }
}
