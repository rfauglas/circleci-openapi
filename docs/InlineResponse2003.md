# CircleciOpenapi::InlineResponse2003

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;InlineResponse2003Items&gt;**](InlineResponse2003Items.md) | Recent workflow runs. |  |
| **next_page_token** | **String** | A token to pass as a &#x60;page-token&#x60; query parameter to return the next page of results. |  |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::InlineResponse2003.new(
  items: null,
  next_page_token: null
)
```

