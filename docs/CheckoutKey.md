# CircleciOpenapi::CheckoutKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_key** | **String** | A public SSH key. |  |
| **type** | **String** | The type of checkout key. This may be either &#x60;deploy-key&#x60; or &#x60;github-user-key&#x60;. |  |
| **fingerprint** | **String** | An SSH key fingerprint. |  |
| **preferred** | **Boolean** | A boolean value that indicates if this key is preferred. |  |
| **created_at** | **Time** | The date and time the checkout key was created. |  |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::CheckoutKey.new(
  public_key: ssh-rsa ...,
  type: deploy-key,
  fingerprint: c9:0b:1c:4f:d5:65:56:b9:ad:88:f9:81:2b:37:74:2f,
  preferred: true,
  created_at: 2015-09-21T17:29:21.042Z
)
```

