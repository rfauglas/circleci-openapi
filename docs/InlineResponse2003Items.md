# CircleciOpenapi::InlineResponse2003Items

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID of the workflow. |  |
| **duration** | **Integer** | The duration in seconds of a run. |  |
| **created_at** | **Time** | The date and time the workflow was created. |  |
| **stopped_at** | **Time** | The date and time the workflow stopped. |  |
| **credits_used** | **Integer** | The number of credits used during execution. Note that Insights is not a real time financial reporting tool and should not be used for credit reporting. |  |
| **status** | **String** | Workflow status. |  |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::InlineResponse2003Items.new(
  id: null,
  duration: null,
  created_at: null,
  stopped_at: null,
  credits_used: null,
  status: null
)
```

