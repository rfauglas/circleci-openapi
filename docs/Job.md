# CircleciOpenapi::Job

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **canceled_by** | **String** | The unique ID of the user. | [optional] |
| **dependencies** | **Array&lt;String&gt;** | A sequence of the unique job IDs for the jobs that this job depends upon in the workflow. |  |
| **job_number** | **Integer** | The number of the job. | [optional] |
| **id** | **String** | The unique ID of the job. |  |
| **started_at** | **Time** | The date and time the job started. |  |
| **name** | **String** | The name of the job. |  |
| **approved_by** | **String** | The unique ID of the user. | [optional] |
| **project_slug** | **String** | The project-slug for the job. |  |
| **status** | [**AnyType**](.md) | The current status of the job. |  |
| **type** | **String** | The type of job. |  |
| **stopped_at** | **Time** | The time when the job stopped. | [optional] |
| **approval_request_id** | **String** | The unique ID of the job. | [optional] |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::Job.new(
  canceled_by: null,
  dependencies: null,
  job_number: null,
  id: null,
  started_at: null,
  name: null,
  approved_by: null,
  project_slug: gh/CircleCI-Public/api-preview-docs,
  status: null,
  type: null,
  stopped_at: null,
  approval_request_id: null
)
```

