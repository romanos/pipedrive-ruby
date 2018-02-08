# Pipedrive::GlobalMessagesApi

All URIs are relative to *https://api.pipedrive.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**global_messages_get**](GlobalMessagesApi.md#global_messages_get) | **GET** /globalMessages | Get global messages
[**global_messages_id_delete**](GlobalMessagesApi.md#global_messages_id_delete) | **DELETE** /globalMessages/{id} | Dismiss a global message


# **global_messages_get**
> global_messages_get(opts)

Get global messages

Returns data about global messages to display for the authorized user.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::GlobalMessagesApi.new

opts = { 
  limit: 1 # Float | Number of messages to get from 1 to 100. 1 message is returned by default.
}

begin
  #Get global messages
  api_instance.global_messages_get(opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling GlobalMessagesApi->global_messages_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Float**| Number of messages to get from 1 to 100. 1 message is returned by default. | [optional] [default to 1]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **global_messages_id_delete**
> global_messages_id_delete(id)

Dismiss a global message

Removes global message from being shown, if message is dismissible

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::GlobalMessagesApi.new

id = 8.14 # Float | ID of global message to be dismissed.


begin
  #Dismiss a global message
  api_instance.global_messages_id_delete(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling GlobalMessagesApi->global_messages_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of global message to be dismissed. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



