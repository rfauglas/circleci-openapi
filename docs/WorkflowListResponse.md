# CircleciOpenapi::WorkflowListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;Workflow&gt;**](Workflow.md) | A list of workflows. |  |
| **next_page_token** | **String** | A token to pass as a &#x60;page-token&#x60; query parameter to return the next page of results. |  |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::WorkflowListResponse.new(
  items: null,
  next_page_token: null
)
```

