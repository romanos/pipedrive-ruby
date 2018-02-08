# Pipedrive::MailMessagesApi

All URIs are relative to *https://api.pipedrive.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mailbox_mail_messages_id_get**](MailMessagesApi.md#mailbox_mail_messages_id_get) | **GET** /mailbox/mailMessages/{id} | Get one mail message


# **mailbox_mail_messages_id_get**
> mailbox_mail_messages_id_get(id, opts)

Get one mail message

Returns data about specific mail message.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::MailMessagesApi.new

id = 8.14 # Float | ID of the mail message to fetch.

opts = { 
  include_body: "0" # String | Whether to include full message body or not. 0 = Don't include, 1 = Include
}

begin
  #Get one mail message
  api_instance.mailbox_mail_messages_id_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling MailMessagesApi->mailbox_mail_messages_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the mail message to fetch. | 
 **include_body** | **String**| Whether to include full message body or not. 0 &#x3D; Don&#39;t include, 1 &#x3D; Include | [optional] [default to 0]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



