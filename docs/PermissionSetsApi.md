# Pipedrive::PermissionSetsApi

All URIs are relative to *https://api.pipedrive.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**permission_sets_get**](PermissionSetsApi.md#permission_sets_get) | **GET** /permissionSets | Get all permission sets
[**permission_sets_id_assignments_delete**](PermissionSetsApi.md#permission_sets_id_assignments_delete) | **DELETE** /permissionSets/{id}/assignments | Delete a permission set assignment
[**permission_sets_id_assignments_get**](PermissionSetsApi.md#permission_sets_id_assignments_get) | **GET** /permissionSets/{id}/assignments | List permission set assignments
[**permission_sets_id_assignments_post**](PermissionSetsApi.md#permission_sets_id_assignments_post) | **POST** /permissionSets/{id}/assignments | Add permission set assignment
[**permission_sets_id_get**](PermissionSetsApi.md#permission_sets_id_get) | **GET** /permissionSets/{id} | Get one permission set
[**permission_sets_id_put**](PermissionSetsApi.md#permission_sets_id_put) | **PUT** /permissionSets/{id} | Update permission set details


# **permission_sets_get**
> permission_sets_get

Get all permission sets



### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PermissionSetsApi.new

begin
  #Get all permission sets
  api_instance.permission_sets_get
rescue Pipedrive::ApiError => e
  puts "Exception when calling PermissionSetsApi->permission_sets_get: #{e}"
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



# **permission_sets_id_assignments_delete**
> permission_sets_id_assignments_delete(id, user_id)

Delete a permission set assignment

Delete assignment from a permission set

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PermissionSetsApi.new

id = 8.14 # Float | ID of the permission set

user_id = 8.14 # Float | ID of the user


begin
  #Delete a permission set assignment
  api_instance.permission_sets_id_assignments_delete(id, user_id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PermissionSetsApi->permission_sets_id_assignments_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the permission set | 
 **user_id** | **Float**| ID of the user | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **permission_sets_id_assignments_get**
> permission_sets_id_assignments_get(id, opts)

List permission set assignments

List assignments for a permission set

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PermissionSetsApi.new

id = 8.14 # Float | ID of the permission set

opts = { 
  start: 0, # Float | Pagination start
  limit: 8.14 # Float | Items shown per page
}

begin
  #List permission set assignments
  api_instance.permission_sets_id_assignments_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PermissionSetsApi->permission_sets_id_assignments_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the permission set | 
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **permission_sets_id_assignments_post**
> permission_sets_id_assignments_post(id, user_id)

Add permission set assignment

Add assignment for a permission set

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PermissionSetsApi.new

id = 8.14 # Float | ID of the permission set

user_id = 8.14 # Float | ID of the user


begin
  #Add permission set assignment
  api_instance.permission_sets_id_assignments_post(id, user_id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PermissionSetsApi->permission_sets_id_assignments_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the permission set | 
 **user_id** | **Float**| ID of the user | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **permission_sets_id_get**
> permission_sets_id_get(id)

Get one permission set



### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PermissionSetsApi.new

id = 8.14 # Float | ID of the permission set


begin
  #Get one permission set
  api_instance.permission_sets_id_get(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PermissionSetsApi->permission_sets_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the permission set | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **permission_sets_id_put**
> permission_sets_id_put(id, contents)

Update permission set details



### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PermissionSetsApi.new

id = 8.14 # Float | ID of the permission set

contents = Pipedrive::null.new #  | Permissions that this set contains as JSON or ordinary comma separated string. Possible permission names are: can_change_visibility_of_items, can_see_company_wide_statistics, can_delete_deals, can_see_deals_list_summary, can_export_data_from_lists, can_see_other_users_statistics


begin
  #Update permission set details
  api_instance.permission_sets_id_put(id, contents)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PermissionSetsApi->permission_sets_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the permission set | 
 **contents** | [****](.md)| Permissions that this set contains as JSON or ordinary comma separated string. Possible permission names are: can_change_visibility_of_items, can_see_company_wide_statistics, can_delete_deals, can_see_deals_list_summary, can_export_data_from_lists, can_see_other_users_statistics | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



