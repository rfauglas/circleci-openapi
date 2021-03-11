# CircleciOpenapi::InlineObject2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **continuation_key** | **String** | A pipeline continuation key. |  |
| **configuration** | **String** | A configuration string for the pipeline. |  |
| **parameters** | [**Hash&lt;String, AnyOfintegerstringboolean&gt;**](AnyOfintegerstringboolean.md) | An object containing pipeline parameters and their values. | [optional] |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::InlineObject2.new(
  continuation_key: null,
  configuration: null,
  parameters: {&quot;deploy_prod&quot;:true}
)
```

