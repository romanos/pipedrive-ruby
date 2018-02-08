# Pipedrive::UserSettingsApi

All URIs are relative to *https://api.pipedrive.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**user_settings_get**](UserSettingsApi.md#user_settings_get) | **GET** /userSettings | List settings of authorized user


# **user_settings_get**
> user_settings_get

List settings of authorized user

Lists settings of authorized user.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::UserSettingsApi.new

begin
  #List settings of authorized user
  api_instance.user_settings_get
rescue Pipedrive::ApiError => e
  puts "Exception when calling UserSettingsApi->user_settings_get: #{e}"
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



