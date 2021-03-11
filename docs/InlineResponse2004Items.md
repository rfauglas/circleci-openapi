# CircleciOpenapi::InlineResponse2004Items

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the job. |  |
| **window_start** | **Time** | The start of the aggregation window for job metrics. |  |
| **window_end** | **Time** | The end of the aggregation window for job metrics. |  |
| **metrics** | [**InlineResponse2004Metrics**](InlineResponse2004Metrics.md) |  |  |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::InlineResponse2004Items.new(
  name: null,
  window_start: null,
  window_end: null,
  metrics: null
)
```

