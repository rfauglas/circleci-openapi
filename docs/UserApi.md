# CircleciOpenapi::UserApi

All URIs are relative to *https://circleci.com/api/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_collaborations**](UserApi.md#get_collaborations) | **GET** /me/collaborations | Collaborations |
| [**get_current_user**](UserApi.md#get_current_user) | **GET** /me | User Information |
| [**get_user**](UserApi.md#get_user) | **GET** /user/{id} | User Information |


## get_collaborations

> <Array<Collaboration>> get_collaborations

Collaborations

Provides the set of organizations of which a user is a member or a collaborator.  The set of organizations that a user can collaborate on is composed of:  * Organizations that the current user belongs to across VCS types (e.g. BitBucket, GitHub) * The parent organization of repository that the user can collaborate on, but is not necessarily a member of * The organization of the current user's account

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

api_instance = CircleciOpenapi::UserApi.new

begin
  # Collaborations
  result = api_instance.get_collaborations
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling UserApi->get_collaborations: #{e}"
end
```

#### Using the get_collaborations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Collaboration>>, Integer, Hash)> get_collaborations_with_http_info

```ruby
begin
  # Collaborations
  data, status_code, headers = api_instance.get_collaborations_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Collaboration>>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling UserApi->get_collaborations_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Collaboration&gt;**](Collaboration.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_current_user

> <User> get_current_user

User Information

Provides information about the user that is currently signed in.

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

api_instance = CircleciOpenapi::UserApi.new

begin
  # User Information
  result = api_instance.get_current_user
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling UserApi->get_current_user: #{e}"
end
```

#### Using the get_current_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> get_current_user_with_http_info

```ruby
begin
  # User Information
  data, status_code, headers = api_instance.get_current_user_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling UserApi->get_current_user_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**User**](User.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user

> <User> get_user(id)

User Information

Provides information about the user with the given ID.

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

api_instance = CircleciOpenapi::UserApi.new
id = TODO # String | The unique ID of the user.

begin
  # User Information
  result = api_instance.get_user(id)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling UserApi->get_user: #{e}"
end
```

#### Using the get_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> get_user_with_http_info(id)

```ruby
begin
  # User Information
  data, status_code, headers = api_instance.get_user_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue CircleciOpenapi::ApiError => e
  puts "Error when calling UserApi->get_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) | The unique ID of the user. |  |

### Return type

[**User**](User.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query), [basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

