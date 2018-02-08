# Pipedrive::PersonsApi

All URIs are relative to *https://api.pipedrive.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**persons_delete**](PersonsApi.md#persons_delete) | **DELETE** /persons | Delete multiple persons in bulk
[**persons_find_get**](PersonsApi.md#persons_find_get) | **GET** /persons/find | Find persons by name
[**persons_get**](PersonsApi.md#persons_get) | **GET** /persons | Get all persons
[**persons_id_activities_get**](PersonsApi.md#persons_id_activities_get) | **GET** /persons/{id}/activities | List activities associated with a person
[**persons_id_deals_get**](PersonsApi.md#persons_id_deals_get) | **GET** /persons/{id}/deals | List deals associated with a person
[**persons_id_delete**](PersonsApi.md#persons_id_delete) | **DELETE** /persons/{id} | Delete a person
[**persons_id_files_get**](PersonsApi.md#persons_id_files_get) | **GET** /persons/{id}/files | List files attached to a person
[**persons_id_flow_get**](PersonsApi.md#persons_id_flow_get) | **GET** /persons/{id}/flow | List updates about a person
[**persons_id_followers_follower_id_delete**](PersonsApi.md#persons_id_followers_follower_id_delete) | **DELETE** /persons/{id}/followers/{follower_id} | Delete a follower from a person
[**persons_id_followers_get**](PersonsApi.md#persons_id_followers_get) | **GET** /persons/{id}/followers | List followers of a person
[**persons_id_followers_post**](PersonsApi.md#persons_id_followers_post) | **POST** /persons/{id}/followers | Add a follower to a person
[**persons_id_get**](PersonsApi.md#persons_id_get) | **GET** /persons/{id} | Get details of a person
[**persons_id_mail_messages_get**](PersonsApi.md#persons_id_mail_messages_get) | **GET** /persons/{id}/mailMessages | List mail messages associated with a person
[**persons_id_merge_put**](PersonsApi.md#persons_id_merge_put) | **PUT** /persons/{id}/merge | Merge two persons
[**persons_id_permitted_users_get**](PersonsApi.md#persons_id_permitted_users_get) | **GET** /persons/{id}/permittedUsers | List permitted users
[**persons_id_picture_delete**](PersonsApi.md#persons_id_picture_delete) | **DELETE** /persons/{id}/picture | Delete person picture
[**persons_id_picture_post**](PersonsApi.md#persons_id_picture_post) | **POST** /persons/{id}/picture | Add person picture
[**persons_id_products_get**](PersonsApi.md#persons_id_products_get) | **GET** /persons/{id}/products | List products associated with a person
[**persons_id_put**](PersonsApi.md#persons_id_put) | **PUT** /persons/{id} | Update a person
[**persons_post**](PersonsApi.md#persons_post) | **POST** /persons | Add a person


# **persons_delete**
> persons_delete(ids)

Delete multiple persons in bulk

Marks multiple persons as deleted.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PersonsApi.new

ids = [""] # Array<String> | Comma-separated IDs that will be deleted


begin
  #Delete multiple persons in bulk
  api_instance.persons_delete(ids)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PersonsApi->persons_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | [**Array&lt;String&gt;**](String.md)| Comma-separated IDs that will be deleted | [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **persons_find_get**
> persons_find_get(term, opts)

Find persons by name

Searches all persons by their name.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PersonsApi.new

term = "" # String | Search term to look for

opts = { 
  org_id: 8.14, # Float | ID of the organization person is associated with.
  start: 0, # Float | Pagination start
  limit: 8.14, # Float | Items shown per page
  search_by_email: "" # String | When enabled, term will only be matched against email addresses of people. Default: false
}

begin
  #Find persons by name
  api_instance.persons_find_get(term, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PersonsApi->persons_find_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **term** | **String**| Search term to look for | [default to ]
 **org_id** | **Float**| ID of the organization person is associated with. | [optional] 
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 
 **search_by_email** | **String**| When enabled, term will only be matched against email addresses of people. Default: false | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **persons_get**
> persons_get(opts)

Get all persons

Returns all persons

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PersonsApi.new

opts = { 
  user_id: 8.14, # Float | If supplied, only persons owned by the given user will be returned.
  filter_id: 8.14, # Float | ID of the filter to use
  first_char: "", # String | If supplied, only persons whose name starts with the specified letter will be returned (case insensitive).
  start: 0, # Float | Pagination start
  limit: 8.14, # Float | Items shown per page
  sort: "" # String | Field names and sorting mode separated by comma (field_name_1 ASC, field_name_2 DESC). Only first-level field keys are supported (no nested keys).
}

begin
  #Get all persons
  api_instance.persons_get(opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PersonsApi->persons_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Float**| If supplied, only persons owned by the given user will be returned. | [optional] 
 **filter_id** | **Float**| ID of the filter to use | [optional] 
 **first_char** | **String**| If supplied, only persons whose name starts with the specified letter will be returned (case insensitive). | [optional] [default to ]
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 
 **sort** | **String**| Field names and sorting mode separated by comma (field_name_1 ASC, field_name_2 DESC). Only first-level field keys are supported (no nested keys). | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **persons_id_activities_get**
> persons_id_activities_get(id, opts)

List activities associated with a person

Lists activities associated with a person.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PersonsApi.new

id = 8.14 # Float | ID of the person

opts = { 
  start: 0, # Float | Pagination start
  limit: 8.14, # Float | Items shown per page
  done: "", # String | Whether to fetch done (1) or undone (0) activities. If omitted from request, both undone and done activities are fetched.
  exclude: "" # String | A comma-separated string of activity IDs to exclude from result
}

begin
  #List activities associated with a person
  api_instance.persons_id_activities_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PersonsApi->persons_id_activities_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the person | 
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 
 **done** | **String**| Whether to fetch done (1) or undone (0) activities. If omitted from request, both undone and done activities are fetched. | [optional] [default to ]
 **exclude** | **String**| A comma-separated string of activity IDs to exclude from result | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **persons_id_deals_get**
> persons_id_deals_get(id, opts)

List deals associated with a person

Lists deals associated with a person.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PersonsApi.new

id = 8.14 # Float | ID of a person

opts = { 
  start: 0, # Float | Pagination start
  limit: 8.14, # Float | Items shown per page
  status: "all_not_deleted", # String | Only fetch deals with specific status. If omitted, all not deleted deals are fetched.
  sort: "" # String | Field names and sorting mode separated by comma (field_name_1 ASC, field_name_2 DESC). Only first-level field keys are supported (no nested keys).
}

begin
  #List deals associated with a person
  api_instance.persons_id_deals_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PersonsApi->persons_id_deals_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of a person | 
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 
 **status** | **String**| Only fetch deals with specific status. If omitted, all not deleted deals are fetched. | [optional] [default to all_not_deleted]
 **sort** | **String**| Field names and sorting mode separated by comma (field_name_1 ASC, field_name_2 DESC). Only first-level field keys are supported (no nested keys). | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **persons_id_delete**
> persons_id_delete(id)

Delete a person

Marks a person as deleted.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PersonsApi.new

id = 8.14 # Float | ID of the person


begin
  #Delete a person
  api_instance.persons_id_delete(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PersonsApi->persons_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the person | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **persons_id_files_get**
> persons_id_files_get(id, opts)

List files attached to a person

Lists files associated with a person.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PersonsApi.new

id = 8.14 # Float | ID of the person

opts = { 
  start: 0, # Float | Pagination start
  limit: 8.14, # Float | Items shown per page
  include_deleted_files: "", # String | When enabled, the list of files will also include deleted files. Please note that trying to download these files will not work.
  sort: "" # String | Field names and sorting mode separated by comma (field_name_1 ASC, field_name_2 DESC). Only first-level field keys are supported (no nested keys). Supported fields: id, user_id, deal_id, person_id, org_id, product_id, add_time, update_time, file_name, file_type, file_size, comment.
}

begin
  #List files attached to a person
  api_instance.persons_id_files_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PersonsApi->persons_id_files_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the person | 
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



# **persons_id_flow_get**
> persons_id_flow_get(id, opts)

List updates about a person

Lists updates about a person.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PersonsApi.new

id = 8.14 # Float | ID of the person

opts = { 
  start: 0, # Float | Pagination start
  limit: 8.14 # Float | Items shown per page
}

begin
  #List updates about a person
  api_instance.persons_id_flow_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PersonsApi->persons_id_flow_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the person | 
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **persons_id_followers_follower_id_delete**
> persons_id_followers_follower_id_delete(id, follower_id)

Delete a follower from a person

Deletes a follower from a person.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PersonsApi.new

id = 8.14 # Float | ID of the person

follower_id = 8.14 # Float | ID of the follower


begin
  #Delete a follower from a person
  api_instance.persons_id_followers_follower_id_delete(id, follower_id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PersonsApi->persons_id_followers_follower_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the person | 
 **follower_id** | **Float**| ID of the follower | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **persons_id_followers_get**
> persons_id_followers_get(id)

List followers of a person

Lists the followers of a person.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PersonsApi.new

id = 8.14 # Float | ID of the person


begin
  #List followers of a person
  api_instance.persons_id_followers_get(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PersonsApi->persons_id_followers_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the person | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **persons_id_followers_post**
> persons_id_followers_post(id, user_id)

Add a follower to a person

Adds a follower to a person.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PersonsApi.new

id = 8.14 # Float | ID of the person

user_id = 8.14 # Float | ID of the user


begin
  #Add a follower to a person
  api_instance.persons_id_followers_post(id, user_id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PersonsApi->persons_id_followers_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the person | 
 **user_id** | **Float**| ID of the user | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **persons_id_get**
> persons_id_get(id)

Get details of a person

Returns details of a person. Note that this also returns some additional fields which are not present when asking for all persons. Also note that custom fields appear as long hashes in the resulting data. These hashes can be mapped against the 'key' value of personFields.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PersonsApi.new

id = 8.14 # Float | ID of the person


begin
  #Get details of a person
  api_instance.persons_id_get(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PersonsApi->persons_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the person | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **persons_id_mail_messages_get**
> persons_id_mail_messages_get(id, opts)

List mail messages associated with a person

Lists mail messages associated with a person.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PersonsApi.new

id = 8.14 # Float | ID of the person

opts = { 
  start: 0, # Float | Pagination start
  limit: 8.14 # Float | Items shown per page
}

begin
  #List mail messages associated with a person
  api_instance.persons_id_mail_messages_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PersonsApi->persons_id_mail_messages_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the person | 
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **persons_id_merge_put**
> persons_id_merge_put(id, merge_with_id)

Merge two persons

Merges a person with another person.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PersonsApi.new

id = 8.14 # Float | ID of the person that will be merged

merge_with_id = 8.14 # Float | ID of the person that the person will be merged with


begin
  #Merge two persons
  api_instance.persons_id_merge_put(id, merge_with_id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PersonsApi->persons_id_merge_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the person that will be merged | 
 **merge_with_id** | **Float**| ID of the person that the person will be merged with | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **persons_id_permitted_users_get**
> persons_id_permitted_users_get(id, opts)

List permitted users

List users permitted to access a person

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PersonsApi.new

id = 8.14 # Float | ID of the person

opts = { 
  access_level: "" # String | If set, filter results by allowed access level. 1 = Read, 2 = Write, 3 = Read+Write
}

begin
  #List permitted users
  api_instance.persons_id_permitted_users_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PersonsApi->persons_id_permitted_users_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the person | 
 **access_level** | **String**| If set, filter results by allowed access level. 1 &#x3D; Read, 2 &#x3D; Write, 3 &#x3D; Read+Write | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **persons_id_picture_delete**
> persons_id_picture_delete(id)

Delete person picture

Delete person picture

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PersonsApi.new

id = 8.14 # Float | ID of the person


begin
  #Delete person picture
  api_instance.persons_id_picture_delete(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PersonsApi->persons_id_picture_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the person | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **persons_id_picture_post**
> persons_id_picture_post(id, file, opts)

Add person picture

Add a picture to a person. If a picture is already set, the old picture will be replaced. Added image (or the cropping parameters supplied with the request) should have an equal width and height and should be at least 128 pixels. GIF, JPG and PNG are accepted. All added images will be resized to 128 and 512 pixel wide squares.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PersonsApi.new

id = 8.14 # Float | ID of the person

file = File.new("") # File | One image supplied in the multipart/form-data encoding.

opts = { 
  crop_x: 8.14, # Float | X coordinate to where start cropping form (in pixels)
  crop_y: 8.14, # Float | Y coordinate to where start cropping form (in pixels)
  crop_width: 8.14, # Float | Width of cropping area (in pixels)
  crop_height: 8.14 # Float | Height of cropping area (in pixels)
}

begin
  #Add person picture
  api_instance.persons_id_picture_post(id, file, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PersonsApi->persons_id_picture_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the person | 
 **file** | **File**| One image supplied in the multipart/form-data encoding. | [default to ]
 **crop_x** | **Float**| X coordinate to where start cropping form (in pixels) | [optional] 
 **crop_y** | **Float**| Y coordinate to where start cropping form (in pixels) | [optional] 
 **crop_width** | **Float**| Width of cropping area (in pixels) | [optional] 
 **crop_height** | **Float**| Height of cropping area (in pixels) | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **persons_id_products_get**
> persons_id_products_get(id, opts)

List products associated with a person

Lists products associated with a person.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PersonsApi.new

id = 8.14 # Float | ID of the person

opts = { 
  start: 0, # Float | Pagination start
  limit: 8.14 # Float | Items shown per page
}

begin
  #List products associated with a person
  api_instance.persons_id_products_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PersonsApi->persons_id_products_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the person | 
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **persons_id_put**
> persons_id_put(id, opts)

Update a person

Updates the properties of a person.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PersonsApi.new

id = 8.14 # Float | Person ID

opts = { 
  name: "", # String | Person name
  owner_id: 8.14, # Float | ID of the user who will be marked as the owner of this person. When omitted, the authorized user ID will be used.
  org_id: 8.14, # Float | ID of the organization this person will belong to.
  email: [""], # Array<String> | Email addresses (one or more) associated with the person, presented in the same manner as received by GET request of a person.
  phone: [""], # Array<String> | Phone numbers (one or more) associated with the person, presented in the same manner as received by GET request of a person.
  visible_to: "" # String | Visibility of the person. If omitted, visibility will not be changed.<dl class=\"fields-list\"><dt>1</dt><dd>Owner &amp; followers (private)</dd><dt>3</dt><dd>Entire company (shared)</dd></dl>
}

begin
  #Update a person
  api_instance.persons_id_put(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PersonsApi->persons_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| Person ID | 
 **name** | **String**| Person name | [optional] [default to ]
 **owner_id** | **Float**| ID of the user who will be marked as the owner of this person. When omitted, the authorized user ID will be used. | [optional] 
 **org_id** | **Float**| ID of the organization this person will belong to. | [optional] 
 **email** | [**Array&lt;String&gt;**](String.md)| Email addresses (one or more) associated with the person, presented in the same manner as received by GET request of a person. | [optional] [default to ]
 **phone** | [**Array&lt;String&gt;**](String.md)| Phone numbers (one or more) associated with the person, presented in the same manner as received by GET request of a person. | [optional] [default to ]
 **visible_to** | **String**| Visibility of the person. If omitted, visibility will not be changed.&lt;dl class&#x3D;\&quot;fields-list\&quot;&gt;&lt;dt&gt;1&lt;/dt&gt;&lt;dd&gt;Owner &amp;amp; followers (private)&lt;/dd&gt;&lt;dt&gt;3&lt;/dt&gt;&lt;dd&gt;Entire company (shared)&lt;/dd&gt;&lt;/dl&gt; | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **persons_post**
> persons_post(name, opts)

Add a person

Adds a new person. Note that you can supply additional custom fields along with the request that are not described here. These custom fields are different for each Pipedrive account and can be recognized by long hashes as keys. To determine which custom fields exists, fetch the personFields and look for 'key' values.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PersonsApi.new

name = "" # String | Person name

opts = { 
  owner_id: 8.14, # Float | ID of the user who will be marked as the owner of this person. When omitted, the authorized user ID will be used.
  org_id: 8.14, # Float | ID of the organization this person will belong to.
  email: [""], # Array<String> | Email addresses (one or more) associated with the person, presented in the same manner as received by GET request of a person.
  phone: [""], # Array<String> | Phone numbers (one or more) associated with the person, presented in the same manner as received by GET request of a person.
  visible_to: "", # String | Visibility of the person. If omitted, visibility will be set to the default visibility setting of this item type for the authorized user.<dl class=\"fields-list\"><dt>1</dt><dd>Owner &amp; followers (private)</dd><dt>3</dt><dd>Entire company (shared)</dd></dl>
  add_time: "" # String | Optional creation date & time of the person in UTC. Requires admin user API token. Format: YYYY-MM-DD HH:MM:SS
}

begin
  #Add a person
  api_instance.persons_post(name, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PersonsApi->persons_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Person name | [default to ]
 **owner_id** | **Float**| ID of the user who will be marked as the owner of this person. When omitted, the authorized user ID will be used. | [optional] 
 **org_id** | **Float**| ID of the organization this person will belong to. | [optional] 
 **email** | [**Array&lt;String&gt;**](String.md)| Email addresses (one or more) associated with the person, presented in the same manner as received by GET request of a person. | [optional] [default to ]
 **phone** | [**Array&lt;String&gt;**](String.md)| Phone numbers (one or more) associated with the person, presented in the same manner as received by GET request of a person. | [optional] [default to ]
 **visible_to** | **String**| Visibility of the person. If omitted, visibility will be set to the default visibility setting of this item type for the authorized user.&lt;dl class&#x3D;\&quot;fields-list\&quot;&gt;&lt;dt&gt;1&lt;/dt&gt;&lt;dd&gt;Owner &amp;amp; followers (private)&lt;/dd&gt;&lt;dt&gt;3&lt;/dt&gt;&lt;dd&gt;Entire company (shared)&lt;/dd&gt;&lt;/dl&gt; | [optional] [default to ]
 **add_time** | **String**| Optional creation date &amp; time of the person in UTC. Requires admin user API token. Format: YYYY-MM-DD HH:MM:SS | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



