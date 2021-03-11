# CircleciOpenapi::Context

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID of the context. |  |
| **name** | **String** | The user defined name of the context. |  |
| **created_at** | **Time** | The date and time the context was created. |  |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::Context.new(
  id: null,
  name: null,
  created_at: 2015-09-21T17:29:21.042Z
)
```

