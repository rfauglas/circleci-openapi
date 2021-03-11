# CircleciOpenapi::JobDetailsMessages

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Message type. |  |
| **message** | **String** | Information describing message. |  |
| **reason** | **String** | Value describing the reason for message to be added to the job. | [optional] |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::JobDetailsMessages.new(
  type: null,
  message: null,
  reason: null
)
```

