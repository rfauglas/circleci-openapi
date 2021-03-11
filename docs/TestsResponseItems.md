# CircleciOpenapi::TestsResponseItems

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | The failure message associated with the test. |  |
| **source** | **String** | The program that generated the test results |  |
| **run_time** | **Float** | The time it took to run the test in seconds |  |
| **file** | **String** | The file in which the test is defined. |  |
| **result** | **String** | Indication of whether the test succeeded. |  |
| **name** | **String** | The name of the test. |  |
| **classname** | **String** | The programmatic location of the test. |  |

## Example

```ruby
require 'circleci_openapi'

instance = CircleciOpenapi::TestsResponseItems.new(
  message: ,
  source: ,
  run_time: null,
  file: ,
  result: ,
  name: ,
  classname: 
)
```

