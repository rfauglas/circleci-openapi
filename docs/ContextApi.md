# CircleciOpenapi::ContextApi

All URIs are relative to *https://circleci.com/api/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_environment_variable_to_context**](ContextApi.md#add_environment_variable_to_context) | **PUT** /context/{context-id}/environment-variable/{env-var-name} | Add or update an environment variable |
| [**create_context**](ContextApi.md#create_context) | **POST** /context | Create a new context |
| [**delete_context**](ContextApi.md#delete_context) | **DELETE** /context/{context-id} | Delete a context |
| [**delete_environment_variable_from_context**](ContextApi.md#delete_environment_variable_from_context) | **DELETE** /context/{context-id}/environment-variable/{env-var-name} | Remove an environment variable |
| [**get_context**](ContextApi.md#get_context) | **GET** /context/{context-id} | Get a context |
| [**list_contexts**](ContextApi.md#list_contexts) | **GET** /context | List contexts |
| [**list_environment_variables_from_context**](ContextApi.md#list_environment_variables_from_context) | **GET** /context/{context-id}/environment-variable | List environment variables |


## add_environment_variable_to_context

> <AnyOfobjectobject> add_environment_variable_to_context(context_id, env_var_name, opts)

Add or update an environment variable

Create or update an environment variable within a context. Returns information about the environment variable, not including its value.

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

api_instance = CircleciOpenapi::ContextApi.new
context_id = TODO # String | ID of the context (UUID)
env_var_name = 'POSTGRES_USER' # String | The name of the environment variable
opts = {
  inline_object1: CircleciOpenapi::InlineObject1.new({value: 'some-secret-value'}) # InlineObject1 | 
}

begin
  # Add or update an environment variable
  result = api_instance.add_environment_variable_to_context(context_id, env_var_name, opts)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ContextApi->add_environment_variable_to_context: #{e}"
end
```

#### Using the add_environment_variable_to_context_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AnyOfobjectobject>, Integer, Hash)> add_environment_variable_to_context_with_http_info(context_id, env_var_name, opts)

```ruby
begin
  # Add or update an environment variable
  data, status_code, headers = api_instance.add_environment_variable_to_context_with_http_info(context_id, env_var_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AnyOfobjectobject>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ContextApi->add_environment_variable_to_context_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **context_id** | [**String**](.md) | ID of the context (UUID) |  |
| **env_var_name** | **String** | The name of the environment variable |  |
| **inline_object1** | [**InlineObject1**](InlineObject1.md) |  | [optional] |

### Return type

[**AnyOfobjectobject**](AnyOfobjectobject.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_context

> <Context> create_context(opts)

Create a new context

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

api_instance = CircleciOpenapi::ContextApi.new
opts = {
  inline_object: CircleciOpenapi::InlineObject.new({name: 'name_example', owner: TODO}) # InlineObject | 
}

begin
  # Create a new context
  result = api_instance.create_context(opts)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ContextApi->create_context: #{e}"
end
```

#### Using the create_context_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Context>, Integer, Hash)> create_context_with_http_info(opts)

```ruby
begin
  # Create a new context
  data, status_code, headers = api_instance.create_context_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Context>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ContextApi->create_context_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inline_object** | [**InlineObject**](InlineObject.md) |  | [optional] |

### Return type

[**Context**](Context.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_context

> <MessageResponse> delete_context(context_id)

Delete a context

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

api_instance = CircleciOpenapi::ContextApi.new
context_id = TODO # String | ID of the context (UUID)

begin
  # Delete a context
  result = api_instance.delete_context(context_id)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ContextApi->delete_context: #{e}"
end
```

#### Using the delete_context_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> delete_context_with_http_info(context_id)

```ruby
begin
  # Delete a context
  data, status_code, headers = api_instance.delete_context_with_http_info(context_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ContextApi->delete_context_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **context_id** | [**String**](.md) | ID of the context (UUID) |  |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_environment_variable_from_context

> <MessageResponse> delete_environment_variable_from_context(env_var_name, context_id)

Remove an environment variable

Delete an environment variable from a context.

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

api_instance = CircleciOpenapi::ContextApi.new
env_var_name = 'POSTGRES_USER' # String | The name of the environment variable
context_id = TODO # String | ID of the context (UUID)

begin
  # Remove an environment variable
  result = api_instance.delete_environment_variable_from_context(env_var_name, context_id)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ContextApi->delete_environment_variable_from_context: #{e}"
end
```

#### Using the delete_environment_variable_from_context_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> delete_environment_variable_from_context_with_http_info(env_var_name, context_id)

```ruby
begin
  # Remove an environment variable
  data, status_code, headers = api_instance.delete_environment_variable_from_context_with_http_info(env_var_name, context_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ContextApi->delete_environment_variable_from_context_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **env_var_name** | **String** | The name of the environment variable |  |
| **context_id** | [**String**](.md) | ID of the context (UUID) |  |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_context

> <Context> get_context(context_id)

Get a context

Returns basic information about a context.

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

api_instance = CircleciOpenapi::ContextApi.new
context_id = TODO # String | ID of the context (UUID)

begin
  # Get a context
  result = api_instance.get_context(context_id)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ContextApi->get_context: #{e}"
end
```

#### Using the get_context_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Context>, Integer, Hash)> get_context_with_http_info(context_id)

```ruby
begin
  # Get a context
  data, status_code, headers = api_instance.get_context_with_http_info(context_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Context>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ContextApi->get_context_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **context_id** | [**String**](.md) | ID of the context (UUID) |  |

### Return type

[**Context**](Context.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_contexts

> <InlineResponse200> list_contexts(opts)

List contexts

List all contexts for an owner.

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

api_instance = CircleciOpenapi::ContextApi.new
opts = {
  owner_id: TODO, # String | The unique ID of the owner of the context. Specify either this or owner-slug.
  owner_slug: 'owner_slug_example', # String | A string that represents an organization. Specify either this or owner-id. Cannot be used for accounts.
  owner_type: 'account', # String | The type of the owner. Defaults to \"organization\". Accounts are only used as context owners in server.
  page_token: 'page_token_example' # String | A token to retrieve the next page of results.
}

begin
  # List contexts
  result = api_instance.list_contexts(opts)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ContextApi->list_contexts: #{e}"
end
```

#### Using the list_contexts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse200>, Integer, Hash)> list_contexts_with_http_info(opts)

```ruby
begin
  # List contexts
  data, status_code, headers = api_instance.list_contexts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse200>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ContextApi->list_contexts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner_id** | [**String**](.md) | The unique ID of the owner of the context. Specify either this or owner-slug. | [optional] |
| **owner_slug** | **String** | A string that represents an organization. Specify either this or owner-id. Cannot be used for accounts. | [optional] |
| **owner_type** | **String** | The type of the owner. Defaults to \&quot;organization\&quot;. Accounts are only used as context owners in server. | [optional] |
| **page_token** | **String** | A token to retrieve the next page of results. | [optional] |

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_environment_variables_from_context

> <InlineResponse2001> list_environment_variables_from_context(context_id)

List environment variables

List information about environment variables in a context, not including their values.

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

api_instance = CircleciOpenapi::ContextApi.new
context_id = TODO # String | ID of the context (UUID)

begin
  # List environment variables
  result = api_instance.list_environment_variables_from_context(context_id)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ContextApi->list_environment_variables_from_context: #{e}"
end
```

#### Using the list_environment_variables_from_context_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse2001>, Integer, Hash)> list_environment_variables_from_context_with_http_info(context_id)

```ruby
begin
  # List environment variables
  data, status_code, headers = api_instance.list_environment_variables_from_context_with_http_info(context_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse2001>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling ContextApi->list_environment_variables_from_context_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **context_id** | [**String**](.md) | ID of the context (UUID) |  |

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

