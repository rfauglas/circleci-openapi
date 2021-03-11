# CircleciOpenapi::EnvironmentVariablePair

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the environment variable. |  |
| **value** | **String** | The value of the environment variable. |  |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::EnvironmentVariablePair.new(
  name: foo,
  value: xxxx1234
)
```

