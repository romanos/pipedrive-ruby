# Pipedrive::OrganizationsApi

All URIs are relative to *https://api.pipedrive.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**organizations_delete**](OrganizationsApi.md#organizations_delete) | **DELETE** /organizations | Delete multiple organizations in bulk
[**organizations_find_get**](OrganizationsApi.md#organizations_find_get) | **GET** /organizations/find | Find organizations by name
[**organizations_get**](OrganizationsApi.md#organizations_get) | **GET** /organizations | Get all organizations
[**organizations_id_activities_get**](OrganizationsApi.md#organizations_id_activities_get) | **GET** /organizations/{id}/activities | List activities associated with an organization
[**organizations_id_deals_get**](OrganizationsApi.md#organizations_id_deals_get) | **GET** /organizations/{id}/deals | List deals associated with an organization
[**organizations_id_delete**](OrganizationsApi.md#organizations_id_delete) | **DELETE** /organizations/{id} | Delete an organization
[**organizations_id_files_get**](OrganizationsApi.md#organizations_id_files_get) | **GET** /organizations/{id}/files | List files attached to an organization
[**organizations_id_flow_get**](OrganizationsApi.md#organizations_id_flow_get) | **GET** /organizations/{id}/flow | List updates about an organization
[**organizations_id_followers_follower_id_delete**](OrganizationsApi.md#organizations_id_followers_follower_id_delete) | **DELETE** /organizations/{id}/followers/{follower_id} | Delete a follower from an organization
[**organizations_id_followers_get**](OrganizationsApi.md#organizations_id_followers_get) | **GET** /organizations/{id}/followers | List followers of an organization
[**organizations_id_followers_post**](OrganizationsApi.md#organizations_id_followers_post) | **POST** /organizations/{id}/followers | Add a follower to an organization
[**organizations_id_get**](OrganizationsApi.md#organizations_id_get) | **GET** /organizations/{id} | Get details of an organization
[**organizations_id_mail_messages_get**](OrganizationsApi.md#organizations_id_mail_messages_get) | **GET** /organizations/{id}/mailMessages | List mail messages associated with an organization
[**organizations_id_merge_put**](OrganizationsApi.md#organizations_id_merge_put) | **PUT** /organizations/{id}/merge | Merge two organizations
[**organizations_id_permitted_users_get**](OrganizationsApi.md#organizations_id_permitted_users_get) | **GET** /organizations/{id}/permittedUsers | List permitted users
[**organizations_id_persons_get**](OrganizationsApi.md#organizations_id_persons_get) | **GET** /organizations/{id}/persons | List persons of an organization
[**organizations_id_put**](OrganizationsApi.md#organizations_id_put) | **PUT** /organizations/{id} | Update an organization
[**organizations_post**](OrganizationsApi.md#organizations_post) | **POST** /organizations | Add an organization


# **organizations_delete**
> organizations_delete(ids)

Delete multiple organizations in bulk

Marks multiple organizations as deleted.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::OrganizationsApi.new

ids = [""] # Array<String> | Comma-separated IDs that will be deleted


begin
  #Delete multiple organizations in bulk
  api_instance.organizations_delete(ids)
rescue Pipedrive::ApiError => e
  puts "Exception when calling OrganizationsApi->organizations_delete: #{e}"
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



# **organizations_find_get**
> organizations_find_get(term, opts)

Find organizations by name

Searches all organizations by their name.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::OrganizationsApi.new

term = "" # String | Search term to look for

opts = { 
  start: 0, # Float | Pagination start
  limit: 8.14 # Float | Items shown per page
}

begin
  #Find organizations by name
  api_instance.organizations_find_get(term, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling OrganizationsApi->organizations_find_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **term** | **String**| Search term to look for | [default to ]
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **organizations_get**
> organizations_get(opts)

Get all organizations

Returns all organizations

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::OrganizationsApi.new

opts = { 
  user_id: 8.14, # Float | If supplied, only organizations owned by the given user will be returned.
  filter_id: 8.14, # Float | ID of the filter to use
  first_char: "", # String | If supplied, only organizations whose name starts with the specified letter will be returned (case insensitive).
  start: 0, # Float | Pagination start
  limit: 8.14, # Float | Items shown per page
  sort: "" # String | Field names and sorting mode separated by comma (field_name_1 ASC, field_name_2 DESC). Only first-level field keys are supported (no nested keys).
}

begin
  #Get all organizations
  api_instance.organizations_get(opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling OrganizationsApi->organizations_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Float**| If supplied, only organizations owned by the given user will be returned. | [optional] 
 **filter_id** | **Float**| ID of the filter to use | [optional] 
 **first_char** | **String**| If supplied, only organizations whose name starts with the specified letter will be returned (case insensitive). | [optional] [default to ]
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



# **organizations_id_activities_get**
> organizations_id_activities_get(id, opts)

List activities associated with an organization

Lists activities associated with an organization.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::OrganizationsApi.new

id = 8.14 # Float | ID of the organization

opts = { 
  start: 0, # Float | Pagination start
  limit: 8.14, # Float | Items shown per page
  done: "", # String | Whether to fetch done (1) or undone (0) activities. If omitted from request, both undone and done activities are fetched.
  exclude: "" # String | A comma-separated string of activity IDs to exclude from result
}

begin
  #List activities associated with an organization
  api_instance.organizations_id_activities_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling OrganizationsApi->organizations_id_activities_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the organization | 
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



# **organizations_id_deals_get**
> organizations_id_deals_get(id, opts)

List deals associated with an organization

Lists deals associated with an organization.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::OrganizationsApi.new

id = 8.14 # Float | ID of an organization

opts = { 
  start: 0, # Float | Pagination start
  limit: 8.14, # Float | Items shown per page
  status: "all_not_deleted", # String | Only fetch deals with specific status. If omitted, all not deleted deals are fetched.
  sort: "", # String | Field names and sorting mode separated by comma (field_name_1 ASC, field_name_2 DESC). Only first-level field keys are supported (no nested keys).
  only_primary_association: "" # String | If set, only deals that are directly associated to the organization are fetched. If not set (default), all deals are fetched that are either directly or indirectly related to the organization. Indirect relations include relations through custom, organization-type fields and through persons of the given organization.
}

begin
  #List deals associated with an organization
  api_instance.organizations_id_deals_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling OrganizationsApi->organizations_id_deals_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of an organization | 
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 
 **status** | **String**| Only fetch deals with specific status. If omitted, all not deleted deals are fetched. | [optional] [default to all_not_deleted]
 **sort** | **String**| Field names and sorting mode separated by comma (field_name_1 ASC, field_name_2 DESC). Only first-level field keys are supported (no nested keys). | [optional] [default to ]
 **only_primary_association** | **String**| If set, only deals that are directly associated to the organization are fetched. If not set (default), all deals are fetched that are either directly or indirectly related to the organization. Indirect relations include relations through custom, organization-type fields and through persons of the given organization. | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **organizations_id_delete**
> organizations_id_delete(id)

Delete an organization

Marks an organization as deleted.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::OrganizationsApi.new

id = 8.14 # Float | ID of the organization


begin
  #Delete an organization
  api_instance.organizations_id_delete(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling OrganizationsApi->organizations_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the organization | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **organizations_id_files_get**
> organizations_id_files_get(id, opts)

List files attached to an organization

Lists files associated with an organization.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::OrganizationsApi.new

id = 8.14 # Float | ID of the organization

opts = { 
  start: 0, # Float | Pagination start
  limit: 8.14, # Float | Items shown per page
  include_deleted_files: "", # String | When enabled, the list of files will also include deleted files. Please note that trying to download these files will not work.
  sort: "" # String | Field names and sorting mode separated by comma (field_name_1 ASC, field_name_2 DESC). Only first-level field keys are supported (no nested keys). Supported fields: id, user_id, deal_id, person_id, org_id, product_id, add_time, update_time, file_name, file_type, file_size, comment.
}

begin
  #List files attached to an organization
  api_instance.organizations_id_files_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling OrganizationsApi->organizations_id_files_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the organization | 
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



# **organizations_id_flow_get**
> organizations_id_flow_get(id, opts)

List updates about an organization

Lists updates about an organization.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::OrganizationsApi.new

id = 8.14 # Float | ID of the organization

opts = { 
  start: 0, # Float | Pagination start
  limit: 8.14 # Float | Items shown per page
}

begin
  #List updates about an organization
  api_instance.organizations_id_flow_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling OrganizationsApi->organizations_id_flow_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the organization | 
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **organizations_id_followers_follower_id_delete**
> organizations_id_followers_follower_id_delete(id, follower_id)

Delete a follower from an organization

Deletes a follower from an organization.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::OrganizationsApi.new

id = 8.14 # Float | ID of the organization

follower_id = 8.14 # Float | ID of the follower


begin
  #Delete a follower from an organization
  api_instance.organizations_id_followers_follower_id_delete(id, follower_id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling OrganizationsApi->organizations_id_followers_follower_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the organization | 
 **follower_id** | **Float**| ID of the follower | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **organizations_id_followers_get**
> organizations_id_followers_get(id)

List followers of an organization

Lists the followers of an organization.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::OrganizationsApi.new

id = 8.14 # Float | ID of the organization


begin
  #List followers of an organization
  api_instance.organizations_id_followers_get(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling OrganizationsApi->organizations_id_followers_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the organization | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **organizations_id_followers_post**
> organizations_id_followers_post(id, user_id)

Add a follower to an organization

Adds a follower to an organization.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::OrganizationsApi.new

id = 8.14 # Float | ID of the organization

user_id = 8.14 # Float | ID of the user


begin
  #Add a follower to an organization
  api_instance.organizations_id_followers_post(id, user_id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling OrganizationsApi->organizations_id_followers_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the organization | 
 **user_id** | **Float**| ID of the user | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **organizations_id_get**
> organizations_id_get(id)

Get details of an organization

Returns details of an organization. Note that this also returns some additional fields which are not present when asking for all organizations. Also note that custom fields appear as long hashes in the resulting data. These hashes can be mapped against the 'key' value of organizationFields.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::OrganizationsApi.new

id = 8.14 # Float | ID of the organization


begin
  #Get details of an organization
  api_instance.organizations_id_get(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling OrganizationsApi->organizations_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the organization | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **organizations_id_mail_messages_get**
> organizations_id_mail_messages_get(id, opts)

List mail messages associated with an organization

Lists mail messages associated with an organization.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::OrganizationsApi.new

id = 8.14 # Float | ID of the organization

opts = { 
  start: 0, # Float | Pagination start
  limit: 8.14 # Float | Items shown per page
}

begin
  #List mail messages associated with an organization
  api_instance.organizations_id_mail_messages_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling OrganizationsApi->organizations_id_mail_messages_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the organization | 
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **organizations_id_merge_put**
> organizations_id_merge_put(id, merge_with_id)

Merge two organizations

Merges an organization with another organization.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::OrganizationsApi.new

id = 8.14 # Float | ID of the organization that will be merged

merge_with_id = 8.14 # Float | ID of the organization that the organization will be merged with


begin
  #Merge two organizations
  api_instance.organizations_id_merge_put(id, merge_with_id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling OrganizationsApi->organizations_id_merge_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the organization that will be merged | 
 **merge_with_id** | **Float**| ID of the organization that the organization will be merged with | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **organizations_id_permitted_users_get**
> organizations_id_permitted_users_get(id, opts)

List permitted users

List users permitted to access an organization

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::OrganizationsApi.new

id = 8.14 # Float | ID of the organization

opts = { 
  access_level: "" # String | If set, filter results by allowed access level. 1 = Read, 2 = Write, 3 = Read+Write
}

begin
  #List permitted users
  api_instance.organizations_id_permitted_users_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling OrganizationsApi->organizations_id_permitted_users_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the organization | 
 **access_level** | **String**| If set, filter results by allowed access level. 1 &#x3D; Read, 2 &#x3D; Write, 3 &#x3D; Read+Write | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **organizations_id_persons_get**
> organizations_id_persons_get(id, opts)

List persons of an organization

Lists persons associated with an organization.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::OrganizationsApi.new

id = 8.14 # Float | ID of the organization

opts = { 
  start: 0, # Float | Pagination start
  limit: 8.14 # Float | Items shown per page
}

begin
  #List persons of an organization
  api_instance.organizations_id_persons_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling OrganizationsApi->organizations_id_persons_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the organization | 
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **organizations_id_put**
> organizations_id_put(id, opts)

Update an organization

Updates the properties of an organization.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::OrganizationsApi.new

id = 8.14 # Float | Organization ID

opts = { 
  name: "", # String | Organization name
  owner_id: 8.14, # Float | ID of the user who will be marked as the owner of this organization. When omitted, the authorized user ID will be used.
  visible_to: "" # String | Visibility of the organization. If omitted, visibility will not be changed.<dl class=\"fields-list\"><dt>1</dt><dd>Owner &amp; followers (private)</dd><dt>3</dt><dd>Entire company (shared)</dd></dl>
}

begin
  #Update an organization
  api_instance.organizations_id_put(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling OrganizationsApi->organizations_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| Organization ID | 
 **name** | **String**| Organization name | [optional] [default to ]
 **owner_id** | **Float**| ID of the user who will be marked as the owner of this organization. When omitted, the authorized user ID will be used. | [optional] 
 **visible_to** | **String**| Visibility of the organization. If omitted, visibility will not be changed.&lt;dl class&#x3D;\&quot;fields-list\&quot;&gt;&lt;dt&gt;1&lt;/dt&gt;&lt;dd&gt;Owner &amp;amp; followers (private)&lt;/dd&gt;&lt;dt&gt;3&lt;/dt&gt;&lt;dd&gt;Entire company (shared)&lt;/dd&gt;&lt;/dl&gt; | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **organizations_post**
> organizations_post(name, opts)

Add an organization

Adds a new organization. Note that you can supply additional custom fields along with the request that are not described here. These custom fields are different for each Pipedrive account and can be recognized by long hashes as keys. To determine which custom fields exists, fetch the organizationFields and look for 'key' values.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::OrganizationsApi.new

name = "" # String | Organization name

opts = { 
  owner_id: 8.14, # Float | ID of the user who will be marked as the owner of this organization. When omitted, the authorized user ID will be used.
  visible_to: "", # String | Visibility of the organization. If omitted, visibility will be set to the default visibility setting of this item type for the authorized user.<dl class=\"fields-list\"><dt>1</dt><dd>Owner &amp; followers (private)</dd><dt>3</dt><dd>Entire company (shared)</dd></dl>
  add_time: "" # String | Optional creation date & time of the organization in UTC. Requires admin user API token. Format: YYYY-MM-DD HH:MM:SS
}

begin
  #Add an organization
  api_instance.organizations_post(name, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling OrganizationsApi->organizations_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Organization name | [default to ]
 **owner_id** | **Float**| ID of the user who will be marked as the owner of this organization. When omitted, the authorized user ID will be used. | [optional] 
 **visible_to** | **String**| Visibility of the organization. If omitted, visibility will be set to the default visibility setting of this item type for the authorized user.&lt;dl class&#x3D;\&quot;fields-list\&quot;&gt;&lt;dt&gt;1&lt;/dt&gt;&lt;dd&gt;Owner &amp;amp; followers (private)&lt;/dd&gt;&lt;dt&gt;3&lt;/dt&gt;&lt;dd&gt;Entire company (shared)&lt;/dd&gt;&lt;/dl&gt; | [optional] [default to ]
 **add_time** | **String**| Optional creation date &amp; time of the organization in UTC. Requires admin user API token. Format: YYYY-MM-DD HH:MM:SS | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



