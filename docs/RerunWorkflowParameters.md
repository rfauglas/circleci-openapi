# CircleciOpenapi::RerunWorkflowParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **jobs** | **Array&lt;String&gt;** | A list of job IDs to rerun. | [optional] |
| **from_failed** | **Boolean** | Whether to rerun the workflow from the failed job. Mutually exclusive with the jobs parameter. | [optional] |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::RerunWorkflowParameters.new(
  jobs: [&quot;c65b68ef-e73b-4bf2-be9a-7a322a9df150&quot;,&quot;5e957edd-5e8c-4985-9178-5d0d69561822&quot;],
  from_failed: false
)
```

