# CircleciOpenapi::InlineResponse2002Metrics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_runs** | **Integer** | The total number of runs. |  |
| **successful_runs** | **Integer** | The number of successful runs. |  |
| **mttr** | **Integer** | The mean time to recovery (mean time between failures and their next success) in seconds. |  |
| **total_credits_used** | **Integer** | The total credits consumed by the workflow in the aggregation window. Note that Insights is not a real time financial reporting tool and should not be used for credit reporting. |  |
| **failed_runs** | **Integer** | The number of failed runs. |  |
| **success_rate** | **Float** | The ratio of successful runs / total runs. |  |
| **duration_metrics** | [**InlineResponse2002MetricsDurationMetrics**](InlineResponse2002MetricsDurationMetrics.md) |  |  |
| **total_recoveries** | **Integer** | The number of recovered workflow executions per day. |  |
| **throughput** | **Float** | The average number of runs per day. |  |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::InlineResponse2002Metrics.new(
  total_runs: null,
  successful_runs: null,
  mttr: null,
  total_credits_used: null,
  failed_runs: null,
  success_rate: null,
  duration_metrics: null,
  total_recoveries: null,
  throughput: null
)
```

