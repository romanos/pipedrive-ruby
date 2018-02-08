# Pipedrive::UserConnectionsApi

All URIs are relative to *https://api.pipedrive.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**user_connections_get**](UserConnectionsApi.md#user_connections_get) | **GET** /userConnections | Get all user connections


# **user_connections_get**
> user_connections_get

Get all user connections

Returns data about all connections for authorized user.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::UserConnectionsApi.new

begin
  #Get all user connections
  api_instance.user_connections_get
rescue Pipedrive::ApiError => e
  puts "Exception when calling UserConnectionsApi->user_connections_get: #{e}"
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



