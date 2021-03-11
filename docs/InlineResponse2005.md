# CircleciOpenapi::InlineResponse2005

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;InlineResponse2005Items&gt;**](InlineResponse2005Items.md) | Recent job runs. |  |
| **next_page_token** | **String** | A token to pass as a &#x60;page-token&#x60; query parameter to return the next page of results. |  |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::InlineResponse2005.new(
  items: null,
  next_page_token: null
)
```

