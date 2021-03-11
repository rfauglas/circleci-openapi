# CircleciOpenapi::Pipeline

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID of the pipeline. |  |
| **errors** | [**Array&lt;PipelineListResponseErrors&gt;**](PipelineListResponseErrors.md) | A sequence of errors that have occurred within the pipeline. |  |
| **project_slug** | **String** | The project-slug for the pipeline. |  |
| **updated_at** | **Time** | The date and time the pipeline was last updated. | [optional] |
| **number** | **Integer** | The number of the pipeline. |  |
| **state** | **String** | The current state of the pipeline. |  |
| **created_at** | **Time** | The date and time the pipeline was created. |  |
| **trigger** | [**PipelineListResponseTrigger**](PipelineListResponseTrigger.md) |  |  |
| **vcs** | [**PipelineListResponseVcs**](PipelineListResponseVcs.md) |  | [optional] |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::Pipeline.new(
  id: null,
  errors: null,
  project_slug: gh/CircleCI-Public/api-preview-docs,
  updated_at: null,
  number: null,
  state: null,
  created_at: null,
  trigger: null,
  vcs: null
)
```

