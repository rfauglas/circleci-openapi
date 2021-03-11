# CircleciOpenapi::PipelineListResponseTrigger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of trigger. |  |
| **received_at** | **Time** | The date and time the trigger was received. |  |
| **actor** | [**PipelineListResponseTriggerActor**](PipelineListResponseTriggerActor.md) |  |  |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::PipelineListResponseTrigger.new(
  type: null,
  received_at: null,
  actor: null
)
```

