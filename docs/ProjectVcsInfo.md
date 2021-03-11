# CircleciOpenapi::ProjectVcsInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vcs_url** | **String** | URL to the repository hosting the project&#39;s code |  |
| **provider** | **String** | The VCS provider |  |
| **default_branch** | **String** |  |  |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::ProjectVcsInfo.new(
  vcs_url: https://github.com/CircleCI-Public/api-preview-docs,
  provider: null,
  default_branch: master
)
```

