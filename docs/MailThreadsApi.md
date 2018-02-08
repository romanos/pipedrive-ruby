# Pipedrive::MailThreadsApi

All URIs are relative to *https://api.pipedrive.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mailbox_mail_threads_get**](MailThreadsApi.md#mailbox_mail_threads_get) | **GET** /mailbox/mailThreads | Get mail threads
[**mailbox_mail_threads_id_delete**](MailThreadsApi.md#mailbox_mail_threads_id_delete) | **DELETE** /mailbox/mailThreads/{id} | Delete mail thread
[**mailbox_mail_threads_id_get**](MailThreadsApi.md#mailbox_mail_threads_id_get) | **GET** /mailbox/mailThreads/{id} | Get one mail thread
[**mailbox_mail_threads_id_mail_messages_get**](MailThreadsApi.md#mailbox_mail_threads_id_mail_messages_get) | **GET** /mailbox/mailThreads/{id}/mailMessages | Get all mail messages of mail thread
[**mailbox_mail_threads_id_put**](MailThreadsApi.md#mailbox_mail_threads_id_put) | **PUT** /mailbox/mailThreads/{id} | Update mail thread details


# **mailbox_mail_threads_get**
> mailbox_mail_threads_get(folder, opts)

Get mail threads

Returns mail threads in specified folder ordered by most recent message within.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::MailThreadsApi.new

folder = "inbox" # String | Type of folder to fetch.

opts = { 
  start: 8.14, # Float | Index of the first item. If not set, then equals 0.
  limit: 8.14 # Float | Amount of threads to fetch. If not set, then equals 50.
}

begin
  #Get mail threads
  api_instance.mailbox_mail_threads_get(folder, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling MailThreadsApi->mailbox_mail_threads_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder** | **String**| Type of folder to fetch. | [default to inbox]
 **start** | **Float**| Index of the first item. If not set, then equals 0. | [optional] 
 **limit** | **Float**| Amount of threads to fetch. If not set, then equals 50. | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **mailbox_mail_threads_id_delete**
> mailbox_mail_threads_id_delete(id)

Delete mail thread

Marks mail thread as deleted.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::MailThreadsApi.new

id = 8.14 # Float | ID of the mail thread to delete.


begin
  #Delete mail thread
  api_instance.mailbox_mail_threads_id_delete(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling MailThreadsApi->mailbox_mail_threads_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the mail thread to delete. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **mailbox_mail_threads_id_get**
> mailbox_mail_threads_id_get(id)

Get one mail thread

Returns specific mail thread.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::MailThreadsApi.new

id = 8.14 # Float | ID of the mail thread to fetch.


begin
  #Get one mail thread
  api_instance.mailbox_mail_threads_id_get(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling MailThreadsApi->mailbox_mail_threads_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the mail thread to fetch. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **mailbox_mail_threads_id_mail_messages_get**
> mailbox_mail_threads_id_mail_messages_get(id)

Get all mail messages of mail thread

Get mail messages inside specified mail thread.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::MailThreadsApi.new

id = 8.14 # Float | ID of the mail thread.


begin
  #Get all mail messages of mail thread
  api_instance.mailbox_mail_threads_id_mail_messages_get(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling MailThreadsApi->mailbox_mail_threads_id_mail_messages_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the mail thread. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **mailbox_mail_threads_id_put**
> mailbox_mail_threads_id_put(id, opts)

Update mail thread details

Updates the properties of a mail thread.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::MailThreadsApi.new

id = 8.14 # Float | ID of the mail thread

opts = { 
  deal_id: 8.14, # Float | ID of the deal this thread is associated with
  shared_flag: "", # String | Whether this thread is shared with other users in your company
  read_flag: "", # String | Whether this thread read or unread
  archived_flag: "0" # String | Whether this thread is archived or not. You can only archive threads that belong to Inbox folder. Archived threads will disappear from Inbox.
}

begin
  #Update mail thread details
  api_instance.mailbox_mail_threads_id_put(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling MailThreadsApi->mailbox_mail_threads_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the mail thread | 
 **deal_id** | **Float**| ID of the deal this thread is associated with | [optional] 
 **shared_flag** | **String**| Whether this thread is shared with other users in your company | [optional] [default to ]
 **read_flag** | **String**| Whether this thread read or unread | [optional] [default to ]
 **archived_flag** | **String**| Whether this thread is archived or not. You can only archive threads that belong to Inbox folder. Archived threads will disappear from Inbox. | [optional] [default to 0]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



