# Pipedrive::ActivitiesApi

All URIs are relative to *https://api.pipedrive.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activities_delete**](ActivitiesApi.md#activities_delete) | **DELETE** /activities | Delete multiple activities in bulk
[**activities_get**](ActivitiesApi.md#activities_get) | **GET** /activities | Get all activities assigned to a particular user
[**activities_id_delete**](ActivitiesApi.md#activities_id_delete) | **DELETE** /activities/{id} | Delete an activity
[**activities_id_get**](ActivitiesApi.md#activities_id_get) | **GET** /activities/{id} | Get details of an activity
[**activities_id_put**](ActivitiesApi.md#activities_id_put) | **PUT** /activities/{id} | Edit an activity
[**activities_post**](ActivitiesApi.md#activities_post) | **POST** /activities | Add an activity


# **activities_delete**
> activities_delete(ids)

Delete multiple activities in bulk

Marks multiple activities as deleted.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ActivitiesApi.new

ids = [""] # Array<String> | Comma-separated IDs that will be deleted


begin
  #Delete multiple activities in bulk
  api_instance.activities_delete(ids)
rescue Pipedrive::ApiError => e
  puts "Exception when calling ActivitiesApi->activities_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | [**Array&lt;String&gt;**](String.md)| Comma-separated IDs that will be deleted | [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **activities_get**
> activities_get(opts)

Get all activities assigned to a particular user

Returns all activities assigned to a particular user

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ActivitiesApi.new

opts = { 
  user_id: 8.14, # Float | ID of the user who's activities to fetch. If omitted, the authorized user will be used. If 0, activities for all users in company will be fetched.
  filter_id: 8.14, # Float | ID of the filter to use (will narrow down results if used together with user_id parameter).
  type: "", # String | Type of the activity. This is in correlation with the key_string parameter of ActivityTypes.
  start: 0, # Float | Pagination start
  limit: 8.14, # Float | Items shown per page
  start_date: "", # String | Date in format of YYYY-MM-DD from which activities to fetch from.
  end_date: "", # String | Date in format of YYYY-MM-DD until which activities to fetch to.
  done: "done_example" # String | Whether the activity is done or not. 0 = Not done, 1 = Done. If omitted returns both Done and Not done
}

begin
  #Get all activities assigned to a particular user
  api_instance.activities_get(opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling ActivitiesApi->activities_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Float**| ID of the user who&#39;s activities to fetch. If omitted, the authorized user will be used. If 0, activities for all users in company will be fetched. | [optional] 
 **filter_id** | **Float**| ID of the filter to use (will narrow down results if used together with user_id parameter). | [optional] 
 **type** | **String**| Type of the activity. This is in correlation with the key_string parameter of ActivityTypes. | [optional] [default to ]
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 
 **start_date** | **String**| Date in format of YYYY-MM-DD from which activities to fetch from. | [optional] [default to ]
 **end_date** | **String**| Date in format of YYYY-MM-DD until which activities to fetch to. | [optional] [default to ]
 **done** | **String**| Whether the activity is done or not. 0 &#x3D; Not done, 1 &#x3D; Done. If omitted returns both Done and Not done | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **activities_id_delete**
> activities_id_delete(id)

Delete an activity

Deletes an activity

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ActivitiesApi.new

id = 8.14 # Float | ID of the activity


begin
  #Delete an activity
  api_instance.activities_id_delete(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling ActivitiesApi->activities_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the activity | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **activities_id_get**
> activities_id_get(id)

Get details of an activity

Returns details of a specific activity.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ActivitiesApi.new

id = 8.14 # Float | ID of the activity


begin
  #Get details of an activity
  api_instance.activities_id_get(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling ActivitiesApi->activities_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the activity | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **activities_id_put**
> activities_id_put(id, opts)

Edit an activity

Modifies an activity. Includes more_activities_scheduled_in_context property in response's additional_data which indicates whether there are more undone activities scheduled with the same deal, person or organization (depending on the supplied data).

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ActivitiesApi.new

id = 8.14 # Float | ID of the activity

opts = { 
  subject: "", # String | Subject of the activity. When omitted, will remain unchanged.
  done: "0", # String | Whether the activity is done or not. 0 = Not done, 1 = Done
  type: "", # String | Type of the activity. This is in correlation with the key_string parameter of ActivityTypes.
  due_date: "", # String | Due date of the activity. Format: YYYY-MM-DD
  due_time: "", # String | Due time of the activity in UTC. Format: HH:MM
  duration: "", # String | Duration of the activity. Format: HH:MM
  user_id: 8.14, # Float | ID of the user whom the activity will be assigned to
  deal_id: 8.14, # Float | ID of the deal this activity will be associated with
  person_id: 8.14, # Float | ID of the person this activity will be associated with
  participants: Pipedrive::null.new, #  | List of multiple persons (participants) this activity will be associated with. If omitted, single participant from person_id field is used. It requires a structure as follows: [{\"person_id\":1,\"primary_flag\":true}]
  org_id: 8.14, # Float | ID of the organization this activity will be associated with
  note: "" # String | Note of the activity (HTML format). When omitted, will remain unchanged.
}

begin
  #Edit an activity
  api_instance.activities_id_put(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling ActivitiesApi->activities_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the activity | 
 **subject** | **String**| Subject of the activity. When omitted, will remain unchanged. | [optional] [default to ]
 **done** | **String**| Whether the activity is done or not. 0 &#x3D; Not done, 1 &#x3D; Done | [optional] [default to 0]
 **type** | **String**| Type of the activity. This is in correlation with the key_string parameter of ActivityTypes. | [optional] [default to ]
 **due_date** | **String**| Due date of the activity. Format: YYYY-MM-DD | [optional] [default to ]
 **due_time** | **String**| Due time of the activity in UTC. Format: HH:MM | [optional] [default to ]
 **duration** | **String**| Duration of the activity. Format: HH:MM | [optional] [default to ]
 **user_id** | **Float**| ID of the user whom the activity will be assigned to | [optional] 
 **deal_id** | **Float**| ID of the deal this activity will be associated with | [optional] 
 **person_id** | **Float**| ID of the person this activity will be associated with | [optional] 
 **participants** | [****](.md)| List of multiple persons (participants) this activity will be associated with. If omitted, single participant from person_id field is used. It requires a structure as follows: [{\&quot;person_id\&quot;:1,\&quot;primary_flag\&quot;:true}] | [optional] 
 **org_id** | **Float**| ID of the organization this activity will be associated with | [optional] 
 **note** | **String**| Note of the activity (HTML format). When omitted, will remain unchanged. | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **activities_post**
> activities_post(subject, type, opts)

Add an activity

Adds a new activity. Includes more_activities_scheduled_in_context property in response's additional_data which indicates whether there are more undone activities scheduled with the same deal, person or organization (depending on the supplied data).

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ActivitiesApi.new

subject = "" # String | Subject of the activity

type = "" # String | Type of the activity. This is in correlation with the key_string parameter of ActivityTypes.

opts = { 
  done: "0", # String | Whether the activity is done or not. 0 = Not done, 1 = Done
  due_date: "", # String | Due date of the activity. Format: YYYY-MM-DD
  due_time: "", # String | Due time of the activity in UTC. Format: HH:MM
  duration: "", # String | Duration of the activity. Format: HH:MM
  user_id: 8.14, # Float | ID of the user whom the activity will be assigned to. If omitted, the activity will be assigned to the authorized user.
  deal_id: 8.14, # Float | ID of the deal this activity will be associated with
  person_id: 8.14, # Float | ID of the person this activity will be associated with
  participants: Pipedrive::null.new, #  | List of multiple persons (participants) this activity will be associated with. If omitted, single participant from person_id field is used. It requires a structure as follows: [{\"person_id\":1,\"primary_flag\":true}]
  org_id: 8.14, # Float | ID of the organization this activity will be associated with
  note: "" # String | Note of the activity (HTML format)
}

begin
  #Add an activity
  api_instance.activities_post(subject, type, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling ActivitiesApi->activities_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subject** | **String**| Subject of the activity | [default to ]
 **type** | **String**| Type of the activity. This is in correlation with the key_string parameter of ActivityTypes. | [default to ]
 **done** | **String**| Whether the activity is done or not. 0 &#x3D; Not done, 1 &#x3D; Done | [optional] [default to 0]
 **due_date** | **String**| Due date of the activity. Format: YYYY-MM-DD | [optional] [default to ]
 **due_time** | **String**| Due time of the activity in UTC. Format: HH:MM | [optional] [default to ]
 **duration** | **String**| Duration of the activity. Format: HH:MM | [optional] [default to ]
 **user_id** | **Float**| ID of the user whom the activity will be assigned to. If omitted, the activity will be assigned to the authorized user. | [optional] 
 **deal_id** | **Float**| ID of the deal this activity will be associated with | [optional] 
 **person_id** | **Float**| ID of the person this activity will be associated with | [optional] 
 **participants** | [****](.md)| List of multiple persons (participants) this activity will be associated with. If omitted, single participant from person_id field is used. It requires a structure as follows: [{\&quot;person_id\&quot;:1,\&quot;primary_flag\&quot;:true}] | [optional] 
 **org_id** | **Float**| ID of the organization this activity will be associated with | [optional] 
 **note** | **String**| Note of the activity (HTML format) | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



