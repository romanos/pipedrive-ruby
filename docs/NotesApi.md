# Pipedrive::NotesApi

All URIs are relative to *https://api.pipedrive.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**notes_get**](NotesApi.md#notes_get) | **GET** /notes | Get all notes
[**notes_id_delete**](NotesApi.md#notes_id_delete) | **DELETE** /notes/{id} | Delete a note
[**notes_id_get**](NotesApi.md#notes_id_get) | **GET** /notes/{id} | Get one note
[**notes_id_put**](NotesApi.md#notes_id_put) | **PUT** /notes/{id} | Update a note
[**notes_post**](NotesApi.md#notes_post) | **POST** /notes | Add a note


# **notes_get**
> notes_get(opts)

Get all notes

Returns all notes

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::NotesApi.new

opts = { 
  user_id: 8.14, # Float | ID of the user who's notes to fetch. If omitted, notes by all users will be returned.
  deal_id: 8.14, # Float | ID of the deal whih notes to fetch. If omitted, notes about all deals with be returned.
  person_id: 8.14, # Float | ID of the person whih notes to fetch. If omitted, notes about all persons with be returned.
  org_id: 8.14, # Float | ID of the organization whih notes to fetch. If omitted, notes about all organizations with be returned.
  start: 0, # Float | Pagination start
  limit: 8.14, # Float | Items shown per page
  sort: "", # String | Field names and sorting mode separated by comma (field_name_1 ASC, field_name_2 DESC). Only first-level field keys are supported (no nested keys). Supported fields: id, user_id, deal_id, person_id, org_id, content, add_time, update_time.
  start_date: "", # String | Date in format of YYYY-MM-DD from which notes to fetch from.
  end_date: "", # String | Date in format of YYYY-MM-DD until which notes to fetch to.
  pinned_to_deal_flag: "", # String | If set, then results are filtered by note to deal pinning state.
  pinned_to_organization_flag: "", # String | If set, then results are filtered by note to organization pinning state.
  pinned_to_person_flag: "" # String | If set, then results are filtered by note to person pinning state.
}

begin
  #Get all notes
  api_instance.notes_get(opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling NotesApi->notes_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Float**| ID of the user who&#39;s notes to fetch. If omitted, notes by all users will be returned. | [optional] 
 **deal_id** | **Float**| ID of the deal whih notes to fetch. If omitted, notes about all deals with be returned. | [optional] 
 **person_id** | **Float**| ID of the person whih notes to fetch. If omitted, notes about all persons with be returned. | [optional] 
 **org_id** | **Float**| ID of the organization whih notes to fetch. If omitted, notes about all organizations with be returned. | [optional] 
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 
 **sort** | **String**| Field names and sorting mode separated by comma (field_name_1 ASC, field_name_2 DESC). Only first-level field keys are supported (no nested keys). Supported fields: id, user_id, deal_id, person_id, org_id, content, add_time, update_time. | [optional] [default to ]
 **start_date** | **String**| Date in format of YYYY-MM-DD from which notes to fetch from. | [optional] [default to ]
 **end_date** | **String**| Date in format of YYYY-MM-DD until which notes to fetch to. | [optional] [default to ]
 **pinned_to_deal_flag** | **String**| If set, then results are filtered by note to deal pinning state. | [optional] [default to ]
 **pinned_to_organization_flag** | **String**| If set, then results are filtered by note to organization pinning state. | [optional] [default to ]
 **pinned_to_person_flag** | **String**| If set, then results are filtered by note to person pinning state. | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **notes_id_delete**
> notes_id_delete(id)

Delete a note

Deletes a specific note.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::NotesApi.new

id = 8.14 # Float | ID of the note


begin
  #Delete a note
  api_instance.notes_id_delete(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling NotesApi->notes_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the note | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **notes_id_get**
> notes_id_get(id)

Get one note

Returns details about a specific note.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::NotesApi.new

id = 8.14 # Float | ID of the note


begin
  #Get one note
  api_instance.notes_id_get(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling NotesApi->notes_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the note | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **notes_id_put**
> notes_id_put(id, content, opts)

Update a note

Updates a note

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::NotesApi.new

id = 8.14 # Float | ID of the note

content = "" # String | Content of the note in HTML format. Subject to sanitization on the back-end.

opts = { 
  deal_id: 8.14, # Float | ID of the deal the note will be attached to.
  person_id: 8.14, # Float | ID of the person this note will be attached to
  org_id: 8.14, # Float | ID of the organization this note will be attached to
  pinned_to_deal_flag: "", # String | If set, then results are filtered by note to deal pinning state.
  pinned_to_organization_flag: "", # String | If set, then results are filtered by note to organization pinning state.
  pinned_to_person_flag: "" # String | If set, then results are filtered by note to person pinning state.
}

begin
  #Update a note
  api_instance.notes_id_put(id, content, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling NotesApi->notes_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the note | 
 **content** | **String**| Content of the note in HTML format. Subject to sanitization on the back-end. | [default to ]
 **deal_id** | **Float**| ID of the deal the note will be attached to. | [optional] 
 **person_id** | **Float**| ID of the person this note will be attached to | [optional] 
 **org_id** | **Float**| ID of the organization this note will be attached to | [optional] 
 **pinned_to_deal_flag** | **String**| If set, then results are filtered by note to deal pinning state. | [optional] [default to ]
 **pinned_to_organization_flag** | **String**| If set, then results are filtered by note to organization pinning state. | [optional] [default to ]
 **pinned_to_person_flag** | **String**| If set, then results are filtered by note to person pinning state. | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **notes_post**
> notes_post(content, opts)

Add a note

Adds a new note

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::NotesApi.new

content = "" # String | Content of the note in HTML format. Subject to sanitization on the back-end.

opts = { 
  deal_id: 8.14, # Float | ID of the deal the note will be attached to.
  person_id: 8.14, # Float | ID of the person this note will be attached to
  org_id: 8.14, # Float | ID of the organization this note will be attached to
  pinned_to_deal_flag: "", # String | If set, then results are filtered by note to deal pinning state (deal_id is also required).
  pinned_to_organization_flag: "", # String | If set, then results are filtered by note to organization pinning state (org_id is also required).
  pinned_to_person_flag: "" # String | If set, then results are filtered by note to person pinning state (person_id is also required).
}

begin
  #Add a note
  api_instance.notes_post(content, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling NotesApi->notes_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content** | **String**| Content of the note in HTML format. Subject to sanitization on the back-end. | [default to ]
 **deal_id** | **Float**| ID of the deal the note will be attached to. | [optional] 
 **person_id** | **Float**| ID of the person this note will be attached to | [optional] 
 **org_id** | **Float**| ID of the organization this note will be attached to | [optional] 
 **pinned_to_deal_flag** | **String**| If set, then results are filtered by note to deal pinning state (deal_id is also required). | [optional] [default to ]
 **pinned_to_organization_flag** | **String**| If set, then results are filtered by note to organization pinning state (org_id is also required). | [optional] [default to ]
 **pinned_to_person_flag** | **String**| If set, then results are filtered by note to person pinning state (person_id is also required). | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



