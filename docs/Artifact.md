# CircleciOpenapi::Artifact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **path** | **String** | The artifact path. |  |
| **node_index** | **Integer** | The index of the node that stored the artifact. |  |
| **url** | **String** | The URL to download the artifact contents. |  |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::Artifact.new(
  path: null,
  node_index: null,
  url: null
)
```

