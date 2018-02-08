# Pipedrive::GoalsApi

All URIs are relative to *https://api.pipedrive.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**goals_get**](GoalsApi.md#goals_get) | **GET** /goals | Get all goals
[**goals_id_delete**](GoalsApi.md#goals_id_delete) | **DELETE** /goals/{id} | Delete existing goal
[**goals_id_get**](GoalsApi.md#goals_id_get) | **GET** /goals/{id} | Get details of a goal
[**goals_id_put**](GoalsApi.md#goals_id_put) | **PUT** /goals/{id} | Update goal details
[**goals_id_results_get**](GoalsApi.md#goals_id_results_get) | **GET** /goals/{id}/results | Get results of one goal
[**goals_post**](GoalsApi.md#goals_post) | **POST** /goals | Add a new goal


# **goals_get**
> goals_get(opts)

Get all goals

Returns data about all goals.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::GoalsApi.new

opts = { 
  user_id: 8.14, # Float | ID of the user who's goal to fetch. When omitted, only your goals will be returned.
  everyone: "" # String | If provided, everyone's goals will be returned.
}

begin
  #Get all goals
  api_instance.goals_get(opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling GoalsApi->goals_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Float**| ID of the user who&#39;s goal to fetch. When omitted, only your goals will be returned. | [optional] 
 **everyone** | **String**| If provided, everyone&#39;s goals will be returned. | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **goals_id_delete**
> goals_id_delete(id)

Delete existing goal

Marks goal as deleted.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::GoalsApi.new

id = 8.14 # Float | ID of the goal to mark as deleted.


begin
  #Delete existing goal
  api_instance.goals_id_delete(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling GoalsApi->goals_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the goal to mark as deleted. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **goals_id_get**
> goals_id_get(id)

Get details of a goal

Returns data about a specific goal.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::GoalsApi.new

id = 8.14 # Float | ID of the goal to fetch.


begin
  #Get details of a goal
  api_instance.goals_id_get(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling GoalsApi->goals_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the goal to fetch. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **goals_id_put**
> goals_id_put(id, goal_type, expected_type, period, expected, opts)

Update goal details

Updates the properties of a goal.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::GoalsApi.new

id = 8.14 # Float | ID of the goal to update.

goal_type = "" # String | Goal type.

expected_type = "" # String | Expected type.

period = "" # String | Period of time.

expected = 8.14 # Float | Expected sum or number.

opts = { 
  user_id: 8.14, # Float | ID of the user who will be associated with this goal. If omitted, the authorized user will be used.
  stage_id: 8.14, # Float | ID of the stage. This field is required when goal_type = stage.
  currency: "", # String | Currency of the goal. Accepts a 3-character currency code. If omitted, currency will be set to the default currency of the authorized user.
  pipeline_id: 8.14 # Float | ID of the pipeline to add goal to.
}

begin
  #Update goal details
  api_instance.goals_id_put(id, goal_type, expected_type, period, expected, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling GoalsApi->goals_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the goal to update. | 
 **goal_type** | **String**| Goal type. | [default to ]
 **expected_type** | **String**| Expected type. | [default to ]
 **period** | **String**| Period of time. | [default to ]
 **expected** | **Float**| Expected sum or number. | 
 **user_id** | **Float**| ID of the user who will be associated with this goal. If omitted, the authorized user will be used. | [optional] 
 **stage_id** | **Float**| ID of the stage. This field is required when goal_type &#x3D; stage. | [optional] 
 **currency** | **String**| Currency of the goal. Accepts a 3-character currency code. If omitted, currency will be set to the default currency of the authorized user. | [optional] [default to ]
 **pipeline_id** | **Float**| ID of the pipeline to add goal to. | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **goals_id_results_get**
> goals_id_results_get(id, opts)

Get results of one goal

Lists results of a specific goal.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::GoalsApi.new

id = 8.14 # Float | ID of the goal to mark as deleted.

opts = { 
  period_start: "", # String | Start of the period. Date in format of YYYY-MM-DD.
  period_end: "" # String | End of the period. Date in format of YYYY-MM-DD.
}

begin
  #Get results of one goal
  api_instance.goals_id_results_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling GoalsApi->goals_id_results_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the goal to mark as deleted. | 
 **period_start** | **String**| Start of the period. Date in format of YYYY-MM-DD. | [optional] [default to ]
 **period_end** | **String**| End of the period. Date in format of YYYY-MM-DD. | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **goals_post**
> goals_post(goal_type, expected_type, period, expected, opts)

Add a new goal

Adds a new goal, returns the ID upon success.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::GoalsApi.new

goal_type = "stage" # String | Goal type.

expected_type = "expected_num" # String | Expected type.

period = "week" # String | Period of time.

expected = 8.14 # Float | Expected sum or number.

opts = { 
  user_id: 8.14, # Float | ID of the user who will be associated with this goal. If omitted, the authorized user will be used.
  stage_id: 8.14, # Float | ID of the stage. This field is required when goal_type = stage.
  currency: "", # String | Currency of the goal. Accepts a 3-character currency code. If omitted, currency will be set to the default currency of the authorized user.
  pipeline_id: 8.14 # Float | ID of the pipeline to add goal to.
}

begin
  #Add a new goal
  api_instance.goals_post(goal_type, expected_type, period, expected, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling GoalsApi->goals_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **goal_type** | **String**| Goal type. | [default to stage]
 **expected_type** | **String**| Expected type. | [default to expected_num]
 **period** | **String**| Period of time. | [default to week]
 **expected** | **Float**| Expected sum or number. | 
 **user_id** | **Float**| ID of the user who will be associated with this goal. If omitted, the authorized user will be used. | [optional] 
 **stage_id** | **Float**| ID of the stage. This field is required when goal_type &#x3D; stage. | [optional] 
 **currency** | **String**| Currency of the goal. Accepts a 3-character currency code. If omitted, currency will be set to the default currency of the authorized user. | [optional] [default to ]
 **pipeline_id** | **Float**| ID of the pipeline to add goal to. | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



