# Pipedrive::AuthorizationsApi

All URIs are relative to *https://api.pipedrive.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authorizations_post**](AuthorizationsApi.md#authorizations_post) | **POST** /authorizations | Get all authorizations for a user


# **authorizations_post**
> authorizations_post(email, password)

Get all authorizations for a user

Returns all authorizations for a particular user. Authorization objects contain the API tokens the user has with different company accounts in Pipedrive. These can be fetched without an API token but using the email and password of the user.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::AuthorizationsApi.new

email = "" # String | Email of the user

password = "" # String | Password of the user


begin
  #Get all authorizations for a user
  api_instance.authorizations_post(email, password)
rescue Pipedrive::ApiError => e
  puts "Exception when calling AuthorizationsApi->authorizations_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| Email of the user | [default to ]
 **password** | **String**| Password of the user | [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



