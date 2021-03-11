# CircleciOpenapi::InsightsApi

All URIs are relative to *https://circleci.com/api/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_project_job_runs**](InsightsApi.md#get_project_job_runs) | **GET** /insights/{project-slug}/workflows/{workflow-name}/jobs/{job-name} | Get recent runs of a workflow job |
| [**get_project_workflow_job_metrics**](InsightsApi.md#get_project_workflow_job_metrics) | **GET** /insights/{project-slug}/workflows/{workflow-name}/jobs | Get summary metrics for a project workflow&#39;s jobs. |
| [**get_project_workflow_metrics**](InsightsApi.md#get_project_workflow_metrics) | **GET** /insights/{project-slug}/workflows | Get summary metrics for a project&#39;s workflows |
| [**get_project_workflow_runs**](InsightsApi.md#get_project_workflow_runs) | **GET** /insights/{project-slug}/workflows/{workflow-name} | Get recent runs of a workflow |


## get_project_job_runs

> <InlineResponse2005> get_project_job_runs(project_slug, workflow_name, job_name, opts)

Get recent runs of a workflow job

Get recent runs of a job within a workflow. Runs going back at most 90 days are returned. Please note that Insights is not a real time financial reporting tool and should not be used for credit reporting. The most up to date credit information can be found in Plan Overview in the CircleCI UI.

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

api_instance = CircleciOpenapi::InsightsApi.new
project_slug = 'gh/CircleCI-Public/api-preview-docs' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
workflow_name = 'build-and-test' # String | The name of the workflow.
job_name = 'lint' # String | The name of the job.
opts = {
  branch: 'branch_example', # String | The name of a vcs branch. If not passed we will scope the API call to the default branch.
  page_token: 'page_token_example', # String | A token to retrieve the next page of results.
  start_date: Time.parse('2020-08-21T13:26:29Z'), # Time | Include only executions that started at or after this date. This must be specified if an end-date is provided.
  end_date: Time.parse('2020-09-04T13:26:29Z') # Time | Include only executions that started before this date. This date can be at most 90 days after the start-date.
}

begin
  # Get recent runs of a workflow job
  result = api_instance.get_project_job_runs(project_slug, workflow_name, job_name, opts)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling InsightsApi->get_project_job_runs: #{e}"
end
```

#### Using the get_project_job_runs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse2005>, Integer, Hash)> get_project_job_runs_with_http_info(project_slug, workflow_name, job_name, opts)

```ruby
begin
  # Get recent runs of a workflow job
  data, status_code, headers = api_instance.get_project_job_runs_with_http_info(project_slug, workflow_name, job_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse2005>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling InsightsApi->get_project_job_runs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_slug** | **String** | Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. |  |
| **workflow_name** | **String** | The name of the workflow. |  |
| **job_name** | **String** | The name of the job. |  |
| **branch** | **String** | The name of a vcs branch. If not passed we will scope the API call to the default branch. | [optional] |
| **page_token** | **String** | A token to retrieve the next page of results. | [optional] |
| **start_date** | **Time** | Include only executions that started at or after this date. This must be specified if an end-date is provided. | [optional] |
| **end_date** | **Time** | Include only executions that started before this date. This date can be at most 90 days after the start-date. | [optional] |

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_project_workflow_job_metrics

> <InlineResponse2004> get_project_workflow_job_metrics(project_slug, workflow_name, opts)

Get summary metrics for a project workflow's jobs.

Get summary metrics for a project workflow's jobs. Job runs going back at most 90 days are included in the aggregation window. Metrics are refreshed daily, and thus may not include executions from the last 24 hours. Please note that Insights is not a real time financial reporting tool and should not be used for credit reporting. The most up to date credit information can be found in Plan Overview in the CircleCI UI.

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

api_instance = CircleciOpenapi::InsightsApi.new
project_slug = 'gh/CircleCI-Public/api-preview-docs' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
workflow_name = 'build-and-test' # String | The name of the workflow.
opts = {
  page_token: 'page_token_example', # String | A token to retrieve the next page of results.
  branch: 'branch_example', # String | The name of a vcs branch. If not passed we will scope the API call to the default branch.
  reporting_window: 'last-7-days' # String | The time window used to calculate summary metrics.
}

begin
  # Get summary metrics for a project workflow's jobs.
  result = api_instance.get_project_workflow_job_metrics(project_slug, workflow_name, opts)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling InsightsApi->get_project_workflow_job_metrics: #{e}"
end
```

#### Using the get_project_workflow_job_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse2004>, Integer, Hash)> get_project_workflow_job_metrics_with_http_info(project_slug, workflow_name, opts)

```ruby
begin
  # Get summary metrics for a project workflow's jobs.
  data, status_code, headers = api_instance.get_project_workflow_job_metrics_with_http_info(project_slug, workflow_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse2004>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling InsightsApi->get_project_workflow_job_metrics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_slug** | **String** | Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. |  |
| **workflow_name** | **String** | The name of the workflow. |  |
| **page_token** | **String** | A token to retrieve the next page of results. | [optional] |
| **branch** | **String** | The name of a vcs branch. If not passed we will scope the API call to the default branch. | [optional] |
| **reporting_window** | **String** | The time window used to calculate summary metrics. | [optional] |

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_project_workflow_metrics

> <InlineResponse2002> get_project_workflow_metrics(project_slug, opts)

Get summary metrics for a project's workflows

Get summary metrics for a project's workflows. Workflow runs going back at most 90 days are included in the aggregation window. Metrics are refreshed daily, and thus may not include executions from the last 24 hours. Please note that Insights is not a real time financial reporting tool and should not be used for credit reporting. The most up to date credit information can be found in Plan Overview in the CircleCI UI.

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

api_instance = CircleciOpenapi::InsightsApi.new
project_slug = 'gh/CircleCI-Public/api-preview-docs' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
opts = {
  page_token: 'page_token_example', # String | A token to retrieve the next page of results.
  branch: 'branch_example', # String | The name of a vcs branch. If not passed we will scope the API call to the default branch.
  reporting_window: 'last-7-days' # String | The time window used to calculate summary metrics.
}

begin
  # Get summary metrics for a project's workflows
  result = api_instance.get_project_workflow_metrics(project_slug, opts)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling InsightsApi->get_project_workflow_metrics: #{e}"
end
```

#### Using the get_project_workflow_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse2002>, Integer, Hash)> get_project_workflow_metrics_with_http_info(project_slug, opts)

```ruby
begin
  # Get summary metrics for a project's workflows
  data, status_code, headers = api_instance.get_project_workflow_metrics_with_http_info(project_slug, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse2002>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling InsightsApi->get_project_workflow_metrics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_slug** | **String** | Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. |  |
| **page_token** | **String** | A token to retrieve the next page of results. | [optional] |
| **branch** | **String** | The name of a vcs branch. If not passed we will scope the API call to the default branch. | [optional] |
| **reporting_window** | **String** | The time window used to calculate summary metrics. | [optional] |

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_project_workflow_runs

> <InlineResponse2003> get_project_workflow_runs(project_slug, workflow_name, opts)

Get recent runs of a workflow

Get recent runs of a workflow. Runs going back at most 90 days are returned. Please note that Insights is not a real time financial reporting tool and should not be used for credit reporting. The most up to date credit information can be found in Plan Overview in the CircleCI UI.

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

api_instance = CircleciOpenapi::InsightsApi.new
project_slug = 'gh/CircleCI-Public/api-preview-docs' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
workflow_name = 'build-and-test' # String | The name of the workflow.
opts = {
  branch: 'branch_example', # String | The name of a vcs branch. If not passed we will scope the API call to the default branch.
  page_token: 'page_token_example', # String | A token to retrieve the next page of results.
  start_date: Time.parse('2020-08-21T13:26:29Z'), # Time | Include only executions that started at or after this date. This must be specified if an end-date is provided.
  end_date: Time.parse('2020-09-04T13:26:29Z') # Time | Include only executions that started before this date. This date can be at most 90 days after the start-date.
}

begin
  # Get recent runs of a workflow
  result = api_instance.get_project_workflow_runs(project_slug, workflow_name, opts)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling InsightsApi->get_project_workflow_runs: #{e}"
end
```

#### Using the get_project_workflow_runs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse2003>, Integer, Hash)> get_project_workflow_runs_with_http_info(project_slug, workflow_name, opts)

```ruby
begin
  # Get recent runs of a workflow
  data, status_code, headers = api_instance.get_project_workflow_runs_with_http_info(project_slug, workflow_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse2003>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling InsightsApi->get_project_workflow_runs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_slug** | **String** | Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. |  |
| **workflow_name** | **String** | The name of the workflow. |  |
| **branch** | **String** | The name of a vcs branch. If not passed we will scope the API call to the default branch. | [optional] |
| **page_token** | **String** | A token to retrieve the next page of results. | [optional] |
| **start_date** | **Time** | Include only executions that started at or after this date. This must be specified if an end-date is provided. | [optional] |
| **end_date** | **Time** | Include only executions that started before this date. This date can be at most 90 days after the start-date. | [optional] |

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

