# Pipedrive::UsersApi

All URIs are relative to *https://api.pipedrive.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**users_find_get**](UsersApi.md#users_find_get) | **GET** /users/find | Find users by name
[**users_get**](UsersApi.md#users_get) | **GET** /users | Get all users
[**users_id_activities_get**](UsersApi.md#users_id_activities_get) | **GET** /users/{id}/activities | List and filter activities assigned to a specific user
[**users_id_blacklisted_emails_get**](UsersApi.md#users_id_blacklisted_emails_get) | **GET** /users/{id}/blacklistedEmails | List blacklisted email addresses of a user
[**users_id_blacklisted_emails_post**](UsersApi.md#users_id_blacklisted_emails_post) | **POST** /users/{id}/blacklistedEmails | Add blacklisted email address for a user
[**users_id_followers_get**](UsersApi.md#users_id_followers_get) | **GET** /users/{id}/followers | List followers of a user
[**users_id_get**](UsersApi.md#users_id_get) | **GET** /users/{id} | Get one user
[**users_id_permission_set_assignments_delete**](UsersApi.md#users_id_permission_set_assignments_delete) | **DELETE** /users/{id}/permissionSetAssignments | Delete a permission set assignment
[**users_id_permission_set_assignments_get**](UsersApi.md#users_id_permission_set_assignments_get) | **GET** /users/{id}/permissionSetAssignments | List permission set assignments
[**users_id_permission_set_assignments_post**](UsersApi.md#users_id_permission_set_assignments_post) | **POST** /users/{id}/permissionSetAssignments | Add permission set assignment
[**users_id_permissions_get**](UsersApi.md#users_id_permissions_get) | **GET** /users/{id}/permissions | List user permissions
[**users_id_put**](UsersApi.md#users_id_put) | **PUT** /users/{id} | Update user details
[**users_id_role_assignments_delete**](UsersApi.md#users_id_role_assignments_delete) | **DELETE** /users/{id}/roleAssignments | Delete a role assignment
[**users_id_role_assignments_get**](UsersApi.md#users_id_role_assignments_get) | **GET** /users/{id}/roleAssignments | List role assignments
[**users_id_role_assignments_post**](UsersApi.md#users_id_role_assignments_post) | **POST** /users/{id}/roleAssignments | Add role assignment
[**users_id_role_settings_get**](UsersApi.md#users_id_role_settings_get) | **GET** /users/{id}/roleSettings | List user role settings
[**users_post**](UsersApi.md#users_post) | **POST** /users | Add a new user


# **users_find_get**
> users_find_get(term, opts)

Find users by name

Finds users by their name.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::UsersApi.new

term = "" # String | Search term to look for

opts = { 
  search_by_email: "" # String | When enabled, term will only be matched against email addresses of users. Default: false
}

begin
  #Find users by name
  api_instance.users_find_get(term, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling UsersApi->users_find_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **term** | **String**| Search term to look for | [default to ]
 **search_by_email** | **String**| When enabled, term will only be matched against email addresses of users. Default: false | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **users_get**
> users_get

Get all users

Returns data about all users within the company

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::UsersApi.new

begin
  #Get all users
  api_instance.users_get
rescue Pipedrive::ApiError => e
  puts "Exception when calling UsersApi->users_get: #{e}"
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



# **users_id_activities_get**
> users_id_activities_get(id, opts)

List and filter activities assigned to a specific user

Lists activities assigned to a specific user, with optional due_date and type filtering.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::UsersApi.new

id = 8.14 # Float | ID of the user

opts = { 
  due_date: "", # String | Either a due date in YYYY-MM-DD format, or one of the following: all, overdue, today, tomorrow, this_week, next_week
  type: "", # String | Filter activities based on ActivityType's key_string (examples: call, meeting)
  start: 0, # Float | Pagination start
  limit: 8.14, # Float | Items shown per page
  done: "" # String | Whether to fetch done (1) or undone (0) activities. If omitted from request, both undone and done activities are fetched.
}

begin
  #List and filter activities assigned to a specific user
  api_instance.users_id_activities_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling UsersApi->users_id_activities_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the user | 
 **due_date** | **String**| Either a due date in YYYY-MM-DD format, or one of the following: all, overdue, today, tomorrow, this_week, next_week | [optional] [default to ]
 **type** | **String**| Filter activities based on ActivityType&#39;s key_string (examples: call, meeting) | [optional] [default to ]
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 
 **done** | **String**| Whether to fetch done (1) or undone (0) activities. If omitted from request, both undone and done activities are fetched. | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **users_id_blacklisted_emails_get**
> users_id_blacklisted_emails_get(id)

List blacklisted email addresses of a user

Lists blacklisted email addresses of a specific user. Blacklisted emails are such that will not get synced in to Pipedrive when using the built-in Mailbox.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::UsersApi.new

id = 8.14 # Float | ID of the user


begin
  #List blacklisted email addresses of a user
  api_instance.users_id_blacklisted_emails_get(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling UsersApi->users_id_blacklisted_emails_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the user | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **users_id_blacklisted_emails_post**
> users_id_blacklisted_emails_post(id, address)

Add blacklisted email address for a user

Add blacklisted email address for a specific user.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::UsersApi.new

id = 8.14 # Float | ID of the user

address = "" # String | Email address to blacklist (can contain \\* for wildcards, e.g. \\*@example.com, or john\\*@ex\\*.com)


begin
  #Add blacklisted email address for a user
  api_instance.users_id_blacklisted_emails_post(id, address)
rescue Pipedrive::ApiError => e
  puts "Exception when calling UsersApi->users_id_blacklisted_emails_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the user | 
 **address** | **String**| Email address to blacklist (can contain \\* for wildcards, e.g. \\*@example.com, or john\\*@ex\\*.com) | [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **users_id_followers_get**
> users_id_followers_get(id)

List followers of a user

Lists followers of a specific user.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::UsersApi.new

id = 8.14 # Float | ID of the user


begin
  #List followers of a user
  api_instance.users_id_followers_get(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling UsersApi->users_id_followers_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the user | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **users_id_get**
> users_id_get(id)

Get one user

Returns data about a specific user within the company

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::UsersApi.new

id = 8.14 # Float | ID of the user to fetch.


begin
  #Get one user
  api_instance.users_id_get(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling UsersApi->users_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the user to fetch. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **users_id_permission_set_assignments_delete**
> users_id_permission_set_assignments_delete(id, permission_set_id)

Delete a permission set assignment

Delete a permission set assignment for a user

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::UsersApi.new

id = 8.14 # Float | ID of the user

permission_set_id = 8.14 # Float | ID of the permission set


begin
  #Delete a permission set assignment
  api_instance.users_id_permission_set_assignments_delete(id, permission_set_id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling UsersApi->users_id_permission_set_assignments_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the user | 
 **permission_set_id** | **Float**| ID of the permission set | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **users_id_permission_set_assignments_get**
> users_id_permission_set_assignments_get(id, opts)

List permission set assignments

List permission set assignments for a user

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::UsersApi.new

id = 8.14 # Float | ID of the user

opts = { 
  start: 0, # Float | Pagination start
  limit: 8.14 # Float | Items shown per page
}

begin
  #List permission set assignments
  api_instance.users_id_permission_set_assignments_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling UsersApi->users_id_permission_set_assignments_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the user | 
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **users_id_permission_set_assignments_post**
> users_id_permission_set_assignments_post(id, permission_set_id)

Add permission set assignment

Add permission set assignment for a user

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::UsersApi.new

id = 8.14 # Float | ID of the user

permission_set_id = 8.14 # Float | ID of the permission set


begin
  #Add permission set assignment
  api_instance.users_id_permission_set_assignments_post(id, permission_set_id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling UsersApi->users_id_permission_set_assignments_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the user | 
 **permission_set_id** | **Float**| ID of the permission set | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **users_id_permissions_get**
> users_id_permissions_get(id)

List user permissions

List aggregated permissions over all assigned permission sets for a user

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::UsersApi.new

id = 8.14 # Float | ID of the user


begin
  #List user permissions
  api_instance.users_id_permissions_get(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling UsersApi->users_id_permissions_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the user | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **users_id_put**
> users_id_put(id, active_flag)

Update user details

Updates the properties of a user. Currently, only active_flag can be updated.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::UsersApi.new

id = 8.14 # Float | ID of the user

active_flag = "1" # String | Whether the user is active or not. 0 = Not activated, 1 = Activated


begin
  #Update user details
  api_instance.users_id_put(id, active_flag)
rescue Pipedrive::ApiError => e
  puts "Exception when calling UsersApi->users_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the user | 
 **active_flag** | **String**| Whether the user is active or not. 0 &#x3D; Not activated, 1 &#x3D; Activated | [default to 1]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **users_id_role_assignments_delete**
> users_id_role_assignments_delete(id, role_id)

Delete a role assignment

Delete a role assignment for a user

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::UsersApi.new

id = 8.14 # Float | ID of the user

role_id = 8.14 # Float | ID of the role


begin
  #Delete a role assignment
  api_instance.users_id_role_assignments_delete(id, role_id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling UsersApi->users_id_role_assignments_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the user | 
 **role_id** | **Float**| ID of the role | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **users_id_role_assignments_get**
> users_id_role_assignments_get(id, opts)

List role assignments

List role assignments for a user

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::UsersApi.new

id = 8.14 # Float | ID of the user

opts = { 
  start: 0, # Float | Pagination start
  limit: 8.14 # Float | Items shown per page
}

begin
  #List role assignments
  api_instance.users_id_role_assignments_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling UsersApi->users_id_role_assignments_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the user | 
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **users_id_role_assignments_post**
> users_id_role_assignments_post(id, role_id)

Add role assignment

Add role assignment for a user

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::UsersApi.new

id = 8.14 # Float | ID of the user

role_id = 8.14 # Float | ID of the role


begin
  #Add role assignment
  api_instance.users_id_role_assignments_post(id, role_id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling UsersApi->users_id_role_assignments_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the user | 
 **role_id** | **Float**| ID of the role | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **users_id_role_settings_get**
> users_id_role_settings_get(id)

List user role settings

List settings of user's assigned role

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::UsersApi.new

id = 8.14 # Float | ID of the user


begin
  #List user role settings
  api_instance.users_id_role_settings_get(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling UsersApi->users_id_role_settings_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the user | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **users_post**
> users_post(name, email, active_flag)

Add a new user

Adds a new user to the company, returns the ID upon success.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::UsersApi.new

name = "" # String | Name of the user

email = "" # String | Email of the user

active_flag = "1" # String | Whether the user is active or not. 0 = Not activated, 1 = Activated


begin
  #Add a new user
  api_instance.users_post(name, email, active_flag)
rescue Pipedrive::ApiError => e
  puts "Exception when calling UsersApi->users_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the user | [default to ]
 **email** | **String**| Email of the user | [default to ]
 **active_flag** | **String**| Whether the user is active or not. 0 &#x3D; Not activated, 1 &#x3D; Activated | [default to 1]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



