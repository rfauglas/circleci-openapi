# CircleciOpenapi::JobDetailsProject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** | Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. |  |
| **name** | **String** | The name of the project |  |
| **external_url** | **String** | URL to the repository hosting the project&#39;s code |  |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::JobDetailsProject.new(
  slug: gh/CircleCI-Public/api-preview-docs,
  name: api-preview-docs,
  external_url: https://github.com/CircleCI-Public/api-preview-docs
)
```

