# CircleciOpenapi::WorkflowJobListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;Job&gt;**](Job.md) |  |  |
| **next_page_token** | **String** | A token to pass as a &#x60;page-token&#x60; query parameter to return the next page of results. |  |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::WorkflowJobListResponse.new(
  items: null,
  next_page_token: null
)
```

