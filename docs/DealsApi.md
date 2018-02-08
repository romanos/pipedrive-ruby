# Pipedrive::DealsApi

All URIs are relative to *https://api.pipedrive.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deals_delete**](DealsApi.md#deals_delete) | **DELETE** /deals | Delete multiple deals in bulk
[**deals_find_get**](DealsApi.md#deals_find_get) | **GET** /deals/find | Find deals by name
[**deals_get**](DealsApi.md#deals_get) | **GET** /deals | Get all deals
[**deals_id_activities_get**](DealsApi.md#deals_id_activities_get) | **GET** /deals/{id}/activities | List activities associated with a deal
[**deals_id_delete**](DealsApi.md#deals_id_delete) | **DELETE** /deals/{id} | Delete a deal
[**deals_id_duplicate_post**](DealsApi.md#deals_id_duplicate_post) | **POST** /deals/{id}/duplicate | Duplicate deal
[**deals_id_files_get**](DealsApi.md#deals_id_files_get) | **GET** /deals/{id}/files | List files attached to a deal
[**deals_id_flow_get**](DealsApi.md#deals_id_flow_get) | **GET** /deals/{id}/flow | List updates about a deal
[**deals_id_followers_follower_id_delete**](DealsApi.md#deals_id_followers_follower_id_delete) | **DELETE** /deals/{id}/followers/{follower_id} | Delete a follower from a deal
[**deals_id_followers_get**](DealsApi.md#deals_id_followers_get) | **GET** /deals/{id}/followers | List followers of a deal
[**deals_id_followers_post**](DealsApi.md#deals_id_followers_post) | **POST** /deals/{id}/followers | Add a follower to a deal
[**deals_id_get**](DealsApi.md#deals_id_get) | **GET** /deals/{id} | Get details of a deal
[**deals_id_mail_messages_get**](DealsApi.md#deals_id_mail_messages_get) | **GET** /deals/{id}/mailMessages | List mail messages associated with a deal
[**deals_id_merge_put**](DealsApi.md#deals_id_merge_put) | **PUT** /deals/{id}/merge | Merge two deals
[**deals_id_participants_deal_participant_id_delete**](DealsApi.md#deals_id_participants_deal_participant_id_delete) | **DELETE** /deals/{id}/participants/{deal_participant_id} | Delete a participant from a deal
[**deals_id_participants_get**](DealsApi.md#deals_id_participants_get) | **GET** /deals/{id}/participants | List participants of a deal
[**deals_id_participants_post**](DealsApi.md#deals_id_participants_post) | **POST** /deals/{id}/participants | Add a participant to a deal
[**deals_id_permitted_users_get**](DealsApi.md#deals_id_permitted_users_get) | **GET** /deals/{id}/permittedUsers | List permitted users
[**deals_id_persons_get**](DealsApi.md#deals_id_persons_get) | **GET** /deals/{id}/persons | List all persons associated with a deal
[**deals_id_products_deal_product_id_put**](DealsApi.md#deals_id_products_deal_product_id_put) | **PUT** /deals/{id}/products/{deal_product_id} | Update product attachment details of the deal-product (a product already attached to a deal)
[**deals_id_products_get**](DealsApi.md#deals_id_products_get) | **GET** /deals/{id}/products | List products attached to a deal
[**deals_id_products_post**](DealsApi.md#deals_id_products_post) | **POST** /deals/{id}/products | Add a product to the deal, eventually creating a new item called a deal-product.
[**deals_id_products_product_attachment_id_delete**](DealsApi.md#deals_id_products_product_attachment_id_delete) | **DELETE** /deals/{id}/products/{product_attachment_id} | Delete an attached product from a deal
[**deals_id_put**](DealsApi.md#deals_id_put) | **PUT** /deals/{id} | Update a deal
[**deals_post**](DealsApi.md#deals_post) | **POST** /deals | Add a deal
[**deals_timeline_get**](DealsApi.md#deals_timeline_get) | **GET** /deals/timeline | Get deals timeline


# **deals_delete**
> deals_delete(ids)

Delete multiple deals in bulk

Marks multiple deals as deleted.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::DealsApi.new

ids = [""] # Array<String> | Comma-separated IDs that will be deleted


begin
  #Delete multiple deals in bulk
  api_instance.deals_delete(ids)
rescue Pipedrive::ApiError => e
  puts "Exception when calling DealsApi->deals_delete: #{e}"
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



# **deals_find_get**
> deals_find_get(term, opts)

Find deals by name

Searches all deals by their title.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::DealsApi.new

term = "" # String | Search term to look for

opts = { 
  person_id: 8.14, # Float | ID of the person deal is associated with.
  org_id: 8.14 # Float | ID of the organization deal is associated with.
}

begin
  #Find deals by name
  api_instance.deals_find_get(term, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling DealsApi->deals_find_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **term** | **String**| Search term to look for | [default to ]
 **person_id** | **Float**| ID of the person deal is associated with. | [optional] 
 **org_id** | **Float**| ID of the organization deal is associated with. | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **deals_get**
> deals_get(opts)

Get all deals

Returns all deals

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::DealsApi.new

opts = { 
  user_id: 8.14, # Float | If supplied, only deals matching the given user will be returned.
  filter_id: 8.14, # Float | ID of the filter to use
  stage_id: 8.14, # Float | If supplied, only deals within the given stage will be returned.
  status: "all_not_deleted", # String | Only fetch deals with specific status. If omitted, all not deleted deals are fetched.
  start: 0, # Float | Pagination start
  limit: 8.14, # Float | Items shown per page. Default limit is 100, maximum limit is 500.
  sort: "", # String | Field names and sorting mode separated by comma (field_name_1 ASC, field_name_2 DESC). Only first-level field keys are supported (no nested keys).
  owned_by_you: "" # String | When supplied, only deals owned by you are returned. However filter_id takes precedence over owned_by_you when both are supplied.
}

begin
  #Get all deals
  api_instance.deals_get(opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling DealsApi->deals_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Float**| If supplied, only deals matching the given user will be returned. | [optional] 
 **filter_id** | **Float**| ID of the filter to use | [optional] 
 **stage_id** | **Float**| If supplied, only deals within the given stage will be returned. | [optional] 
 **status** | **String**| Only fetch deals with specific status. If omitted, all not deleted deals are fetched. | [optional] [default to all_not_deleted]
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page. Default limit is 100, maximum limit is 500. | [optional] 
 **sort** | **String**| Field names and sorting mode separated by comma (field_name_1 ASC, field_name_2 DESC). Only first-level field keys are supported (no nested keys). | [optional] [default to ]
 **owned_by_you** | **String**| When supplied, only deals owned by you are returned. However filter_id takes precedence over owned_by_you when both are supplied. | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **deals_id_activities_get**
> deals_id_activities_get(id, opts)

List activities associated with a deal

Lists activities associated with a deal.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::DealsApi.new

id = 8.14 # Float | ID of the deal

opts = { 
  start: 0, # Float | Pagination start
  limit: 8.14, # Float | Items shown per page
  done: "", # String | Whether to fetch done (1) or undone (0) activities. If omitted from request, both undone and done activities are fetched.
  exclude: "" # String | A comma-separated string of activity IDs to exclude from result
}

begin
  #List activities associated with a deal
  api_instance.deals_id_activities_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling DealsApi->deals_id_activities_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the deal | 
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



# **deals_id_delete**
> deals_id_delete(id)

Delete a deal

Marks a deal as deleted.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::DealsApi.new

id = 8.14 # Float | ID of the deal


begin
  #Delete a deal
  api_instance.deals_id_delete(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling DealsApi->deals_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the deal | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **deals_id_duplicate_post**
> deals_id_duplicate_post(id)

Duplicate deal

Duplicate a deal

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::DealsApi.new

id = 8.14 # Float | ID of the deal that will be duplicated


begin
  #Duplicate deal
  api_instance.deals_id_duplicate_post(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling DealsApi->deals_id_duplicate_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the deal that will be duplicated | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **deals_id_files_get**
> deals_id_files_get(id, opts)

List files attached to a deal

Lists files associated with a deal.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::DealsApi.new

id = 8.14 # Float | ID of the deal

opts = { 
  start: 0, # Float | Pagination start
  limit: 8.14, # Float | Items shown per page
  include_deleted_files: "", # String | When enabled, the list of files will also include deleted files. Please note that trying to download these files will not work.
  sort: "" # String | Field names and sorting mode separated by comma (field_name_1 ASC, field_name_2 DESC). Only first-level field keys are supported (no nested keys). Supported fields: id, user_id, deal_id, person_id, org_id, product_id, add_time, update_time, file_name, file_type, file_size, comment.
}

begin
  #List files attached to a deal
  api_instance.deals_id_files_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling DealsApi->deals_id_files_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the deal | 
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



# **deals_id_flow_get**
> deals_id_flow_get(id, opts)

List updates about a deal

Lists updates about a deal.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::DealsApi.new

id = 8.14 # Float | ID of the deal

opts = { 
  start: 0, # Float | Pagination start
  limit: 8.14 # Float | Items shown per page
}

begin
  #List updates about a deal
  api_instance.deals_id_flow_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling DealsApi->deals_id_flow_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the deal | 
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **deals_id_followers_follower_id_delete**
> deals_id_followers_follower_id_delete(id, follower_id)

Delete a follower from a deal

Deletes a follower from a deal.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::DealsApi.new

id = 8.14 # Float | ID of the deal

follower_id = 8.14 # Float | ID of the follower


begin
  #Delete a follower from a deal
  api_instance.deals_id_followers_follower_id_delete(id, follower_id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling DealsApi->deals_id_followers_follower_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the deal | 
 **follower_id** | **Float**| ID of the follower | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **deals_id_followers_get**
> deals_id_followers_get(id)

List followers of a deal

Lists the followers of a deal.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::DealsApi.new

id = 8.14 # Float | ID of the deal


begin
  #List followers of a deal
  api_instance.deals_id_followers_get(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling DealsApi->deals_id_followers_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the deal | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **deals_id_followers_post**
> deals_id_followers_post(id, user_id)

Add a follower to a deal

Adds a follower to a deal.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::DealsApi.new

id = 8.14 # Float | ID of the deal

user_id = 8.14 # Float | ID of the user


begin
  #Add a follower to a deal
  api_instance.deals_id_followers_post(id, user_id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling DealsApi->deals_id_followers_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the deal | 
 **user_id** | **Float**| ID of the user | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **deals_id_get**
> deals_id_get(id)

Get details of a deal

Returns details of a specific deal. Note that this also returns some additional fields which are not present when asking for all deals – such as deal age and stay in pipeline stages. Also note that custom fields appear as long hashes in the resulting data. These hashes can be mapped against the 'key' value of dealFields.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::DealsApi.new

id = 8.14 # Float | ID of the deal


begin
  #Get details of a deal
  api_instance.deals_id_get(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling DealsApi->deals_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the deal | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **deals_id_mail_messages_get**
> deals_id_mail_messages_get(id, opts)

List mail messages associated with a deal

Lists mail messages associated with a deal.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::DealsApi.new

id = 8.14 # Float | ID of the deal

opts = { 
  start: 0, # Float | Pagination start
  limit: 8.14 # Float | Items shown per page
}

begin
  #List mail messages associated with a deal
  api_instance.deals_id_mail_messages_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling DealsApi->deals_id_mail_messages_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the deal | 
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **deals_id_merge_put**
> deals_id_merge_put(id, merge_with_id)

Merge two deals

Merges a deal with another deal.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::DealsApi.new

id = 8.14 # Float | ID of the deal that will be merged

merge_with_id = 8.14 # Float | ID of the deal that the deal will be merged with


begin
  #Merge two deals
  api_instance.deals_id_merge_put(id, merge_with_id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling DealsApi->deals_id_merge_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the deal that will be merged | 
 **merge_with_id** | **Float**| ID of the deal that the deal will be merged with | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **deals_id_participants_deal_participant_id_delete**
> deals_id_participants_deal_participant_id_delete(id, deal_participant_id)

Delete a participant from a deal

Deletes a participant from a deal.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::DealsApi.new

id = 8.14 # Float | ID of the deal

deal_participant_id = 8.14 # Float | ID of the deal participant


begin
  #Delete a participant from a deal
  api_instance.deals_id_participants_deal_participant_id_delete(id, deal_participant_id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling DealsApi->deals_id_participants_deal_participant_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the deal | 
 **deal_participant_id** | **Float**| ID of the deal participant | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **deals_id_participants_get**
> deals_id_participants_get(id, opts)

List participants of a deal

Lists participants associated with a deal.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::DealsApi.new

id = 8.14 # Float | ID of the deal

opts = { 
  start: 0, # Float | Pagination start
  limit: 8.14 # Float | Items shown per page
}

begin
  #List participants of a deal
  api_instance.deals_id_participants_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling DealsApi->deals_id_participants_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the deal | 
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **deals_id_participants_post**
> deals_id_participants_post(id, person_id)

Add a participant to a deal

Adds a participant to a deal.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::DealsApi.new

id = 8.14 # Float | ID of the deal

person_id = 8.14 # Float | ID of the person


begin
  #Add a participant to a deal
  api_instance.deals_id_participants_post(id, person_id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling DealsApi->deals_id_participants_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the deal | 
 **person_id** | **Float**| ID of the person | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **deals_id_permitted_users_get**
> deals_id_permitted_users_get(id, opts)

List permitted users

List users permitted to access a deal

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::DealsApi.new

id = 8.14 # Float | ID of the deal

opts = { 
  access_level: "" # String | If set, filter results by allowed access level. 1 = Read, 2 = Write, 3 = Read+Write
}

begin
  #List permitted users
  api_instance.deals_id_permitted_users_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling DealsApi->deals_id_permitted_users_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the deal | 
 **access_level** | **String**| If set, filter results by allowed access level. 1 &#x3D; Read, 2 &#x3D; Write, 3 &#x3D; Read+Write | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **deals_id_persons_get**
> deals_id_persons_get(id, opts)

List all persons associated with a deal

Lists all persons associated with a deal, regardless of whether the person is the primary contact of the deal, or added as a participant.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::DealsApi.new

id = 8.14 # Float | ID of the deal

opts = { 
  start: 0, # Float | Pagination start
  limit: 8.14 # Float | Items shown per page
}

begin
  #List all persons associated with a deal
  api_instance.deals_id_persons_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling DealsApi->deals_id_persons_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the deal | 
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **deals_id_products_deal_product_id_put**
> deals_id_products_deal_product_id_put(id, deal_product_id, item_price, quantity, opts)

Update product attachment details of the deal-product (a product already attached to a deal)

Updates product attachment details.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::DealsApi.new

id = 8.14 # Float | ID of the deal

deal_product_id = 8.14 # Float | ID of the deal-product (the ID of the product attached to the deal)

item_price = 8.14 # Float | Price at which this product will be added to the deal

quantity = 8.14 # Float | Quantity – e.g. how many items of this product will be added to the deal

opts = { 
  discount_percentage: 0, # Float | Discount %
  duration: 1, # Float | Duration of the product
  product_variation_id: 8.14, # Float | ID of the product variation to use.
  comments: "", # String | Any textual comment associated with this product-deal attachment. Visible and editable in the application UI.
  enabled_flag: "" # String | Whether the product is enabled on the deal or not. This makes it possible to add products to a deal with specific price and discount criteria - but keep them disabled, which refrains them from being included in deal price calculation.
}

begin
  #Update product attachment details of the deal-product (a product already attached to a deal)
  api_instance.deals_id_products_deal_product_id_put(id, deal_product_id, item_price, quantity, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling DealsApi->deals_id_products_deal_product_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the deal | 
 **deal_product_id** | **Float**| ID of the deal-product (the ID of the product attached to the deal) | 
 **item_price** | **Float**| Price at which this product will be added to the deal | 
 **quantity** | **Float**| Quantity – e.g. how many items of this product will be added to the deal | 
 **discount_percentage** | **Float**| Discount % | [optional] [default to 0]
 **duration** | **Float**| Duration of the product | [optional] [default to 1]
 **product_variation_id** | **Float**| ID of the product variation to use. | [optional] 
 **comments** | **String**| Any textual comment associated with this product-deal attachment. Visible and editable in the application UI. | [optional] [default to ]
 **enabled_flag** | **String**| Whether the product is enabled on the deal or not. This makes it possible to add products to a deal with specific price and discount criteria - but keep them disabled, which refrains them from being included in deal price calculation. | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **deals_id_products_get**
> deals_id_products_get(id, opts)

List products attached to a deal

Lists products attached to a deal.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::DealsApi.new

id = 8.14 # Float | ID of the deal

opts = { 
  start: 0, # Float | Pagination start
  limit: 8.14, # Float | Items shown per page
  include_product_data: "" # String | Whether to fetch product data along with each attached product (1) or not (0, default).
}

begin
  #List products attached to a deal
  api_instance.deals_id_products_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling DealsApi->deals_id_products_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the deal | 
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 
 **include_product_data** | **String**| Whether to fetch product data along with each attached product (1) or not (0, default). | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **deals_id_products_post**
> deals_id_products_post(id, product_id, item_price, quantity, opts)

Add a product to the deal, eventually creating a new item called a deal-product.

Adds a product to the deal.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::DealsApi.new

id = 8.14 # Float | ID of the deal

product_id = 8.14 # Float | ID of the product that will be attached

item_price = 8.14 # Float | Price at which this product will be added to the deal

quantity = 8.14 # Float | Quantity – e.g. how many items of this product will be added to the deal

opts = { 
  discount_percentage: 0, # Float | Discount %. If omitted, will be set to 0
  duration: 1, # Float | Duration of the product (when product durations are not enabled for the company or if omitted, defaults to 1)
  product_variation_id: 8.14, # Float | ID of the product variation to use. When omitted, no variation will be used.
  comments: "", # String | Any textual comment associated with this product-deal attachment. Visible and editable in the application UI.
  enabled_flag: "" # String | Whether the product is enabled on the deal or not. This makes it possible to add products to a deal with specific price and discount criteria - but keep them disabled, which refrains them from being included in deal price calculation. When omitted, the product will be marked as enabled by default.
}

begin
  #Add a product to the deal, eventually creating a new item called a deal-product.
  api_instance.deals_id_products_post(id, product_id, item_price, quantity, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling DealsApi->deals_id_products_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the deal | 
 **product_id** | **Float**| ID of the product that will be attached | 
 **item_price** | **Float**| Price at which this product will be added to the deal | 
 **quantity** | **Float**| Quantity – e.g. how many items of this product will be added to the deal | 
 **discount_percentage** | **Float**| Discount %. If omitted, will be set to 0 | [optional] [default to 0]
 **duration** | **Float**| Duration of the product (when product durations are not enabled for the company or if omitted, defaults to 1) | [optional] [default to 1]
 **product_variation_id** | **Float**| ID of the product variation to use. When omitted, no variation will be used. | [optional] 
 **comments** | **String**| Any textual comment associated with this product-deal attachment. Visible and editable in the application UI. | [optional] [default to ]
 **enabled_flag** | **String**| Whether the product is enabled on the deal or not. This makes it possible to add products to a deal with specific price and discount criteria - but keep them disabled, which refrains them from being included in deal price calculation. When omitted, the product will be marked as enabled by default. | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **deals_id_products_product_attachment_id_delete**
> deals_id_products_product_attachment_id_delete(id, product_attachment_id)

Delete an attached product from a deal

Deletes a product attachment from a deal, using the product_attachment_id.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::DealsApi.new

id = 8.14 # Float | ID of the deal

product_attachment_id = 8.14 # Float | Product attachment ID. This is returned as product_attachment_id after attaching a product to a deal or as id when listing the products attached to a deal.


begin
  #Delete an attached product from a deal
  api_instance.deals_id_products_product_attachment_id_delete(id, product_attachment_id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling DealsApi->deals_id_products_product_attachment_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the deal | 
 **product_attachment_id** | **Float**| Product attachment ID. This is returned as product_attachment_id after attaching a product to a deal or as id when listing the products attached to a deal. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **deals_id_put**
> deals_id_put(id, opts)

Update a deal

Updates the properties of a deal.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::DealsApi.new

id = 8.14 # Float | ID of the deal

opts = { 
  title: "", # String | Deal title
  value: "", # String | Value of the deal
  currency: "", # String | Currency of the deal. Accepts a 3-character currency code
  user_id: 8.14, # Float | ID of the user who will be marked as the owner of this deal
  person_id: 8.14, # Float | ID of the person this deal will be associated with
  org_id: 8.14, # Float | ID of the organization this deal will be associated with
  stage_id: 8.14, # Float | ID of the stage this deal will be placed in a pipeline (note that you can't supply the ID of the pipeline as this will be assigned automatically based on stage_id)
  status: "", # String | open = Open, won = Won, lost = Lost, deleted = Deleted
  probability: 8.14, # Float | Deal success probability percentage. Used/shown only when deal_probability for the pipeline of the deal is enabled.
  lost_reason: "", # String | Optional message about why the deal was lost (to be used when status=lost)
  visible_to: "" # String | Visibility of the deal. If omitted, visibility will not be changed.<dl class=\"fields-list\"><dt>1</dt><dd>Owner &amp; followers (private)</dd><dt>3</dt><dd>Entire company (shared)</dd></dl>
}

begin
  #Update a deal
  api_instance.deals_id_put(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling DealsApi->deals_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the deal | 
 **title** | **String**| Deal title | [optional] [default to ]
 **value** | **String**| Value of the deal | [optional] [default to ]
 **currency** | **String**| Currency of the deal. Accepts a 3-character currency code | [optional] [default to ]
 **user_id** | **Float**| ID of the user who will be marked as the owner of this deal | [optional] 
 **person_id** | **Float**| ID of the person this deal will be associated with | [optional] 
 **org_id** | **Float**| ID of the organization this deal will be associated with | [optional] 
 **stage_id** | **Float**| ID of the stage this deal will be placed in a pipeline (note that you can&#39;t supply the ID of the pipeline as this will be assigned automatically based on stage_id) | [optional] 
 **status** | **String**| open &#x3D; Open, won &#x3D; Won, lost &#x3D; Lost, deleted &#x3D; Deleted | [optional] [default to ]
 **probability** | **Float**| Deal success probability percentage. Used/shown only when deal_probability for the pipeline of the deal is enabled. | [optional] 
 **lost_reason** | **String**| Optional message about why the deal was lost (to be used when status&#x3D;lost) | [optional] [default to ]
 **visible_to** | **String**| Visibility of the deal. If omitted, visibility will not be changed.&lt;dl class&#x3D;\&quot;fields-list\&quot;&gt;&lt;dt&gt;1&lt;/dt&gt;&lt;dd&gt;Owner &amp;amp; followers (private)&lt;/dd&gt;&lt;dt&gt;3&lt;/dt&gt;&lt;dd&gt;Entire company (shared)&lt;/dd&gt;&lt;/dl&gt; | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **deals_post**
> deals_post(title, opts)

Add a deal

Adds a new deal. Note that you can supply additional custom fields along with the request that are not described here. These custom fields are different for each Pipedrive account and can be recognized by long hashes as keys. To determine which custom fields exists, fetch the dealFields and look for 'key' values.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::DealsApi.new

title = "" # String | Deal title

opts = { 
  value: "", # String | Value of the deal. If omitted, value will be set to 0.
  currency: "", # String | Currency of the deal. Accepts a 3-character currency code. If omitted, currency will be set to the default currency of the authorized user.
  user_id: 8.14, # Float | ID of the user who will be marked as the owner of this deal. If omitted, the authorized user ID will be used.
  person_id: 8.14, # Float | ID of the person this deal will be associated with
  org_id: 8.14, # Float | ID of the organization this deal will be associated with
  stage_id: 8.14, # Float | ID of the stage this deal will be placed in a pipeline (note that you can't supply the ID of the pipeline as this will be assigned automatically based on stage_id). If omitted, the deal will be placed in the first stage of the default pipeline.
  status: "", # String | open = Open, won = Won, lost = Lost, deleted = Deleted. If omitted, status will be set to open.
  probability: 8.14, # Float | Deal success probability percentage. Used/shown only when deal_probability for the pipeline of the deal is enabled.
  lost_reason: "", # String | Optional message about why the deal was lost (to be used when status=lost)
  add_time: "", # String | Optional creation date & time of the deal in UTC. Requires admin user API token. Format: YYYY-MM-DD HH:MM:SS
  visible_to: "" # String | Visibility of the deal. If omitted, visibility will be set to the default visibility setting of this item type for the authorized user.<dl class=\"fields-list\"><dt>1</dt><dd>Owner &amp; followers (private)</dd><dt>3</dt><dd>Entire company (shared)</dd></dl>
}

begin
  #Add a deal
  api_instance.deals_post(title, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling DealsApi->deals_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Deal title | [default to ]
 **value** | **String**| Value of the deal. If omitted, value will be set to 0. | [optional] [default to ]
 **currency** | **String**| Currency of the deal. Accepts a 3-character currency code. If omitted, currency will be set to the default currency of the authorized user. | [optional] [default to ]
 **user_id** | **Float**| ID of the user who will be marked as the owner of this deal. If omitted, the authorized user ID will be used. | [optional] 
 **person_id** | **Float**| ID of the person this deal will be associated with | [optional] 
 **org_id** | **Float**| ID of the organization this deal will be associated with | [optional] 
 **stage_id** | **Float**| ID of the stage this deal will be placed in a pipeline (note that you can&#39;t supply the ID of the pipeline as this will be assigned automatically based on stage_id). If omitted, the deal will be placed in the first stage of the default pipeline. | [optional] 
 **status** | **String**| open &#x3D; Open, won &#x3D; Won, lost &#x3D; Lost, deleted &#x3D; Deleted. If omitted, status will be set to open. | [optional] [default to ]
 **probability** | **Float**| Deal success probability percentage. Used/shown only when deal_probability for the pipeline of the deal is enabled. | [optional] 
 **lost_reason** | **String**| Optional message about why the deal was lost (to be used when status&#x3D;lost) | [optional] [default to ]
 **add_time** | **String**| Optional creation date &amp; time of the deal in UTC. Requires admin user API token. Format: YYYY-MM-DD HH:MM:SS | [optional] [default to ]
 **visible_to** | **String**| Visibility of the deal. If omitted, visibility will be set to the default visibility setting of this item type for the authorized user.&lt;dl class&#x3D;\&quot;fields-list\&quot;&gt;&lt;dt&gt;1&lt;/dt&gt;&lt;dd&gt;Owner &amp;amp; followers (private)&lt;/dd&gt;&lt;dt&gt;3&lt;/dt&gt;&lt;dd&gt;Entire company (shared)&lt;/dd&gt;&lt;/dl&gt; | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **deals_timeline_get**
> deals_timeline_get(start_date, interval, amount, field_key, opts)

Get deals timeline

Returns open and won deals, grouped by defined interval of time set in a date-type dealField (field_key) — e.g. when month is the chosen interval, and 3 months are asked starting from  January 1st, 2012, deals are returned grouped into 3 groups — January, February and March — based on the value of the given field_key.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::DealsApi.new

start_date = "" # String | Date where first interval starts. Format: YYYY-MM-DD

interval = "" # String | Type of interval.<dl class=\"fields-list\"><dt>day</dt><dd>Day</dd><dt>week</dt><dd>A full week (7 days) starting from start_date</dd><dt>month</dt><dd>A full month (depending on the number of days in given month) starting from start_date</dd><dt>quarter</dt><dd>A full quarter (3 months) starting from start_date</dd></dl>

amount = 8.14 # Float | Number of given intervals, starting from start_date, to fetch. E.g. 3 (months).

field_key = "" # String | The name of the date field by which to get deals by.

opts = { 
  user_id: 8.14, # Float | If supplied, only deals matching the given user will be returned.
  pipeline_id: 8.14, # Float | If supplied, only deals matching the given pipeline will be returned.
  filter_id: 8.14, # Float | If supplied, only deals matching the given filter will be returned.
  exclude_deals: "", # String | Whether to exclude deals list (1) or not (0). Note that when deals are excluded, the timeline summary (counts and values) is still returned.
  totals_convert_currency: "" # String | 3-letter currency code of any of the supported currencies. When supplied, totals_converted is returned per each interval which contains the currency-converted total amounts in the given currency. You may also set this parameter to 'default_currency' in which case users default currency is used.
}

begin
  #Get deals timeline
  api_instance.deals_timeline_get(start_date, interval, amount, field_key, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling DealsApi->deals_timeline_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **String**| Date where first interval starts. Format: YYYY-MM-DD | [default to ]
 **interval** | **String**| Type of interval.&lt;dl class&#x3D;\&quot;fields-list\&quot;&gt;&lt;dt&gt;day&lt;/dt&gt;&lt;dd&gt;Day&lt;/dd&gt;&lt;dt&gt;week&lt;/dt&gt;&lt;dd&gt;A full week (7 days) starting from start_date&lt;/dd&gt;&lt;dt&gt;month&lt;/dt&gt;&lt;dd&gt;A full month (depending on the number of days in given month) starting from start_date&lt;/dd&gt;&lt;dt&gt;quarter&lt;/dt&gt;&lt;dd&gt;A full quarter (3 months) starting from start_date&lt;/dd&gt;&lt;/dl&gt; | [default to ]
 **amount** | **Float**| Number of given intervals, starting from start_date, to fetch. E.g. 3 (months). | 
 **field_key** | **String**| The name of the date field by which to get deals by. | [default to ]
 **user_id** | **Float**| If supplied, only deals matching the given user will be returned. | [optional] 
 **pipeline_id** | **Float**| If supplied, only deals matching the given pipeline will be returned. | [optional] 
 **filter_id** | **Float**| If supplied, only deals matching the given filter will be returned. | [optional] 
 **exclude_deals** | **String**| Whether to exclude deals list (1) or not (0). Note that when deals are excluded, the timeline summary (counts and values) is still returned. | [optional] [default to ]
 **totals_convert_currency** | **String**| 3-letter currency code of any of the supported currencies. When supplied, totals_converted is returned per each interval which contains the currency-converted total amounts in the given currency. You may also set this parameter to &#39;default_currency&#39; in which case users default currency is used. | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



