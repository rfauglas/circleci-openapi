# CircleciOpenapi::InlineResponse2001Items

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **variable** | **String** | The name of the environment variable |  |
| **created_at** | **Time** | The date and time the environment variable was created. |  |
| **context_id** | **String** | ID of the context (UUID) |  |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::InlineResponse2001Items.new(
  variable: POSTGRES_USER,
  created_at: 2015-09-21T17:29:21.042Z,
  context_id: null
)
```

