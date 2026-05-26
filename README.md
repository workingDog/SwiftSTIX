# SwiftSTIX

`SwiftSTIX` is a Swift package for working with STIX 2.1 objects and TAXII 2.1 feeds.

It is designed for:

- decoding and encoding STIX 2.1 JSON in native Swift types
- consuming TAXII 2.1 collections from Swift apps and services
- testing TAXII clients against real-world feeds such as Pulsedive

The package ships as a single module, `STIX2`.


An experiment to use **Codex AI** to generate the code, then some polishing.


## STIX and TAXII

[[1]](https://oasis-open.github.io/cti-documentation/) 
"Structured Threat Information Expression [STIX™] 
is a language and serialization format 
used to exchange [cyber threat intelligence (CTI)](https://www.oasis-open.org/committees/tc_home.php?wg_abbrev=cti). STIX enables organizations to share 
CTI with one another in a consistent and machine readable manner, allowing security 
communities to better understand what computer-based attacks they are most likely to 
see and to anticipate and/or respond to those attacks faster and more effectively. 
STIX is designed to improve many different capabilities, such as collaborative 
threat analysis, automated threat exchange, automated detection and response, and more."


## Features

- Swift 6 package with `Codable` STIX 2.1 models
- Polymorphic decoding through `STIXObject` and `STIXObservable`
- Support for custom STIX objects and custom observables
- STIX-friendly JSON date handling through `STIXJSON`
- Lightweight TAXII 2.1 client for discovery, collections, and object retrieval
- Tolerant TAXII envelope decoding for servers that return `next` as either a string or an integer

## Status

Minimal testing as yet. 

This package should be usable for STIX 2.1 decoding and TAXII 2.1 client integration, but it is still early-stage:

- focus is currently on STIX 2.1
- schema-backed models are present for standard SDO, SRO, and SCO types
- TAXII support is read-oriented and currently covers discovery, collections, and objects endpoints

## Installation

### Swift Package Manager

```swift
dependencies: [
    .package(url: "https://github.com/workingDog/SwiftSTIX.git", from: "0.1.0")
]
```

Then add the product:

```swift
targets: [
    .target(
        name: "YourTarget",
        dependencies: [
            .product(name: "SwiftSTIX", package: "SwiftSTIX")
        ]
    )
]
```

You can also import the product as `STIX2` if you prefer that product name.

## Quick Start

### Decode a STIX bundle

```swift
import Foundation
import STIX2

let data: Data = ...
let decoder = STIXJSON.makeDecoder()
let bundle = try decoder.decode(Bundle.self, from: data)

for obj in bundle.objects ?? [] {
    switch obj.object {
    case .indicator(let indicator):
        print("Indicator:", indicator.name ?? "<unnamed>")
    case .relationship(let relationship):
        print("Relationship:", relationship.relationshipType)
    default:
        break
    }
}
```

### Decode a TAXII envelope

```swift
import Foundation
import STIX2

let data: Data = ...
let envelope = try STIXJSON.makeDecoder().decode(TAXIIEnvelope.self, from: data)

print("More pages:", envelope.more ?? false)
print("Objects:", envelope.objects.count)
print("Next cursor:", envelope.next ?? "<none>")
```

### Read from Pulsedive's test collection

Pulsedive currently provides a free test collection that is useful for client integration work.

```swift
import STIX2

let client = TAXIIClient(configuration: .pulsediveTest(apiKey: "<YOUR_API_KEY>"))
let envelope = try await client.objects(
    collectionID: TAXIIClientConfiguration.pulsediveTestCollectionID,
    query: TAXIIObjectQuery(limit: 10, matchType: "indicator")
)

for object in envelope.objects {
    if case let .indicator(indicator) = object {
        print(indicator.name ?? "<unnamed indicator>")
    }
}
```

## Public API Highlights

- `Bundle`
- `STIXObject`
- `STIXObservable`
- `STIXValue`
- `STIXJSON`
- `TAXIIClient`
- `TAXIIClientConfiguration`
- `TAXIIEnvelope`
- `TAXIIObjectQuery`

## Package Layout

- [`Sources/STIX2/Models/STIXModels.swift`](Sources/STIX2/Models/STIXModels.swift)
  Core STIX 2.1 model types
- [`Sources/STIX2/Support/STIXCore.swift`](Sources/STIX2/Support/STIXCore.swift)
  Shared primitives, dynamic values, and JSON helpers
- [`Sources/STIX2/Support/TAXIIClient.swift`](Sources/STIX2/Support/TAXIIClient.swift)
  TAXII 2.1 client support
- [`Tests/STIX2Tests/STIX2Tests.swift`](Tests/STIX2Tests/STIX2Tests.swift)
  Decoding and request-construction coverage


## References

The model layer was originally derived from:

- [`oasis-open/cti-python-stix2`](https://github.com/oasis-open/cti-python-stix2)
- [`oasis-open/cti-stix2-json-schemas`](https://github.com/oasis-open/cti-stix2-json-schemas)

- [STIX 2.0 Specifications](https://oasis-open.github.io/cti-documentation/)
- [TAXII 2.1 Specification](https://oasis-open.github.io/cti-documentation/)

## Development

Run tests with:

```bash
swift test
```

## Notes

- The TAXII 2.1 specification defines the envelope `next` field as a string. This package accepts either `String` or `Int` on decode because some real-world servers return numeric cursors.
- This package aims to be practical for interop work first, while still tracking the standards closely.
