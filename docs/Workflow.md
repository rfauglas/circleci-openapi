# CircleciOpenapi::Workflow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pipeline_id** | **String** | The ID of the pipeline this workflow belongs to. |  |
| **canceled_by** | **String** |  | [optional] |
| **id** | **String** | The unique ID of the workflow. |  |
| **name** | **String** | The name of the workflow. |  |
| **project_slug** | **String** | The project-slug for the pipeline this workflow belongs to. |  |
| **errored_by** | **String** |  | [optional] |
| **tag** | **String** | Tag used for the workflow | [optional] |
| **status** | **String** | The current status of the workflow. |  |
| **started_by** | **String** |  |  |
| **pipeline_number** | **Integer** | The number of the pipeline this workflow belongs to. |  |
| **created_at** | **Time** | The date and time the workflow was created. |  |
| **stopped_at** | **Time** | The date and time the workflow stopped. |  |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::Workflow.new(
  pipeline_id: null,
  canceled_by: null,
  id: null,
  name: build-and-test,
  project_slug: gh/CircleCI-Public/api-preview-docs,
  errored_by: null,
  tag: setup,
  status: null,
  started_by: null,
  pipeline_number: null,
  created_at: null,
  stopped_at: null
)
```

