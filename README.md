# Swift Markdown

Fork from `apple/swift-markdown`

## Getting Started Using Markup

#### SPM

In your `Package.swift` Swift Package Manager manifest, add the following dependency to your `dependencies` argument:

```swift
.package(url: "https://github.com/apple/swift-markdown.git", .branch("main")),
```

Add the dependency to any targets you've declared in your manifest:

```swift
.target(name: "MyTarget", dependencies: ["Markdown"]),
```

#### Cocoapods

```
pod 'Markdown', :git => 'https://github.com/ghostcrying/swift-markdown.git', :tag => '0.0.1'
```

#### Carthage

```
github "ghostcrying/swift-cmark.git"
```



To parse a document, use `Document(parsing:)`, supplying a `String` or `URL`:

```swift
import Markdown

let source = "This is a markup *document*."
let document = Document(parsing: source)
print(document.debugDescription())
// Document
// └─ Paragraph
//    ├─ Text "This is a markup "
//    ├─ Emphasis
//    │  └─ Text "document"
//    └─ Text "."
```

Please see Swift `Markdown`'s [documentation site](https://apple.github.io/swift-markdown/documentation/markdown/)
for more detailed information about the library.
