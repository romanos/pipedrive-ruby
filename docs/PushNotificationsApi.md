# Pipedrive::PushNotificationsApi

All URIs are relative to *https://api.pipedrive.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**push_notifications_get**](PushNotificationsApi.md#push_notifications_get) | **GET** /pushNotifications | Get all subscriptions
[**push_notifications_id_delete**](PushNotificationsApi.md#push_notifications_id_delete) | **DELETE** /pushNotifications/{id} | Delete existing subscription
[**push_notifications_id_get**](PushNotificationsApi.md#push_notifications_id_get) | **GET** /pushNotifications/{id} | Get details of a subscription
[**push_notifications_post**](PushNotificationsApi.md#push_notifications_post) | **POST** /pushNotifications | Create new subscription


# **push_notifications_get**
> push_notifications_get

Get all subscriptions

Returns data about all subscriptions. This endpoint is deprecated, use <a href=\"#!/Webhooks/get_webhooks\">Get all webhooks</a> endpoint instead.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PushNotificationsApi.new

begin
  #Get all subscriptions
  api_instance.push_notifications_get
rescue Pipedrive::ApiError => e
  puts "Exception when calling PushNotificationsApi->push_notifications_get: #{e}"
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



# **push_notifications_id_delete**
> push_notifications_id_delete(id)

Delete existing subscription

Marks subscription as deleted. This endpoint is deprecated, use <a href=\"#!/Webhooks/delete_webhooks_id\">Delete existing webhook</a> endpoint instead.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PushNotificationsApi.new

id = 8.14 # Float | ID of the subscription to mark as deleted.


begin
  #Delete existing subscription
  api_instance.push_notifications_id_delete(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PushNotificationsApi->push_notifications_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the subscription to mark as deleted. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **push_notifications_id_get**
> push_notifications_id_get(id)

Get details of a subscription

Returns data about a specific subscription. This endpoint is deprecated and should not be used anymore.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PushNotificationsApi.new

id = 8.14 # Float | ID of the subscriptions to fetch.


begin
  #Get details of a subscription
  api_instance.push_notifications_id_get(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PushNotificationsApi->push_notifications_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the subscriptions to fetch. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **push_notifications_post**
> push_notifications_post(subscription_url, event, opts)

Create new subscription

Creates new subscription and returns details. This endpoint is deprecated, use <a href=\"#!/Webhooks/post_webhooks\">Create a new webhook</a> endpoint instead.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PushNotificationsApi.new

subscription_url = "" # String | URL where to send the notifications.

event = "" # String | What type of notifications to receive ('\\*.\\*' for all events, 'added.deal' for any newly added deals, 'deleted.persons' for any deleted persons, etc. See https://app.pipedrive.com/push_notifications#dialog:/push_notifications/help for details).

opts = { 
  user_id: 8.14, # Float | ID of the user this push notification will be authorized with. If not set - current authorized user will be used.
  http_auth_user: "", # String | HTTP basic auth username if needed.
  http_auth_password: "" # String | HTTP basic auth password if needed.
}

begin
  #Create new subscription
  api_instance.push_notifications_post(subscription_url, event, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PushNotificationsApi->push_notifications_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_url** | **String**| URL where to send the notifications. | [default to ]
 **event** | **String**| What type of notifications to receive (&#39;\\*.\\*&#39; for all events, &#39;added.deal&#39; for any newly added deals, &#39;deleted.persons&#39; for any deleted persons, etc. See https://app.pipedrive.com/push_notifications#dialog:/push_notifications/help for details). | [default to ]
 **user_id** | **Float**| ID of the user this push notification will be authorized with. If not set - current authorized user will be used. | [optional] 
 **http_auth_user** | **String**| HTTP basic auth username if needed. | [optional] [default to ]
 **http_auth_password** | **String**| HTTP basic auth password if needed. | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



