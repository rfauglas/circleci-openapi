# CircleciOpenapi::EnvironmentVariableListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;EnvironmentVariablePair&gt;**](EnvironmentVariablePair.md) |  |  |
| **next_page_token** | **String** | A token to pass as a &#x60;page-token&#x60; query parameter to return the next page of results. |  |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::EnvironmentVariableListResponse.new(
  items: null,
  next_page_token: null
)
```

