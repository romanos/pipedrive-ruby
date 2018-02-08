# Pipedrive::OrganizationRelationshipsApi

All URIs are relative to *https://api.pipedrive.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**organization_relationships_get**](OrganizationRelationshipsApi.md#organization_relationships_get) | **GET** /organizationRelationships | Get all relationships for organization
[**organization_relationships_id_delete**](OrganizationRelationshipsApi.md#organization_relationships_id_delete) | **DELETE** /organizationRelationships/{id} | Delete an organization relationship
[**organization_relationships_id_get**](OrganizationRelationshipsApi.md#organization_relationships_id_get) | **GET** /organizationRelationships/{id} | Get one organization relationship
[**organization_relationships_id_put**](OrganizationRelationshipsApi.md#organization_relationships_id_put) | **PUT** /organizationRelationships/{id} | Update an organization relationship
[**organization_relationships_post**](OrganizationRelationshipsApi.md#organization_relationships_post) | **POST** /organizationRelationships | Create an organization relationship


# **organization_relationships_get**
> organization_relationships_get(org_id)

Get all relationships for organization

Gets all of the relationships for a supplied organization id.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::OrganizationRelationshipsApi.new

org_id = 8.14 # Float | ID of the organization to get relationships for


begin
  #Get all relationships for organization
  api_instance.organization_relationships_get(org_id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling OrganizationRelationshipsApi->organization_relationships_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **Float**| ID of the organization to get relationships for | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **organization_relationships_id_delete**
> organization_relationships_id_delete(id)

Delete an organization relationship

Deletes an organization relationship and returns the deleted id.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::OrganizationRelationshipsApi.new

id = 8.14 # Float | ID of the organization relationship


begin
  #Delete an organization relationship
  api_instance.organization_relationships_id_delete(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling OrganizationRelationshipsApi->organization_relationships_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the organization relationship | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **organization_relationships_id_get**
> organization_relationships_id_get(id, opts)

Get one organization relationship

Finds and returns an organization relationship from its ID.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::OrganizationRelationshipsApi.new

id = 8.14 # Float | ID of the organization relationship

opts = { 
  org_id: 8.14 # Float | ID of the base organization for the returned calculated values
}

begin
  #Get one organization relationship
  api_instance.organization_relationships_id_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling OrganizationRelationshipsApi->organization_relationships_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the organization relationship | 
 **org_id** | **Float**| ID of the base organization for the returned calculated values | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **organization_relationships_id_put**
> organization_relationships_id_put(id, opts)

Update an organization relationship

Updates and returns an organization relationship.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::OrganizationRelationshipsApi.new

id = 8.14 # Float | ID of the organization relationship

opts = { 
  org_id: 8.14, # Float | ID of the base organization for the returned calculated values
  type: "", # String | The type of organization relationship.
  rel_owner_org_id: 8.14, # Float | The owner of this relationship. If type is 'parent', then the owner is the parent and the linked organization is the daughter.
  rel_linked_org_id: 8.14 # Float | The linked organization in this relationship. If type is 'parent', then the linked organization is the daughter.
}

begin
  #Update an organization relationship
  api_instance.organization_relationships_id_put(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling OrganizationRelationshipsApi->organization_relationships_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the organization relationship | 
 **org_id** | **Float**| ID of the base organization for the returned calculated values | [optional] 
 **type** | **String**| The type of organization relationship. | [optional] [default to ]
 **rel_owner_org_id** | **Float**| The owner of this relationship. If type is &#39;parent&#39;, then the owner is the parent and the linked organization is the daughter. | [optional] 
 **rel_linked_org_id** | **Float**| The linked organization in this relationship. If type is &#39;parent&#39;, then the linked organization is the daughter. | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **organization_relationships_post**
> organization_relationships_post(type, rel_owner_org_id, rel_linked_org_id, opts)

Create an organization relationship

Creates and returns an organization relationship.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::OrganizationRelationshipsApi.new

type = "" # String | The type of organization relationship.

rel_owner_org_id = 8.14 # Float | The owner of this relationship. If type is 'parent', then the owner is the parent and the linked organization is the daughter.

rel_linked_org_id = 8.14 # Float | The linked organization in this relationship. If type is 'parent', then the linked organization is the daughter.

opts = { 
  org_id: 8.14 # Float | ID of the base organization for the returned calculated values
}

begin
  #Create an organization relationship
  api_instance.organization_relationships_post(type, rel_owner_org_id, rel_linked_org_id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling OrganizationRelationshipsApi->organization_relationships_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The type of organization relationship. | [default to ]
 **rel_owner_org_id** | **Float**| The owner of this relationship. If type is &#39;parent&#39;, then the owner is the parent and the linked organization is the daughter. | 
 **rel_linked_org_id** | **Float**| The linked organization in this relationship. If type is &#39;parent&#39;, then the linked organization is the daughter. | 
 **org_id** | **Float**| ID of the base organization for the returned calculated values | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



