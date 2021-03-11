# CircleciOpenapi::PipelineApi

All URIs are relative to *https://circleci.com/api/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**continue_pipeline**](PipelineApi.md#continue_pipeline) | **POST** /pipeline/continue | Continue a pipeline (Preview) |
| [**get_pipeline_by_id**](PipelineApi.md#get_pipeline_by_id) | **GET** /pipeline/{pipeline-id} | Get a pipeline |
| [**get_pipeline_by_number**](PipelineApi.md#get_pipeline_by_number) | **GET** /project/{project-slug}/pipeline/{pipeline-number} | Get a pipeline |
| [**get_pipeline_config_by_id**](PipelineApi.md#get_pipeline_config_by_id) | **GET** /pipeline/{pipeline-id}/config | Get a pipeline&#39;s configuration |
| [**list_my_pipelines**](PipelineApi.md#list_my_pipelines) | **GET** /project/{project-slug}/pipeline/mine | Get your pipelines |
| [**list_pipelines**](PipelineApi.md#list_pipelines) | **GET** /pipeline | Get a list of pipelines |
| [**list_pipelines_for_project**](PipelineApi.md#list_pipelines_for_project) | **GET** /project/{project-slug}/pipeline | Get all pipelines |
| [**list_workflows_by_pipeline_id**](PipelineApi.md#list_workflows_by_pipeline_id) | **GET** /pipeline/{pipeline-id}/workflow | Get a pipeline&#39;s workflows |
| [**trigger_pipeline**](PipelineApi.md#trigger_pipeline) | **POST** /project/{project-slug}/pipeline | Trigger a new pipeline |


## continue_pipeline

> <MessageResponse> continue_pipeline(opts)

Continue a pipeline (Preview)

Continue a pipeline from the setup phase.

### Examples

```ruby
require 'time'
require 'circleci_openapi'
# setup authorization
CircleciOpenapi.configure do |config|
  # Configure API key authorization: api_key_header
  config.api_key['api_key_header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_header'] = 'Bearer'

  # Configure API key authorization: api_key_query
  config.api_key['api_key_query'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_query'] = 'Bearer'

  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CircleciOpenapi::PipelineApi.new
opts = {
  inline_object2: CircleciOpenapi::InlineObject2.new({continuation_key: 'continuation_key_example', configuration: 'configuration_example'}) # InlineObject2 | 
}

begin
  # Continue a pipeline (Preview)
  result = api_instance.continue_pipeline(opts)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling PipelineApi->continue_pipeline: #{e}"
end
```

#### Using the continue_pipeline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> continue_pipeline_with_http_info(opts)

```ruby
begin
  # Continue a pipeline (Preview)
  data, status_code, headers = api_instance.continue_pipeline_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling PipelineApi->continue_pipeline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inline_object2** | [**InlineObject2**](InlineObject2.md) |  | [optional] |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_pipeline_by_id

> <Pipeline> get_pipeline_by_id(pipeline_id)

Get a pipeline

Returns a pipeline by ID.

### Examples

```ruby
require 'time'
require 'circleci_openapi'
# setup authorization
CircleciOpenapi.configure do |config|
  # Configure API key authorization: api_key_header
  config.api_key['api_key_header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_header'] = 'Bearer'

  # Configure API key authorization: api_key_query
  config.api_key['api_key_query'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_query'] = 'Bearer'

  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CircleciOpenapi::PipelineApi.new
pipeline_id = TODO # String | The unique ID of the pipeline.

begin
  # Get a pipeline
  result = api_instance.get_pipeline_by_id(pipeline_id)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling PipelineApi->get_pipeline_by_id: #{e}"
end
```

#### Using the get_pipeline_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Pipeline>, Integer, Hash)> get_pipeline_by_id_with_http_info(pipeline_id)

```ruby
begin
  # Get a pipeline
  data, status_code, headers = api_instance.get_pipeline_by_id_with_http_info(pipeline_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Pipeline>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling PipelineApi->get_pipeline_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pipeline_id** | [**String**](.md) | The unique ID of the pipeline. |  |

### Return type

[**Pipeline**](Pipeline.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_by_number

> <Pipeline> get_pipeline_by_number(project_slug, pipeline_number)

Get a pipeline

Returns a pipeline by number.

### Examples

```ruby
require 'time'
require 'circleci_openapi'
# setup authorization
CircleciOpenapi.configure do |config|
  # Configure API key authorization: api_key_header
  config.api_key['api_key_header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_header'] = 'Bearer'

  # Configure API key authorization: api_key_query
  config.api_key['api_key_query'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_query'] = 'Bearer'

  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CircleciOpenapi::PipelineApi.new
project_slug = 'gh/CircleCI-Public/api-preview-docs' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
pipeline_number = TODO # AnyType | The number of the pipeline.

begin
  # Get a pipeline
  result = api_instance.get_pipeline_by_number(project_slug, pipeline_number)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling PipelineApi->get_pipeline_by_number: #{e}"
end
```

#### Using the get_pipeline_by_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Pipeline>, Integer, Hash)> get_pipeline_by_number_with_http_info(project_slug, pipeline_number)

```ruby
begin
  # Get a pipeline
  data, status_code, headers = api_instance.get_pipeline_by_number_with_http_info(project_slug, pipeline_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Pipeline>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling PipelineApi->get_pipeline_by_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_slug** | **String** | Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. |  |
| **pipeline_number** | [**AnyType**](.md) | The number of the pipeline. |  |

### Return type

[**Pipeline**](Pipeline.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_config_by_id

> <PipelineConfig> get_pipeline_config_by_id(pipeline_id)

Get a pipeline's configuration

Returns a pipeline's configuration by ID.

### Examples

```ruby
require 'time'
require 'circleci_openapi'
# setup authorization
CircleciOpenapi.configure do |config|
  # Configure API key authorization: api_key_header
  config.api_key['api_key_header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_header'] = 'Bearer'

  # Configure API key authorization: api_key_query
  config.api_key['api_key_query'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_query'] = 'Bearer'

  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CircleciOpenapi::PipelineApi.new
pipeline_id = TODO # String | The unique ID of the pipeline.

begin
  # Get a pipeline's configuration
  result = api_instance.get_pipeline_config_by_id(pipeline_id)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling PipelineApi->get_pipeline_config_by_id: #{e}"
end
```

#### Using the get_pipeline_config_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineConfig>, Integer, Hash)> get_pipeline_config_by_id_with_http_info(pipeline_id)

```ruby
begin
  # Get a pipeline's configuration
  data, status_code, headers = api_instance.get_pipeline_config_by_id_with_http_info(pipeline_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineConfig>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling PipelineApi->get_pipeline_config_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pipeline_id** | [**String**](.md) | The unique ID of the pipeline. |  |

### Return type

[**PipelineConfig**](PipelineConfig.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_my_pipelines

> <PipelineListResponse> list_my_pipelines(project_slug, opts)

Get your pipelines

Returns a sequence of all pipelines for this project triggered by the user.

### Examples

```ruby
require 'time'
require 'circleci_openapi'
# setup authorization
CircleciOpenapi.configure do |config|
  # Configure API key authorization: api_key_header
  config.api_key['api_key_header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_header'] = 'Bearer'

  # Configure API key authorization: api_key_query
  config.api_key['api_key_query'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_query'] = 'Bearer'

  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CircleciOpenapi::PipelineApi.new
project_slug = 'gh/CircleCI-Public/api-preview-docs' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
opts = {
  page_token: 'page_token_example' # String | A token to retrieve the next page of results.
}

begin
  # Get your pipelines
  result = api_instance.list_my_pipelines(project_slug, opts)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling PipelineApi->list_my_pipelines: #{e}"
end
```

#### Using the list_my_pipelines_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineListResponse>, Integer, Hash)> list_my_pipelines_with_http_info(project_slug, opts)

```ruby
begin
  # Get your pipelines
  data, status_code, headers = api_instance.list_my_pipelines_with_http_info(project_slug, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineListResponse>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling PipelineApi->list_my_pipelines_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_slug** | **String** | Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. |  |
| **page_token** | **String** | A token to retrieve the next page of results. | [optional] |

### Return type

[**PipelineListResponse**](PipelineListResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_pipelines

> <PipelineListResponse> list_pipelines(opts)

Get a list of pipelines

Returns all pipelines for the most recently built projects (max 250) you follow in an organization.

### Examples

```ruby
require 'time'
require 'circleci_openapi'
# setup authorization
CircleciOpenapi.configure do |config|
  # Configure API key authorization: api_key_header
  config.api_key['api_key_header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_header'] = 'Bearer'

  # Configure API key authorization: api_key_query
  config.api_key['api_key_query'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_query'] = 'Bearer'

  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CircleciOpenapi::PipelineApi.new
opts = {
  org_slug: 'gh/CircleCI-Public', # String | Org slug in the form `vcs-slug/org-name`
  page_token: 'page_token_example', # String | A token to retrieve the next page of results.
  mine: true # Boolean | Only include entries created by your user.
}

begin
  # Get a list of pipelines
  result = api_instance.list_pipelines(opts)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling PipelineApi->list_pipelines: #{e}"
end
```

#### Using the list_pipelines_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineListResponse>, Integer, Hash)> list_pipelines_with_http_info(opts)

```ruby
begin
  # Get a list of pipelines
  data, status_code, headers = api_instance.list_pipelines_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineListResponse>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling PipelineApi->list_pipelines_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_slug** | **String** | Org slug in the form &#x60;vcs-slug/org-name&#x60; | [optional] |
| **page_token** | **String** | A token to retrieve the next page of results. | [optional] |
| **mine** | **Boolean** | Only include entries created by your user. | [optional] |

### Return type

[**PipelineListResponse**](PipelineListResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_pipelines_for_project

> <PipelineListResponse> list_pipelines_for_project(project_slug, opts)

Get all pipelines

Returns all pipelines for this project.

### Examples

```ruby
require 'time'
require 'circleci_openapi'
# setup authorization
CircleciOpenapi.configure do |config|
  # Configure API key authorization: api_key_header
  config.api_key['api_key_header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_header'] = 'Bearer'

  # Configure API key authorization: api_key_query
  config.api_key['api_key_query'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_query'] = 'Bearer'

  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CircleciOpenapi::PipelineApi.new
project_slug = 'gh/CircleCI-Public/api-preview-docs' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
opts = {
  branch: 'branch_example', # String | The name of a vcs branch.
  page_token: 'page_token_example' # String | A token to retrieve the next page of results.
}

begin
  # Get all pipelines
  result = api_instance.list_pipelines_for_project(project_slug, opts)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling PipelineApi->list_pipelines_for_project: #{e}"
end
```

#### Using the list_pipelines_for_project_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineListResponse>, Integer, Hash)> list_pipelines_for_project_with_http_info(project_slug, opts)

```ruby
begin
  # Get all pipelines
  data, status_code, headers = api_instance.list_pipelines_for_project_with_http_info(project_slug, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineListResponse>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling PipelineApi->list_pipelines_for_project_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_slug** | **String** | Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. |  |
| **branch** | **String** | The name of a vcs branch. | [optional] |
| **page_token** | **String** | A token to retrieve the next page of results. | [optional] |

### Return type

[**PipelineListResponse**](PipelineListResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_workflows_by_pipeline_id

> <WorkflowListResponse> list_workflows_by_pipeline_id(pipeline_id, opts)

Get a pipeline's workflows

Returns a paginated list of workflows by pipeline ID.

### Examples

```ruby
require 'time'
require 'circleci_openapi'
# setup authorization
CircleciOpenapi.configure do |config|
  # Configure API key authorization: api_key_header
  config.api_key['api_key_header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_header'] = 'Bearer'

  # Configure API key authorization: api_key_query
  config.api_key['api_key_query'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_query'] = 'Bearer'

  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CircleciOpenapi::PipelineApi.new
pipeline_id = TODO # String | The unique ID of the pipeline.
opts = {
  page_token: 'page_token_example' # String | A token to retrieve the next page of results.
}

begin
  # Get a pipeline's workflows
  result = api_instance.list_workflows_by_pipeline_id(pipeline_id, opts)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling PipelineApi->list_workflows_by_pipeline_id: #{e}"
end
```

#### Using the list_workflows_by_pipeline_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowListResponse>, Integer, Hash)> list_workflows_by_pipeline_id_with_http_info(pipeline_id, opts)

```ruby
begin
  # Get a pipeline's workflows
  data, status_code, headers = api_instance.list_workflows_by_pipeline_id_with_http_info(pipeline_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowListResponse>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling PipelineApi->list_workflows_by_pipeline_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pipeline_id** | [**String**](.md) | The unique ID of the pipeline. |  |
| **page_token** | **String** | A token to retrieve the next page of results. | [optional] |

### Return type

[**WorkflowListResponse**](WorkflowListResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## trigger_pipeline

> <PipelineCreation> trigger_pipeline(project_slug, opts)

Trigger a new pipeline

Triggers a new pipeline on the project.

### Examples

```ruby
require 'time'
require 'circleci_openapi'
# setup authorization
CircleciOpenapi.configure do |config|
  # Configure API key authorization: api_key_header
  config.api_key['api_key_header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_header'] = 'Bearer'

  # Configure API key authorization: api_key_query
  config.api_key['api_key_query'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_query'] = 'Bearer'

  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CircleciOpenapi::PipelineApi.new
project_slug = 'gh/CircleCI-Public/api-preview-docs' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
opts = {
  x_attribution_login: 'x_attribution_login_example', # String | The login or user-readable identifier for the pipeline's triggerer. Internal use only.
  x_attribution_actor_id: 'x_attribution_actor_id_example', # String | The id the integration uses to identify the pipeline's triggerer. Internal use only.
  trigger_pipeline_parameters: CircleciOpenapi::TriggerPipelineParameters.new # TriggerPipelineParameters | 
}

begin
  # Trigger a new pipeline
  result = api_instance.trigger_pipeline(project_slug, opts)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling PipelineApi->trigger_pipeline: #{e}"
end
```

#### Using the trigger_pipeline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineCreation>, Integer, Hash)> trigger_pipeline_with_http_info(project_slug, opts)

```ruby
begin
  # Trigger a new pipeline
  data, status_code, headers = api_instance.trigger_pipeline_with_http_info(project_slug, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineCreation>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling PipelineApi->trigger_pipeline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_slug** | **String** | Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. |  |
| **x_attribution_login** | **String** | The login or user-readable identifier for the pipeline&#39;s triggerer. Internal use only. | [optional] |
| **x_attribution_actor_id** | **String** | The id the integration uses to identify the pipeline&#39;s triggerer. Internal use only. | [optional] |
| **trigger_pipeline_parameters** | [**TriggerPipelineParameters**](TriggerPipelineParameters.md) |  | [optional] |

### Return type

[**PipelineCreation**](PipelineCreation.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

