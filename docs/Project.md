# CircleciOpenapi::Project

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** | Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. |  |
| **name** | **String** | The name of the project |  |
| **organization_name** | **String** | The name of the organization the project belongs to |  |
| **vcs_info** | [**ProjectVcsInfo**](ProjectVcsInfo.md) |  |  |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::Project.new(
  slug: gh/CircleCI-Public/api-preview-docs,
  name: api-preview-docs,
  organization_name: CircleCI-Public,
  vcs_info: null
)
```

