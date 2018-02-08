# Pipedrive::RecentsApi

All URIs are relative to *https://api.pipedrive.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**recents_get**](RecentsApi.md#recents_get) | **GET** /recents | Get recents


# **recents_get**
> recents_get(since_timestamp, opts)

Get recents

Returns data about all recent changes occured after given timestamp.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::RecentsApi.new

since_timestamp = "" # String | Timestamp in UTC. Format: YYYY-MM-DD HH:MM:SS

opts = { 
  items: "", # String | Multiple selection of item types to include in query (optional)
  start: 0, # Float | Pagination start
  limit: 8.14 # Float | Items shown per page
}

begin
  #Get recents
  api_instance.recents_get(since_timestamp, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling RecentsApi->recents_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since_timestamp** | **String**| Timestamp in UTC. Format: YYYY-MM-DD HH:MM:SS | [default to ]
 **items** | **String**| Multiple selection of item types to include in query (optional) | [optional] [default to ]
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



