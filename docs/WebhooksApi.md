# Pipedrive::WebhooksApi

All URIs are relative to *https://api.pipedrive.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**webhooks_get**](WebhooksApi.md#webhooks_get) | **GET** /webhooks | Get all webhooks
[**webhooks_id_delete**](WebhooksApi.md#webhooks_id_delete) | **DELETE** /webhooks/{id} | Delete existing webhook
[**webhooks_post**](WebhooksApi.md#webhooks_post) | **POST** /webhooks | Create a new webhook


# **webhooks_get**
> webhooks_get

Get all webhooks

Returns data about all webhooks of a company.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::WebhooksApi.new

begin
  #Get all webhooks
  api_instance.webhooks_get
rescue Pipedrive::ApiError => e
  puts "Exception when calling WebhooksApi->webhooks_get: #{e}"
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



# **webhooks_id_delete**
> webhooks_id_delete(id)

Delete existing webhook

Deletes the specified webhook.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::WebhooksApi.new

id = 8.14 # Float | ID of the webhook to delete.


begin
  #Delete existing webhook
  api_instance.webhooks_id_delete(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling WebhooksApi->webhooks_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the webhook to delete. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **webhooks_post**
> webhooks_post(subscription_url, event_action, event_object, opts)

Create a new webhook

Creates a new webhook and returns its details. Note that specifying an event which triggers the webhook combines 2 parameters - 'event_action' and 'event_object'. E.g., use '\\*.\\*' for getting notifications about all events, 'added.deal' for any newly added deals, 'deleted.persons' for any deleted persons, etc. See https://app.pipedrive.com/webhooks for more details.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::WebhooksApi.new

subscription_url = "" # String | A full, valid, publicly accessible URL. Determines where to send the notifications. Please note that you cannot use Pipedrive API endpoints as the subscription_url.

event_action = "" # String | Type of action to receive notifications about. Wildcard will match all supported actions.

event_object = "" # String | Type of object to receive notifications about. Wildcard will match all supported objects.

opts = { 
  user_id: 8.14, # Float | ID of the user this webhook will be authorized with. If not set, current authorized user will be used. Note that this does not filter only certain user's events — rather, this specifies the user's permissions under which each event is checked. Events about objects the selected user is not entitled to access are not sent. If you want to receive notifications for all events, a top-level admin user should be used.
  http_auth_user: "", # String | HTTP basic auth username of the subscription URL endpoint (if required).
  http_auth_password: "" # String | HTTP basic auth password of the subscription URL endpoint (if required).
}

begin
  #Create a new webhook
  api_instance.webhooks_post(subscription_url, event_action, event_object, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling WebhooksApi->webhooks_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_url** | **String**| A full, valid, publicly accessible URL. Determines where to send the notifications. Please note that you cannot use Pipedrive API endpoints as the subscription_url. | [default to ]
 **event_action** | **String**| Type of action to receive notifications about. Wildcard will match all supported actions. | [default to ]
 **event_object** | **String**| Type of object to receive notifications about. Wildcard will match all supported objects. | [default to ]
 **user_id** | **Float**| ID of the user this webhook will be authorized with. If not set, current authorized user will be used. Note that this does not filter only certain user&#39;s events — rather, this specifies the user&#39;s permissions under which each event is checked. Events about objects the selected user is not entitled to access are not sent. If you want to receive notifications for all events, a top-level admin user should be used. | [optional] 
 **http_auth_user** | **String**| HTTP basic auth username of the subscription URL endpoint (if required). | [optional] [default to ]
 **http_auth_password** | **String**| HTTP basic auth password of the subscription URL endpoint (if required). | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



