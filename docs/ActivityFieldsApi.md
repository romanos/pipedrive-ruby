# Pipedrive::ActivityFieldsApi

All URIs are relative to *https://api.pipedrive.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activity_fields_get**](ActivityFieldsApi.md#activity_fields_get) | **GET** /activityFields | Get all fields for an activity


# **activity_fields_get**
> activity_fields_get

Get all fields for an activity

Return list of all fields for activity

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ActivityFieldsApi.new

begin
  #Get all fields for an activity
  api_instance.activity_fields_get
rescue Pipedrive::ApiError => e
  puts "Exception when calling ActivityFieldsApi->activity_fields_get: #{e}"
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



