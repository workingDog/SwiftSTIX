import Foundation
import Testing

@testable import STIX2

@Test
func decodesUpstreamRelationshipBundle() throws {
    let json = """
    {
      "type": "bundle",
      "id": "bundle--44af6c39-c09b-49c5-9de2-394224b04982",
      "objects": [
        {
          "type": "campaign",
          "spec_version": "2.1",
          "id": "campaign--b549a58c-afd9-4847-85c3-5be13d56d3cc",
          "created": "2014-09-09T19:58:39.609Z",
          "modified": "2014-09-09T19:58:39.609Z",
          "name": "Operation Omega"
        },
        {
          "type": "indicator",
          "spec_version": "2.1",
          "pattern_type": "stix",
          "name": "test_name",
          "description": "Test description.",
          "id": "indicator--c43a0a05-e8d2-4f64-ae37-3f3fb153f8d9",
          "created": "2014-09-09T19:58:39.609Z",
          "modified": "2014-09-09T19:58:39.609Z",
          "indicator_types": [
            "malicious-activity"
          ],
          "pattern": "[ ipv4-addr:value = '10.0.0.0' ]",
          "valid_from": "2014-09-09T19:58:39.609000Z"
        },
        {
          "type": "relationship",
          "spec_version": "2.1",
          "id": "relationship--eca24e47-2259-4850-9705-fd1065c77236",
          "relationship_type": "indicates",
          "created": "2014-09-09T19:58:39.609Z",
          "modified": "2014-09-09T19:58:39.609Z",
          "source_ref": "indicator--c43a0a05-e8d2-4f64-ae37-3f3fb153f8d9",
          "target_ref": "campaign--b549a58c-afd9-4847-85c3-5be13d56d3cc"
        }
      ]
    }
    """

    let bundle = try STIXJSON.makeDecoder().decode(Bundle.self, from: Data(json.utf8))
    #expect(bundle.type == "bundle")
    #expect(bundle.objects?.count == 3)

    guard case let .relationship(relationship)? = bundle.objects?.last?.object else {
        Issue.record("Expected the third object to decode as a relationship")
        return
    }

    #expect(relationship.relationshipType == "indicates")
    #expect(relationship.sourceRef.rawValue == "indicator--c43a0a05-e8d2-4f64-ae37-3f3fb153f8d9")
}

@Test
func decodesObservedDataWithObservableDictionary() throws {
    let json = """
    {
      "type": "observed-data",
      "spec_version": "2.1",
      "id": "observed-data--11111111-1111-4111-8111-111111111111",
      "created": "2024-01-10T12:00:00.000Z",
      "modified": "2024-01-10T12:00:00.000Z",
      "first_observed": "2024-01-10T11:55:00.000Z",
      "last_observed": "2024-01-10T12:00:00.000Z",
      "number_observed": 1,
      "objects": {
        "0": {
          "type": "file",
          "spec_version": "2.1",
          "id": "file--22222222-2222-4222-8222-222222222222",
          "name": "invoice.pdf",
          "hashes": {
            "SHA-256": "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
          }
        },
        "1": {
          "type": "directory",
          "spec_version": "2.1",
          "id": "directory--33333333-3333-4333-8333-333333333333",
          "path": "/tmp/drop"
        }
      }
    }
    """

    let object = try STIXJSON.makeDecoder().decode(ObservedData.self, from: Data(json.utf8))
    #expect(object.numberObserved == 1)
    #expect(object.objects?.count == 2)

    guard case let .file(file)? = object.objects?["0"] else {
        Issue.record("Expected object 0 to decode as a file observable")
        return
    }

    #expect(file.name == "invoice.pdf")
}

@Test
func roundTripsCustomObject() throws {
    let payload = CustomObject(
        type: "x-acme-analytic",
        specVersion: "2.1",
        id: "x-acme-analytic--44444444-4444-4444-8444-444444444444",
        properties: [
            "score": .int(98),
            "summary": .string("Suspicious lateral movement"),
        ]
    )

    let encoded = try STIXJSON.makeEncoder().encode(payload)
    let decoded = try STIXJSON.makeDecoder().decode(CustomObject.self, from: encoded)

    #expect(decoded.type == payload.type)
    #expect(decoded.properties["score"] == .int(98))
}

@Test
func buildsPulsediveObjectsRequest() throws {
    let client = TAXIIClient(configuration: .pulsediveTest(apiKey: "demo-key"))
    let envelopeURL = URL(string: "https://pulsedive.com/taxii2/api/collections/981c4916-ebb2-4567-aece-54ae970c4230/objects")!
    let request = client.request(for: envelopeURL)

    #expect(request.value(forHTTPHeaderField: "Accept") == "application/taxii+json;version=2.1")
    #expect(request.value(forHTTPHeaderField: "Authorization") == "Basic dGF4aWkyOmRlbW8ta2V5")
}

@Test
func buildsCveDetailsConfiguration() {
    let configuration = TAXIIClientConfiguration.cveDetails()

    #expect(configuration.discoveryURL?.absoluteString == "https://www.cvedetails.com/taxii2/")
    #expect(configuration.apiRootURL.absoluteString == "https://www.cvedetails.com/taxii2/api/v1/")
    #expect(configuration.authentication == .none)
}

@Test
func encodesTaxiiQueryParameters() {
    let query = TAXIIObjectQuery(
        addedAfter: "2026-02-01T00:00:00Z",
        limit: 50,
        next: "cursor-1",
        matchType: "indicator",
        extraParameters: ["pretty": "1"]
    )

    let items = query.queryItems()
    #expect(items.contains(URLQueryItem(name: "added_after", value: "2026-02-01T00:00:00Z")))
    #expect(items.contains(URLQueryItem(name: "limit", value: "50")))
    #expect(items.contains(URLQueryItem(name: "next", value: "cursor-1")))
    #expect(items.contains(URLQueryItem(name: "match[type]", value: "indicator")))
    #expect(items.contains(URLQueryItem(name: "pretty", value: "1")))
}

@Test
func decodesTaxiiEnvelopeWithIdentityAndIndicator() throws {
    let json = """
    {
      "more": false,
      "objects": [
        {
          "id": "identity--5c9fb347-238c-5b07-bae0-93fe6972689d",
          "type": "identity",
          "name": "Pulsedive",
          "identity_class": "organization",
          "created": "2026-02-08T08:56:18.000Z",
          "modified": "2026-02-08T08:56:18.000Z",
          "spec_version": "2.1"
        },
        {
          "id": "indicator--9b9e796a-0e68-5afe-9773-000077083236",
          "type": "indicator",
          "name": "Detection Pattern",
          "description": "Very high risk of malicious activity.",
          "valid_from": "2026-02-07T09:34:24.000Z",
          "indicator_types": ["malicious-activity"],
          "pattern": "[domain-name:value = 'greenmort.com']",
          "pattern_type": "stix",
          "created": "2026-02-07T09:34:24.000Z",
          "modified": "2026-02-07T09:34:36.000Z",
          "created_by_ref": "identity--5c9fb347-238c-5b07-bae0-93fe6972689d",
          "spec_version": "2.1"
        }
      ]
    }
    """

    let envelope = try STIXJSON.makeDecoder().decode(TAXIIEnvelope.self, from: Data(json.utf8))
    #expect(envelope.more == false)
    #expect(envelope.objects.count == 2)

    guard case let .indicator(indicator) = envelope.objects[1].object else {
        Issue.record("Expected second TAXII object to decode as a STIX indicator")
        return
    }

    #expect(indicator.name == "Detection Pattern")
    #expect(indicator.patternType == "stix")
}
