# CircleciOpenapi::PipelineCreation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID of the pipeline. |  |
| **state** | **String** | The current state of the pipeline. |  |
| **number** | **Integer** | The number of the pipeline. |  |
| **created_at** | **Time** | The date and time the pipeline was created. |  |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::PipelineCreation.new(
  id: null,
  state: null,
  number: null,
  created_at: null
)
```

