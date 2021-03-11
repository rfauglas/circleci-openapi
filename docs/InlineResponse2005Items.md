# CircleciOpenapi::InlineResponse2005Items

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID of the job. |  |
| **started_at** | **Time** | The date and time the job started. |  |
| **stopped_at** | **Time** | The time when the job stopped. |  |
| **status** | **String** | Job status. |  |
| **duration** | **Integer** | The duration in seconds of a run. |  |
| **credits_used** | **Integer** | The number of credits used during execution. Note that Insights is not a real time financial reporting tool and should not be used for credit reporting. |  |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::InlineResponse2005Items.new(
  id: null,
  started_at: null,
  stopped_at: null,
  status: null,
  duration: null,
  credits_used: null
)
```

