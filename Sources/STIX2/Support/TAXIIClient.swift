import Foundation

public struct TAXIIServerInfo: Codable, Sendable, Equatable {
    public var title: String?
    public var description: String?
    public var defaultAPI: String?
    public var apiRoots: [String]?
    public var versions: [String]?
    public var maxContentLength: Int?

    public init(
        title: String? = nil,
        description: String? = nil,
        defaultAPI: String? = nil,
        apiRoots: [String]? = nil,
        versions: [String]? = nil,
        maxContentLength: Int? = nil
    ) {
        self.title = title
        self.description = description
        self.defaultAPI = defaultAPI
        self.apiRoots = apiRoots
        self.versions = versions
        self.maxContentLength = maxContentLength
    }

    enum CodingKeys: String, CodingKey {
        case title
        case description
        case versions
        case defaultAPI = "default"
        case apiRoots = "api_roots"
        case maxContentLength = "max_content_length"
    }
}

public struct TAXIICollection: Codable, Sendable, Equatable {
    public var id: String
    public var title: String
    public var description: String?
    public var canRead: Bool?
    public var canWrite: Bool?
    public var mediaTypes: [String]?
    public var alias: String?

    public init(
        id: String,
        title: String,
        description: String? = nil,
        canRead: Bool? = nil,
        canWrite: Bool? = nil,
        mediaTypes: [String]? = nil,
        alias: String? = nil
    ) {
        self.id = id
        self.title = title
        self.description = description
        self.canRead = canRead
        self.canWrite = canWrite
        self.mediaTypes = mediaTypes
        self.alias = alias
    }

    enum CodingKeys: String, CodingKey {
        case id
        case title
        case description
        case canRead = "can_read"
        case canWrite = "can_write"
        case mediaTypes = "media_types"
        case alias
    }
}

public struct TAXIICollectionsResponse: Codable, Sendable, Equatable {
    public var collections: [TAXIICollection]

    public init(collections: [TAXIICollection]) {
        self.collections = collections
    }
}

public struct TAXIIEnvelope: Codable, Sendable, Equatable {
    public var more: Bool?
    public var next: String?
    public var objects: [STIXObject]

    public init(more: Bool? = nil, next: String? = nil,  objects: [STIXObject]) {
        self.more = more
        self.next = next
        self.objects = objects
    }
    
    public enum CodingKeys: String, CodingKey {
        case more
        case next
        case objects
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.more = try container.decodeIfPresent(Bool.self, forKey: .more)
        self.objects = try container.decode([STIXObject].self, forKey: .objects )
        // next should be a String but sometimes it is given as an Int
        if let stringValue = try container.decodeIfPresent(String.self, forKey: .next) {
            self.next = stringValue
        } else if let intValue = try container.decodeIfPresent(Int.self, forKey: .next) {
            self.next = String(intValue)
        } else {
            self.next = nil
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(more, forKey: .more)
        try container.encode(objects, forKey: .objects)
        try container.encodeIfPresent(next, forKey: .next)
    }
}

public enum TAXIIAuthentication: Sendable, Equatable {
    case none
    case basic(username: String, password: String)
    case bearer(token: String)
    case header(name: String, value: String)
}

public struct TAXIIClientConfiguration: Sendable, Equatable {
    public static let pulsediveTestCollectionID = "981c4916-ebb2-4567-aece-54ae970c4230"

    public var discoveryURL: URL?
    public var apiRootURL: URL
    public var authentication: TAXIIAuthentication
    public var acceptHeader: String

    public init(
        discoveryURL: URL? = nil,
        apiRootURL: URL,
        authentication: TAXIIAuthentication = .none,
        acceptHeader: String = "application/taxii+json;version=2.1"
    ) {
        self.discoveryURL = discoveryURL
        self.apiRootURL = apiRootURL
        self.authentication = authentication
        self.acceptHeader = acceptHeader
    }

    public static func pulsediveTest(apiKey: String) -> TAXIIClientConfiguration {
        TAXIIClientConfiguration(
            discoveryURL: URL(string: "https://pulsedive.com/taxii2/")!,
            apiRootURL: URL(string: "https://pulsedive.com/taxii2/api/")!,
            authentication: .basic(username: "taxii2", password: apiKey)
        )
    }

    public static func cveDetails() -> TAXIIClientConfiguration {
        TAXIIClientConfiguration(
            discoveryURL: URL(string: "https://www.cvedetails.com/taxii2/")!,
            apiRootURL: URL(string: "https://www.cvedetails.com/taxii2/api/v1/")!,
            authentication: .none
        )
    }
}

public enum TAXIIClientError: Error, Sendable, Equatable {
    case missingDiscoveryURL
    case invalidResponse(statusCode: Int, body: String?)
}

public struct TAXIIObjectQuery: Sendable, Equatable {
    public var addedAfter: String?
    public var limit: Int?
    public var next: String?
    public var matchID: String?
    public var matchSpecVersion: String?
    public var matchType: String?
    public var matchVersion: String?
    public var extraParameters: [String: String]

