# CircleciOpenapi::ProjectApi

All URIs are relative to *https://circleci.com/api/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_checkout_key**](ProjectApi.md#create_checkout_key) | **POST** /project/{project-slug}/checkout-key | Create a new checkout key |
| [**create_env_var**](ProjectApi.md#create_env_var) | **POST** /project/{project-slug}/envvar | Create an environment variable |
| [**delete_checkout_key**](ProjectApi.md#delete_checkout_key) | **DELETE** /project/{project-slug}/checkout-key/{fingerprint} | Delete a checkout key |
| [**delete_env_var**](ProjectApi.md#delete_env_var) | **DELETE** /project/{project-slug}/envvar/{name} | Delete an environment variable |
| [**get_checkout_key**](ProjectApi.md#get_checkout_key) | **GET** /project/{project-slug}/checkout-key/{fingerprint} | Get a checkout key |
| [**get_env_var**](ProjectApi.md#get_env_var) | **GET** /project/{project-slug}/envvar/{name} | Get a masked environment variable |
| [**get_project_by_slug**](ProjectApi.md#get_project_by_slug) | **GET** /project/{project-slug} | Get a project |
| [**list_checkout_keys**](ProjectApi.md#list_checkout_keys) | **GET** /project/{project-slug}/checkout-key | Get all checkout keys |
| [**list_env_vars**](ProjectApi.md#list_env_vars) | **GET** /project/{project-slug}/envvar | List all environment variables |


## create_checkout_key

> <CheckoutKey> create_checkout_key(project_slug, opts)

Create a new checkout key

Creates a new checkout key. This API request is only usable with a user API token.

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

api_instance = CircleciOpenapi::ProjectApi.new
project_slug = 'gh/CircleCI-Public/api-preview-docs' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
opts = {
  checkout_key_input: CircleciOpenapi::CheckoutKeyInput.new({type: 'user-key'}) # CheckoutKeyInput | 
}

begin
  # Create a new checkout key
  result = api_instance.create_checkout_key(project_slug, opts)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ProjectApi->create_checkout_key: #{e}"
end
```

#### Using the create_checkout_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckoutKey>, Integer, Hash)> create_checkout_key_with_http_info(project_slug, opts)

```ruby
begin
  # Create a new checkout key
  data, status_code, headers = api_instance.create_checkout_key_with_http_info(project_slug, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckoutKey>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ProjectApi->create_checkout_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_slug** | **String** | Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. |  |
| **checkout_key_input** | [**CheckoutKeyInput**](CheckoutKeyInput.md) |  | [optional] |

### Return type

[**CheckoutKey**](CheckoutKey.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_env_var

> <EnvironmentVariablePair1> create_env_var(project_slug, opts)

Create an environment variable

Creates a new environment variable.

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

api_instance = CircleciOpenapi::ProjectApi.new
project_slug = 'gh/CircleCI-Public/api-preview-docs' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
opts = {
  environment_variable_pair1: CircleciOpenapi::EnvironmentVariablePair1.new({name: 'foo', value: 'xxxx1234'}) # EnvironmentVariablePair1 | 
}

begin
  # Create an environment variable
  result = api_instance.create_env_var(project_slug, opts)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ProjectApi->create_env_var: #{e}"
end
```

#### Using the create_env_var_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnvironmentVariablePair1>, Integer, Hash)> create_env_var_with_http_info(project_slug, opts)

```ruby
begin
  # Create an environment variable
  data, status_code, headers = api_instance.create_env_var_with_http_info(project_slug, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnvironmentVariablePair1>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ProjectApi->create_env_var_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_slug** | **String** | Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. |  |
| **environment_variable_pair1** | [**EnvironmentVariablePair1**](EnvironmentVariablePair1.md) |  | [optional] |

### Return type

[**EnvironmentVariablePair1**](EnvironmentVariablePair1.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_checkout_key

> <MessageResponse> delete_checkout_key(project_slug, fingerprint)

Delete a checkout key

Deletes the checkout key.

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

api_instance = CircleciOpenapi::ProjectApi.new
project_slug = 'gh/CircleCI-Public/api-preview-docs' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
fingerprint = 'c9:0b:1c:4f:d5:65:56:b9:ad:88:f9:81:2b:37:74:2f' # String | An SSH key fingerprint.

begin
  # Delete a checkout key
  result = api_instance.delete_checkout_key(project_slug, fingerprint)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ProjectApi->delete_checkout_key: #{e}"
end
```

#### Using the delete_checkout_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> delete_checkout_key_with_http_info(project_slug, fingerprint)

```ruby
begin
  # Delete a checkout key
  data, status_code, headers = api_instance.delete_checkout_key_with_http_info(project_slug, fingerprint)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ProjectApi->delete_checkout_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_slug** | **String** | Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. |  |
| **fingerprint** | **String** | An SSH key fingerprint. |  |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_env_var

> <MessageResponse> delete_env_var(project_slug, name)

Delete an environment variable

Deletes the environment variable named :name.

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

api_instance = CircleciOpenapi::ProjectApi.new
project_slug = 'gh/CircleCI-Public/api-preview-docs' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
name = 'foo' # String | The name of the environment variable.

begin
  # Delete an environment variable
  result = api_instance.delete_env_var(project_slug, name)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ProjectApi->delete_env_var: #{e}"
end
```

#### Using the delete_env_var_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> delete_env_var_with_http_info(project_slug, name)

```ruby
begin
  # Delete an environment variable
  data, status_code, headers = api_instance.delete_env_var_with_http_info(project_slug, name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ProjectApi->delete_env_var_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_slug** | **String** | Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. |  |
| **name** | **String** | The name of the environment variable. |  |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_checkout_key

> <CheckoutKey> get_checkout_key(project_slug, fingerprint)

Get a checkout key

Returns an individual checkout key.

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

api_instance = CircleciOpenapi::ProjectApi.new
project_slug = 'gh/CircleCI-Public/api-preview-docs' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
fingerprint = 'c9:0b:1c:4f:d5:65:56:b9:ad:88:f9:81:2b:37:74:2f' # String | An SSH key fingerprint.

begin
  # Get a checkout key
  result = api_instance.get_checkout_key(project_slug, fingerprint)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ProjectApi->get_checkout_key: #{e}"
end
```

#### Using the get_checkout_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckoutKey>, Integer, Hash)> get_checkout_key_with_http_info(project_slug, fingerprint)

```ruby
begin
  # Get a checkout key
  data, status_code, headers = api_instance.get_checkout_key_with_http_info(project_slug, fingerprint)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckoutKey>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ProjectApi->get_checkout_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_slug** | **String** | Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. |  |
| **fingerprint** | **String** | An SSH key fingerprint. |  |

### Return type

[**CheckoutKey**](CheckoutKey.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_env_var

> <EnvironmentVariablePair1> get_env_var(project_slug, name)

Get a masked environment variable

Returns the masked value of environment variable :name.

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

api_instance = CircleciOpenapi::ProjectApi.new
project_slug = 'gh/CircleCI-Public/api-preview-docs' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.
name = 'foo' # String | The name of the environment variable.

begin
  # Get a masked environment variable
  result = api_instance.get_env_var(project_slug, name)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ProjectApi->get_env_var: #{e}"
end
```

#### Using the get_env_var_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnvironmentVariablePair1>, Integer, Hash)> get_env_var_with_http_info(project_slug, name)

```ruby
begin
  # Get a masked environment variable
  data, status_code, headers = api_instance.get_env_var_with_http_info(project_slug, name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnvironmentVariablePair1>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ProjectApi->get_env_var_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_slug** | **String** | Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. |  |
| **name** | **String** | The name of the environment variable. |  |

### Return type

[**EnvironmentVariablePair1**](EnvironmentVariablePair1.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_project_by_slug

> <Project> get_project_by_slug(project_slug)

Get a project

Retrieves a project by project slug.

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

api_instance = CircleciOpenapi::ProjectApi.new
project_slug = 'gh/CircleCI-Public/api-preview-docs' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.

begin
  # Get a project
  result = api_instance.get_project_by_slug(project_slug)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ProjectApi->get_project_by_slug: #{e}"
end
```

#### Using the get_project_by_slug_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Project>, Integer, Hash)> get_project_by_slug_with_http_info(project_slug)

```ruby
begin
  # Get a project
  data, status_code, headers = api_instance.get_project_by_slug_with_http_info(project_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Project>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ProjectApi->get_project_by_slug_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_slug** | **String** | Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. |  |

### Return type

[**Project**](Project.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_checkout_keys

> <CheckoutKeyListResponse> list_checkout_keys(project_slug)

Get all checkout keys

Returns a sequence of checkout keys for `:project`.

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

api_instance = CircleciOpenapi::ProjectApi.new
project_slug = 'gh/CircleCI-Public/api-preview-docs' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.

begin
  # Get all checkout keys
  result = api_instance.list_checkout_keys(project_slug)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ProjectApi->list_checkout_keys: #{e}"
end
```

#### Using the list_checkout_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckoutKeyListResponse>, Integer, Hash)> list_checkout_keys_with_http_info(project_slug)

```ruby
begin
  # Get all checkout keys
  data, status_code, headers = api_instance.list_checkout_keys_with_http_info(project_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckoutKeyListResponse>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ProjectApi->list_checkout_keys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_slug** | **String** | Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. |  |

### Return type

[**CheckoutKeyListResponse**](CheckoutKeyListResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_env_vars

> <EnvironmentVariableListResponse> list_env_vars(project_slug)

List all environment variables

Returns four 'x' characters, in addition to the last four ASCII characters of the value, consistent with the display of environment variable values on the CircleCI website.

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

api_instance = CircleciOpenapi::ProjectApi.new
project_slug = 'gh/CircleCI-Public/api-preview-docs' # String | Project slug in the form `vcs-slug/org-name/repo-name`. The `/` characters may be URL-escaped.

begin
  # List all environment variables
  result = api_instance.list_env_vars(project_slug)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ProjectApi->list_env_vars: #{e}"
end
```

#### Using the list_env_vars_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnvironmentVariableListResponse>, Integer, Hash)> list_env_vars_with_http_info(project_slug)

```ruby
begin
  # List all environment variables
  data, status_code, headers = api_instance.list_env_vars_with_http_info(project_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnvironmentVariableListResponse>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ProjectApi->list_env_vars_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_slug** | **String** | Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped. |  |

### Return type

[**EnvironmentVariableListResponse**](EnvironmentVariableListResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

