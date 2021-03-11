# CircleciOpenapi::PipelineListResponseVcs

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_name** | **String** | Name of the VCS provider (e.g. GitHub, Bitbucket). |  |
| **target_repository_url** | **String** | URL for the repository the trigger targets (i.e. the repository where the PR will be merged). For fork-PR pipelines, this is the URL to the parent repo. For other pipelines, the &#x60;origin_&#x60; and &#x60;target_repository_url&#x60;s will be the same. |  |
| **branch** | **String** | The branch where the pipeline ran. The HEAD commit on this branch was used for the pipeline. Note that &#x60;branch&#x60; and &#x60;tag&#x60; are mutually exclusive. To trigger a pipeline for a PR by number use &#x60;pull/&lt;number&gt;/head&#x60; for the PR ref or &#x60;pull/&lt;number&gt;/merge&#x60; for the merge ref (GitHub only). | [optional] |
| **review_id** | **String** | The code review id. | [optional] |
| **review_url** | **String** | The code review URL. | [optional] |
| **revision** | **String** | The code revision the pipeline ran. |  |
| **tag** | **String** | The tag used by the pipeline. The commit that this tag points to was used for the pipeline. Note that &#x60;branch&#x60; and &#x60;tag&#x60; are mutually exclusive. | [optional] |
| **commit** | [**PipelineListResponseVcsCommit**](PipelineListResponseVcsCommit.md) |  | [optional] |
| **origin_repository_url** | **String** | URL for the repository where the trigger originated. For fork-PR pipelines, this is the URL to the fork. For other pipelines the &#x60;origin_&#x60; and &#x60;target_repository_url&#x60;s will be the same. |  |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::PipelineListResponseVcs.new(
  provider_name: GitHub,
  target_repository_url: https://github.com/CircleCI-Public/api-preview-docs,
  branch: feature/design-new-api,
  review_id: 123,
  review_url: https://github.com/CircleCI-Public/api-preview-docs/pull/123,
  revision: f454a02b5d10fcccfd7d9dd7608a76d6493a98b4,
  tag: v3.1.4159,
  commit: null,
  origin_repository_url: https://github.com/CircleCI-Public/api-preview-docs
)
```

