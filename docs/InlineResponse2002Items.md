# CircleciOpenapi::InlineResponse2002Items

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the workflow. |  |
| **window_start** | **Time** | The start of the aggregation window for workflow metrics. |  |
| **window_end** | **Time** | The end of the aggregation window for workflow metrics. |  |
| **metrics** | [**InlineResponse2002Metrics**](InlineResponse2002Metrics.md) |  |  |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::InlineResponse2002Items.new(
  name: build-and-test,
  window_start: null,
  window_end: null,
  metrics: null
)
```

