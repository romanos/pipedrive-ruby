# Pipedrive::FilesApi

All URIs are relative to *https://api.pipedrive.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**files_get**](FilesApi.md#files_get) | **GET** /files | Get all files
[**files_id_delete**](FilesApi.md#files_id_delete) | **DELETE** /files/{id} | Delete a file
[**files_id_download_get**](FilesApi.md#files_id_download_get) | **GET** /files/{id}/download | Download one file
[**files_id_get**](FilesApi.md#files_id_get) | **GET** /files/{id} | Get one file
[**files_id_put**](FilesApi.md#files_id_put) | **PUT** /files/{id} | Update file details
[**files_post**](FilesApi.md#files_post) | **POST** /files | Add file
[**files_remote_link_post**](FilesApi.md#files_remote_link_post) | **POST** /files/remoteLink | Link a remote file to an item
[**files_remote_post**](FilesApi.md#files_remote_post) | **POST** /files/remote | Create a remote file and link it to an item


# **files_get**
> files_get(opts)

Get all files

Returns data about all files.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::FilesApi.new

opts = { 
  start: 0, # Float | Pagination start
  limit: 8.14, # Float | Items shown per page
  include_deleted_files: "", # String | When enabled, the list of files will also include deleted files. Please note that trying to download these files will not work.
  sort: "" # String | Field names and sorting mode separated by comma (field_name_1 ASC, field_name_2 DESC). Only first-level field keys are supported (no nested keys). Supported fields: id, user_id, deal_id, person_id, org_id, product_id, add_time, update_time, file_name, file_type, file_size, comment.
}

begin
  #Get all files
  api_instance.files_get(opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling FilesApi->files_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 
 **include_deleted_files** | **String**| When enabled, the list of files will also include deleted files. Please note that trying to download these files will not work. | [optional] [default to ]
 **sort** | **String**| Field names and sorting mode separated by comma (field_name_1 ASC, field_name_2 DESC). Only first-level field keys are supported (no nested keys). Supported fields: id, user_id, deal_id, person_id, org_id, product_id, add_time, update_time, file_name, file_type, file_size, comment. | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **files_id_delete**
> files_id_delete(id)

Delete a file

Marks a file as deleted.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::FilesApi.new

id = 8.14 # Float | ID of the file to delete.


begin
  #Delete a file
  api_instance.files_id_delete(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling FilesApi->files_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the file to delete. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **files_id_download_get**
> files_id_download_get(id)

Download one file

Initializes a file download.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::FilesApi.new

id = 8.14 # Float | ID of the file to download.


begin
  #Download one file
  api_instance.files_id_download_get(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling FilesApi->files_id_download_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the file to download. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **files_id_get**
> files_id_get(id)

Get one file

Returns data about a specific file.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::FilesApi.new

id = 8.14 # Float | ID of the file to fetch.


begin
  #Get one file
  api_instance.files_id_get(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling FilesApi->files_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the file to fetch. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **files_id_put**
> files_id_put(id, opts)

Update file details

Updates the properties of a file.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::FilesApi.new

id = 8.14 # Float | ID of the file

opts = { 
  name: "", # String | Visible name of the file
  description: "" # String | Description of the file
}

begin
  #Update file details
  api_instance.files_id_put(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling FilesApi->files_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the file | 
 **name** | **String**| Visible name of the file | [optional] [default to ]
 **description** | **String**| Description of the file | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **files_post**
> files_post(file, opts)

Add file

Lets you upload a file, and associate it with a Deal, a Person, an Organization, an Activity or a Product.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::FilesApi.new

file = File.new("") # File | One or more files, supplied in the multipart/form-data encoding and contained within the given boundaries.

opts = { 
  deal_id: 8.14, # Float | ID of the deal to associate file(s) with.
  person_id: 8.14, # Float | ID of the person to associate file(s) with.
  org_id: 8.14, # Float | ID of the organization to associate file(s) with.
  product_id: 8.14, # Float | ID of the product to associate file(s) with.
  activity_id: 8.14, # Float | ID of the activity to associate file(s) with.
  note_id: 8.14 # Float | ID of the note to associate file(s) with.
}

begin
  #Add file
  api_instance.files_post(file, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling FilesApi->files_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**| One or more files, supplied in the multipart/form-data encoding and contained within the given boundaries. | [default to ]
 **deal_id** | **Float**| ID of the deal to associate file(s) with. | [optional] 
 **person_id** | **Float**| ID of the person to associate file(s) with. | [optional] 
 **org_id** | **Float**| ID of the organization to associate file(s) with. | [optional] 
 **product_id** | **Float**| ID of the product to associate file(s) with. | [optional] 
 **activity_id** | **Float**| ID of the activity to associate file(s) with. | [optional] 
 **note_id** | **Float**| ID of the note to associate file(s) with. | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **files_remote_link_post**
> files_remote_link_post(item_type, item_id, remote_id, remote_location)

Link a remote file to an item

Links an existing remote file (googledrive, etc) to the item you supply.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::FilesApi.new

item_type = "" # String | The item type.

item_id = 8.14 # Float | ID of the item to associate the file with.

remote_id = "" # String | The remote item id.

remote_location = "" # String | The location type to send the file to. Only googledrive is supported at the moment.


begin
  #Link a remote file to an item
  api_instance.files_remote_link_post(item_type, item_id, remote_id, remote_location)
rescue Pipedrive::ApiError => e
  puts "Exception when calling FilesApi->files_remote_link_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item_type** | **String**| The item type. | [default to ]
 **item_id** | **Float**| ID of the item to associate the file with. | 
 **remote_id** | **String**| The remote item id. | [default to ]
 **remote_location** | **String**| The location type to send the file to. Only googledrive is supported at the moment. | [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **files_remote_post**
> files_remote_post(file_type, title, item_type, item_id, remote_location)

Create a remote file and link it to an item

Creates a new empty file in the remote location (googledrive, etc) that will be linked to the item you supply.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::FilesApi.new

file_type = "" # String | The file type.

title = "" # String | The title of the file.

item_type = "" # String | The item type.

item_id = 8.14 # Float | ID of the item to associate the file with.

remote_location = "" # String | The location type to send the file to. Only googledrive is supported at the moment.


begin
  #Create a remote file and link it to an item
  api_instance.files_remote_post(file_type, title, item_type, item_id, remote_location)
rescue Pipedrive::ApiError => e
  puts "Exception when calling FilesApi->files_remote_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_type** | **String**| The file type. | [default to ]
 **title** | **String**| The title of the file. | [default to ]
 **item_type** | **String**| The item type. | [default to ]
 **item_id** | **Float**| ID of the item to associate the file with. | 
 **remote_location** | **String**| The location type to send the file to. Only googledrive is supported at the moment. | [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



