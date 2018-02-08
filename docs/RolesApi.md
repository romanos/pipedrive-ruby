# Pipedrive::RolesApi

All URIs are relative to *https://api.pipedrive.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**roles_get**](RolesApi.md#roles_get) | **GET** /roles | Get all roles
[**roles_id_assignments_delete**](RolesApi.md#roles_id_assignments_delete) | **DELETE** /roles/{id}/assignments | Delete a role assignment
[**roles_id_assignments_get**](RolesApi.md#roles_id_assignments_get) | **GET** /roles/{id}/assignments | List role assignments
[**roles_id_assignments_post**](RolesApi.md#roles_id_assignments_post) | **POST** /roles/{id}/assignments | Add role assignment
[**roles_id_delete**](RolesApi.md#roles_id_delete) | **DELETE** /roles/{id} | Delete a role
[**roles_id_get**](RolesApi.md#roles_id_get) | **GET** /roles/{id} | Get one role
[**roles_id_put**](RolesApi.md#roles_id_put) | **PUT** /roles/{id} | Update role details
[**roles_id_roles_get**](RolesApi.md#roles_id_roles_get) | **GET** /roles/{id}/roles | List role sub-roles
[**roles_id_settings_get**](RolesApi.md#roles_id_settings_get) | **GET** /roles/{id}/settings | List role settings
[**roles_id_settings_post**](RolesApi.md#roles_id_settings_post) | **POST** /roles/{id}/settings | Add or update role setting
[**roles_post**](RolesApi.md#roles_post) | **POST** /roles | Add a role


# **roles_get**
> roles_get(opts)

Get all roles



### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::RolesApi.new

opts = { 
  start: 0, # Float | Pagination start
  limit: 8.14 # Float | Items shown per page
}

begin
  #Get all roles
  api_instance.roles_get(opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling RolesApi->roles_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **roles_id_assignments_delete**
> roles_id_assignments_delete(id, user_id)

Delete a role assignment

Delete assignment from a role

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::RolesApi.new

id = 8.14 # Float | ID of the role

user_id = 8.14 # Float | ID of the user


begin
  #Delete a role assignment
  api_instance.roles_id_assignments_delete(id, user_id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling RolesApi->roles_id_assignments_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the role | 
 **user_id** | **Float**| ID of the user | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **roles_id_assignments_get**
> roles_id_assignments_get(id, opts)

List role assignments

List assignments for a role

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::RolesApi.new

id = 8.14 # Float | ID of the role

opts = { 
  start: 0, # Float | Pagination start
  limit: 8.14 # Float | Items shown per page
}

begin
  #List role assignments
  api_instance.roles_id_assignments_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling RolesApi->roles_id_assignments_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the role | 
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **roles_id_assignments_post**
> roles_id_assignments_post(id, user_id)

Add role assignment

Add assignment for a role

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::RolesApi.new

id = 8.14 # Float | ID of the role

user_id = 8.14 # Float | ID of the user


begin
  #Add role assignment
  api_instance.roles_id_assignments_post(id, user_id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling RolesApi->roles_id_assignments_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the role | 
 **user_id** | **Float**| ID of the user | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **roles_id_delete**
> roles_id_delete(id)

Delete a role



### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::RolesApi.new

id = 8.14 # Float | ID of the role


begin
  #Delete a role
  api_instance.roles_id_delete(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling RolesApi->roles_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the role | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **roles_id_get**
> roles_id_get(id)

Get one role



### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::RolesApi.new

id = 8.14 # Float | ID of the role


begin
  #Get one role
  api_instance.roles_id_get(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling RolesApi->roles_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the role | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **roles_id_put**
> roles_id_put(id, opts)

Update role details



### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::RolesApi.new

id = 8.14 # Float | ID of the role

opts = { 
  parent_role_id: 8.14, # Float | 
  name: "" # String | 
}

begin
  #Update role details
  api_instance.roles_id_put(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling RolesApi->roles_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the role | 
 **parent_role_id** | **Float**|  | [optional] 
 **name** | **String**|  | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **roles_id_roles_get**
> roles_id_roles_get(id, opts)

List role sub-roles



### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::RolesApi.new

id = 8.14 # Float | ID of the role

opts = { 
  start: 0, # Float | Pagination start
  limit: 8.14 # Float | Items shown per page
}

begin
  #List role sub-roles
  api_instance.roles_id_roles_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling RolesApi->roles_id_roles_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the role | 
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **roles_id_settings_get**
> roles_id_settings_get(id)

List role settings



### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::RolesApi.new

id = 8.14 # Float | ID of the role


begin
  #List role settings
  api_instance.roles_id_settings_get(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling RolesApi->roles_id_settings_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the role | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **roles_id_settings_post**
> roles_id_settings_post(id, setting_key, value)

Add or update role setting



### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::RolesApi.new

id = 8.14 # Float | ID of the role

setting_key = "" # String | 

value = "0" # String | Possible values for default_visibility settings: 0...1; for access_level settings: 1...7


begin
  #Add or update role setting
  api_instance.roles_id_settings_post(id, setting_key, value)
rescue Pipedrive::ApiError => e
  puts "Exception when calling RolesApi->roles_id_settings_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the role | 
 **setting_key** | **String**|  | [default to ]
 **value** | **String**| Possible values for default_visibility settings: 0...1; for access_level settings: 1...7 | [default to 0]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **roles_post**
> roles_post(name, opts)

Add a role



### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::RolesApi.new

name = "" # String | 

opts = { 
  parent_role_id: 8.14 # Float | 
}

begin
  #Add a role
  api_instance.roles_post(name, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling RolesApi->roles_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | [default to ]
 **parent_role_id** | **Float**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



