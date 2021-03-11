# CircleciOpenapi::InlineResponse2004MetricsDurationMetrics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **min** | **Integer** | The minimum duration, in seconds, among a group of runs. |  |
| **mean** | **Integer** | The mean duration, in seconds, among a group of runs. |  |
| **median** | **Integer** | The median duration, in seconds, among a group of runs. |  |
| **p95** | **Integer** | The 95th percentile duration, in seconds, among a group of runs. |  |
| **max** | **Integer** | The max duration, in seconds, among a group of runs. |  |
| **standard_deviation** | **Float** | The standard deviation, in seconds, among a group of runs. |  |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::InlineResponse2004MetricsDurationMetrics.new(
  min: null,
  mean: null,
  median: null,
  p95: null,
  max: null,
  standard_deviation: null
)
```

