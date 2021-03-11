# CircleciOpenapi::InlineResponse2004Metrics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success_rate** | **Float** | The ratio of successful runs / total runs. |  |
| **total_runs** | **Integer** | The total number of runs. |  |
| **failed_runs** | **Integer** | The number of failed runs. |  |
| **successful_runs** | **Integer** | The number of successful runs. |  |
| **throughput** | **Float** | The average number of runs per day. |  |
| **total_credits_used** | **Integer** | The total credits consumed by the job in the aggregation window. Note that Insights is not a real time financial reporting tool and should not be used for credit reporting. |  |
| **duration_metrics** | [**InlineResponse2004MetricsDurationMetrics**](InlineResponse2004MetricsDurationMetrics.md) |  |  |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::InlineResponse2004Metrics.new(
  success_rate: null,
  total_runs: null,
  failed_runs: null,
  successful_runs: null,
  throughput: null,
  total_credits_used: null,
  duration_metrics: null
)
```

