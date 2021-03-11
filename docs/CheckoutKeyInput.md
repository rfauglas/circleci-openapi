# CircleciOpenapi::CheckoutKeyInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of checkout key to create. This may be either &#x60;deploy-key&#x60; or &#x60;user-key&#x60;. |  |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::CheckoutKeyInput.new(
  type: deploy-key
)
```