    public init(
        addedAfter: String? = nil,
        limit: Int? = nil,
        next: String? = nil,
        matchID: String? = nil,
        matchSpecVersion: String? = nil,
        matchType: String? = nil,
        matchVersion: String? = nil,
        extraParameters: [String: String] = [:]
    ) {
        self.addedAfter = addedAfter
        self.limit = limit
        self.next = next
        self.matchID = matchID
        self.matchSpecVersion = matchSpecVersion
        self.matchType = matchType
        self.matchVersion = matchVersion
        self.extraParameters = extraParameters
    }

    func queryItems() -> [URLQueryItem] {
        var items: [URLQueryItem] = []

        if let addedAfter {
            items.append(URLQueryItem(name: "added_after", value: addedAfter))
        }
        if let limit {
            items.append(URLQueryItem(name: "limit", value: String(limit)))
        }
        if let next {
            items.append(URLQueryItem(name: "next", value: next))
        }
        if let matchID {
            items.append(URLQueryItem(name: "match[id]", value: matchID))
        }
        if let matchSpecVersion {
            items.append(URLQueryItem(name: "match[spec_version]", value: matchSpecVersion))
        }
        if let matchType {
            items.append(URLQueryItem(name: "match[type]", value: matchType))
        }
        if let matchVersion {
            items.append(URLQueryItem(name: "match[version]", value: matchVersion))
        }

        for key in extraParameters.keys.sorted() {
            items.append(URLQueryItem(name: key, value: extraParameters[key]))
        }

        return items
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
public struct TAXIIClient: Sendable {
    public var configuration: TAXIIClientConfiguration
    public var session: URLSession

    public init(configuration: TAXIIClientConfiguration, session: URLSession = .shared) {
        self.configuration = configuration
        self.session = session
    }

    public func discovery() async throws -> TAXIIServerInfo {
        guard let discoveryURL = configuration.discoveryURL else {
            throw TAXIIClientError.missingDiscoveryURL
        }

        return try await send(.init(url: discoveryURL), as: TAXIIServerInfo.self)
    }

    public func collections() async throws -> [TAXIICollection] {
        let url = configuration.apiRootURL.appendingPathComponent("collections")
        let response = try await send(.init(url: url), as: TAXIICollectionsResponse.self)
        return response.collections
    }

    public func collection(id: String) async throws -> TAXIICollection {
        let url = configuration.apiRootURL
            .appendingPathComponent("collections")
            .appendingPathComponent(id)
        return try await send(.init(url: url), as: TAXIICollection.self)
    }

    public func objects(
        collectionID: String,
        query: TAXIIObjectQuery = TAXIIObjectQuery()
    ) async throws -> TAXIIEnvelope {
        var components = URLComponents(
            url: configuration.apiRootURL
                .appendingPathComponent("collections")
                .appendingPathComponent(collectionID)
                .appendingPathComponent("objects"),
            resolvingAgainstBaseURL: false
        )!
        let queryItems = query.queryItems()
        if !queryItems.isEmpty {
            components.queryItems = queryItems
        }

        return try await send(.init(url: components.url!), as: TAXIIEnvelope.self)
    }

    public func request(for url: URL) -> URLRequest {
        var request = URLRequest(url: url)
        request.setValue(configuration.acceptHeader, forHTTPHeaderField: "Accept")

        switch configuration.authentication {
        case .none:
            break
        case .basic(let username, let password):
            let encoded = Data("\(username):\(password)".utf8).base64EncodedString()
            request.setValue("Basic \(encoded)", forHTTPHeaderField: "Authorization")
        case .bearer(let token):
            request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        case .header(let name, let value):
            request.setValue(value, forHTTPHeaderField: name)
        }

        return request
    }

    private func send<T: Decodable>(_ request: URLRequest, as type: T.Type) async throws -> T {
        let configured = self.request(for: request.url!)
        let (data, response) = try await session.data(for: configured)

        guard let http = response as? HTTPURLResponse else {
            throw URLError(.badServerResponse)
        }
        guard (200...299).contains(http.statusCode) else {
            let body = String(data: data, encoding: .utf8)
            throw TAXIIClientError.invalidResponse(statusCode: http.statusCode, body: body)
        }

        return try STIXJSON.makeDecoder().decode(T.self, from: data)
    }
}
