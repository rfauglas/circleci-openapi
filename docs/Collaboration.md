# CircleciOpenapi::Collaboration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vcs_type** | **String** | The VCS provider |  |
| **name** | **String** | The name of the organization |  |
| **avatar_url** | **String** | URL to the user&#39;s avatar on the VCS |  |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::Collaboration.new(
  vcs_type: null,
  name: null,
  avatar_url: null
)
```

