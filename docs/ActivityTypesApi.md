# Pipedrive::ActivityTypesApi

All URIs are relative to *https://api.pipedrive.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activity_types_delete**](ActivityTypesApi.md#activity_types_delete) | **DELETE** /activityTypes | Delete multiple activity types in bulk
[**activity_types_get**](ActivityTypesApi.md#activity_types_get) | **GET** /activityTypes | Get all activity types
[**activity_types_id_delete**](ActivityTypesApi.md#activity_types_id_delete) | **DELETE** /activityTypes/{id} | Delete an activity type
[**activity_types_id_put**](ActivityTypesApi.md#activity_types_id_put) | **PUT** /activityTypes/{id} | Edit activity type
[**activity_types_post**](ActivityTypesApi.md#activity_types_post) | **POST** /activityTypes | Add new activity type


# **activity_types_delete**
> activity_types_delete(ids)

Delete multiple activity types in bulk

Marks multiple activity types as deleted.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ActivityTypesApi.new

ids = "" # String | Comma-separated activity type IDs to delete


begin
  #Delete multiple activity types in bulk
  api_instance.activity_types_delete(ids)
rescue Pipedrive::ApiError => e
  puts "Exception when calling ActivityTypesApi->activity_types_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **String**| Comma-separated activity type IDs to delete | [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **activity_types_get**
> activity_types_get

Get all activity types

Returns all activity types

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ActivityTypesApi.new

begin
  #Get all activity types
  api_instance.activity_types_get
rescue Pipedrive::ApiError => e
  puts "Exception when calling ActivityTypesApi->activity_types_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **activity_types_id_delete**
> activity_types_id_delete(id)

Delete an activity type

Marks an activity type as deleted.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ActivityTypesApi.new

id = 8.14 # Float | ID of the activity type


begin
  #Delete an activity type
  api_instance.activity_types_id_delete(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling ActivityTypesApi->activity_types_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the activity type | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **activity_types_id_put**
> activity_types_id_put(id, opts)

Edit activity type

Updates an activity type.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ActivityTypesApi.new

id = 8.14 # Float | ID of the activity type

opts = { 
  name: "", # String | Name of the activity type
  icon_key: "", # String | Icon graphic to use. Supported values: default, call, meeting, lunch, email, task, deadline. Additional supported values will be made available in the future.
  color: "", # String | A designated color for the activity type in 6-character HEX format (e.g. FFFFFF for white, 000000 for black).
  order_nr: 8.14 # Float | An order number for this activity type. Order numbers should be used to order the types in the activity type selections.
}

begin
  #Edit activity type
  api_instance.activity_types_id_put(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling ActivityTypesApi->activity_types_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the activity type | 
 **name** | **String**| Name of the activity type | [optional] [default to ]
 **icon_key** | **String**| Icon graphic to use. Supported values: default, call, meeting, lunch, email, task, deadline. Additional supported values will be made available in the future. | [optional] [default to ]
 **color** | **String**| A designated color for the activity type in 6-character HEX format (e.g. FFFFFF for white, 000000 for black). | [optional] [default to ]
 **order_nr** | **Float**| An order number for this activity type. Order numbers should be used to order the types in the activity type selections. | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **activity_types_post**
> activity_types_post(name, icon_key, opts)

Add new activity type

Adds a new activity type, returns the ID, the key_string and the order number of the newly added activity type upon success.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ActivityTypesApi.new

name = "" # String | Name of the activity type

icon_key = "" # String | Icon graphic to use for representing this activity type.

opts = { 
  color: "" # String | A designated color for the activity type in 6-character HEX format (e.g. FFFFFF for white, 000000 for black).
}

begin
  #Add new activity type
  api_instance.activity_types_post(name, icon_key, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling ActivityTypesApi->activity_types_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the activity type | [default to ]
 **icon_key** | **String**| Icon graphic to use for representing this activity type. | [default to ]
 **color** | **String**| A designated color for the activity type in 6-character HEX format (e.g. FFFFFF for white, 000000 for black). | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



