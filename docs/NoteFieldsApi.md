# Pipedrive::NoteFieldsApi

All URIs are relative to *https://api.pipedrive.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**note_fields_get**](NoteFieldsApi.md#note_fields_get) | **GET** /noteFields | Get all fields for a note


# **note_fields_get**
> note_fields_get

Get all fields for a note

Return list of all fields for note

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::NoteFieldsApi.new

begin
  #Get all fields for a note
  api_instance.note_fields_get
rescue Pipedrive::ApiError => e
  puts "Exception when calling NoteFieldsApi->note_fields_get: #{e}"
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



