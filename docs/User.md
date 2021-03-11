# CircleciOpenapi::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID of the user. |  |
| **login** | **String** | The login information for the user on the VCS. |  |
| **name** | **String** | The name of the user. |  |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::User.new(
  id: null,
  login: null,
  name: null
)
```

