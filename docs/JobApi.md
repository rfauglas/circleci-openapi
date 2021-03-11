# CircleciOpenapi::JobApi

All URIs are relative to *https://circleci.com/api/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_job**](JobApi.md#cancel_job) | **POST** /project/{project-slug}/job/{job-number}/cancel | Cancel job |
| [**get_job_artifacts**](JobApi.md#get_job_artifacts) | **GET** /project/{project-slug}/{job-number}/artifacts | Get a job&#39;s artifacts |
| [**get_job_details**](JobApi.md#get_job_details) | **GET** /project/{project-slug}/job/{job-number} | Get job details |
| [**get_tests**](JobApi.md#get_tests) | **GET** /project/{project-slug}/{job-number}/tests | Get test metadata |


## cancel_job

> <MessageResponse> cancel_job(job_number, project_slug)

Cancel job

Cancel job with a given job number.

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

api_instance = CircleciOpenapi::JobApi.new
job_number = TODO # AnyType | The number of the job.
project_slug = 'gh/CircleCI-Public/api-preview-docs' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.

begin
  # Cancel job
  result = api_instance.cancel_job(job_number, project_slug)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling JobApi->cancel_job: #{e}"
end
```

#### Using the cancel_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> cancel_job_with_http_info(job_number, project_slug)

```ruby
begin
  # Cancel job
  data, status_code, headers = api_instance.cancel_job_with_http_info(job_number, project_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling JobApi->cancel_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_number** | [**AnyType**](.md) | The number of the job. |  |
| **project_slug** | **String** | Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. |  |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_job_artifacts

> <ArtifactListResponse> get_job_artifacts(job_number, project_slug)

Get a job's artifacts

Returns a job's artifacts.

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

api_instance = CircleciOpenapi::JobApi.new
job_number = TODO # AnyType | The number of the job.
project_slug = 'gh/CircleCI-Public/api-preview-docs' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.

begin
  # Get a job's artifacts
  result = api_instance.get_job_artifacts(job_number, project_slug)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling JobApi->get_job_artifacts: #{e}"
end
```

#### Using the get_job_artifacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ArtifactListResponse>, Integer, Hash)> get_job_artifacts_with_http_info(job_number, project_slug)

```ruby
begin
  # Get a job's artifacts
  data, status_code, headers = api_instance.get_job_artifacts_with_http_info(job_number, project_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ArtifactListResponse>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling JobApi->get_job_artifacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_number** | [**AnyType**](.md) | The number of the job. |  |
| **project_slug** | **String** | Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. |  |

### Return type

[**ArtifactListResponse**](ArtifactListResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_job_details

> <JobDetails> get_job_details(job_number, project_slug)

Get job details

Returns job details.

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

api_instance = CircleciOpenapi::JobApi.new
job_number = TODO # AnyType | The number of the job.
project_slug = 'gh/CircleCI-Public/api-preview-docs' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.

begin
  # Get job details
  result = api_instance.get_job_details(job_number, project_slug)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling JobApi->get_job_details: #{e}"
end
```

#### Using the get_job_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobDetails>, Integer, Hash)> get_job_details_with_http_info(job_number, project_slug)

```ruby
begin
  # Get job details
  data, status_code, headers = api_instance.get_job_details_with_http_info(job_number, project_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobDetails>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling JobApi->get_job_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_number** | [**AnyType**](.md) | The number of the job. |  |
| **project_slug** | **String** | Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. |  |

### Return type

[**JobDetails**](JobDetails.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tests

> <TestsResponse> get_tests(job_number, project_slug)

Get test metadata

Get test metadata for a build.

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

api_instance = CircleciOpenapi::JobApi.new
job_number = TODO # AnyType | The number of the job.
project_slug = 'gh/CircleCI-Public/api-preview-docs' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.

begin
  # Get test metadata
  result = api_instance.get_tests(job_number, project_slug)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling JobApi->get_tests: #{e}"
end
```

#### Using the get_tests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TestsResponse>, Integer, Hash)> get_tests_with_http_info(job_number, project_slug)

```ruby
begin
  # Get test metadata
  data, status_code, headers = api_instance.get_tests_with_http_info(job_number, project_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TestsResponse>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling JobApi->get_tests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_number** | [**AnyType**](.md) | The number of the job. |  |
| **project_slug** | **String** | Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. |  |

### Return type

[**TestsResponse**](TestsResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

