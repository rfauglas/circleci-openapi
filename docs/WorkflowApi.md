# CircleciOpenapi::WorkflowApi

All URIs are relative to *https://circleci.com/api/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**approve_pending_approval_job_by_id**](WorkflowApi.md#approve_pending_approval_job_by_id) | **POST** /workflow/{id}/approve/{approval_request_id} | Approve a job |
| [**cancel_workflow**](WorkflowApi.md#cancel_workflow) | **POST** /workflow/{id}/cancel | Cancel a workflow |
| [**get_workflow_by_id**](WorkflowApi.md#get_workflow_by_id) | **GET** /workflow/{id} | Get a workflow |
| [**list_workflow_jobs**](WorkflowApi.md#list_workflow_jobs) | **GET** /workflow/{id}/job | Get a workflow&#39;s jobs |
| [**rerun_workflow**](WorkflowApi.md#rerun_workflow) | **POST** /workflow/{id}/rerun | Rerun a workflow |


## approve_pending_approval_job_by_id

> <MessageResponse> approve_pending_approval_job_by_id(approval_request_id, id)

Approve a job

Approves a pending approval job in a workflow.

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

api_instance = CircleciOpenapi::WorkflowApi.new
approval_request_id = TODO # String | The ID of the job being approved.
id = TODO # String | The unique ID of the workflow.

begin
  # Approve a job
  result = api_instance.approve_pending_approval_job_by_id(approval_request_id, id)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling WorkflowApi->approve_pending_approval_job_by_id: #{e}"
end
```

#### Using the approve_pending_approval_job_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> approve_pending_approval_job_by_id_with_http_info(approval_request_id, id)

```ruby
begin
  # Approve a job
  data, status_code, headers = api_instance.approve_pending_approval_job_by_id_with_http_info(approval_request_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling WorkflowApi->approve_pending_approval_job_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **approval_request_id** | [**String**](.md) | The ID of the job being approved. |  |
| **id** | [**String**](.md) | The unique ID of the workflow. |  |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## cancel_workflow

> <MessageResponse> cancel_workflow(id)

Cancel a workflow

Cancels a running workflow.

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

api_instance = CircleciOpenapi::WorkflowApi.new
id = TODO # String | The unique ID of the workflow.

begin
  # Cancel a workflow
  result = api_instance.cancel_workflow(id)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling WorkflowApi->cancel_workflow: #{e}"
end
```

#### Using the cancel_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> cancel_workflow_with_http_info(id)

```ruby
begin
  # Cancel a workflow
  data, status_code, headers = api_instance.cancel_workflow_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling WorkflowApi->cancel_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | The unique ID of the workflow. |  |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_workflow_by_id

> <Workflow> get_workflow_by_id(id)

Get a workflow

Returns summary fields of a workflow by ID.

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

api_instance = CircleciOpenapi::WorkflowApi.new
id = TODO # String | The unique ID of the workflow.

begin
  # Get a workflow
  result = api_instance.get_workflow_by_id(id)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling WorkflowApi->get_workflow_by_id: #{e}"
end
```

#### Using the get_workflow_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Workflow>, Integer, Hash)> get_workflow_by_id_with_http_info(id)

```ruby
begin
  # Get a workflow
  data, status_code, headers = api_instance.get_workflow_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Workflow>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling WorkflowApi->get_workflow_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | The unique ID of the workflow. |  |

### Return type

[**Workflow**](Workflow.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_workflow_jobs

> <WorkflowJobListResponse> list_workflow_jobs(id)

Get a workflow's jobs

Returns a sequence of jobs for a workflow.

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

api_instance = CircleciOpenapi::WorkflowApi.new
id = TODO # String | The unique ID of the workflow.

begin
  # Get a workflow's jobs
  result = api_instance.list_workflow_jobs(id)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling WorkflowApi->list_workflow_jobs: #{e}"
end
```

#### Using the list_workflow_jobs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowJobListResponse>, Integer, Hash)> list_workflow_jobs_with_http_info(id)

```ruby
begin
  # Get a workflow's jobs
  data, status_code, headers = api_instance.list_workflow_jobs_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowJobListResponse>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling WorkflowApi->list_workflow_jobs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | The unique ID of the workflow. |  |

### Return type

[**WorkflowJobListResponse**](WorkflowJobListResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## rerun_workflow

> <MessageResponse> rerun_workflow(id, opts)

Rerun a workflow

Reruns a workflow.

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

api_instance = CircleciOpenapi::WorkflowApi.new
id = TODO # String | The unique ID of the workflow.
opts = {
  rerun_workflow_parameters: CircleciOpenapi::RerunWorkflowParameters.new # RerunWorkflowParameters | 
}

begin
  # Rerun a workflow
  result = api_instance.rerun_workflow(id, opts)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling WorkflowApi->rerun_workflow: #{e}"
end
```

#### Using the rerun_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> rerun_workflow_with_http_info(id, opts)

```ruby
begin
  # Rerun a workflow
  data, status_code, headers = api_instance.rerun_workflow_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling WorkflowApi->rerun_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | The unique ID of the workflow. |  |
| **rerun_workflow_parameters** | [**RerunWorkflowParameters**](RerunWorkflowParameters.md) |  | [optional] |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

