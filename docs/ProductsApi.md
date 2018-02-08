# Pipedrive::ProductsApi

All URIs are relative to *https://api.pipedrive.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**products_find_get**](ProductsApi.md#products_find_get) | **GET** /products/find | Find products by name
[**products_get**](ProductsApi.md#products_get) | **GET** /products | Get all products
[**products_id_deals_get**](ProductsApi.md#products_id_deals_get) | **GET** /products/{id}/deals | Get deals where a product is attached to
[**products_id_delete**](ProductsApi.md#products_id_delete) | **DELETE** /products/{id} | Delete a product
[**products_id_files_get**](ProductsApi.md#products_id_files_get) | **GET** /products/{id}/files | List files attached to a product
[**products_id_followers_follower_id_delete**](ProductsApi.md#products_id_followers_follower_id_delete) | **DELETE** /products/{id}/followers/{follower_id} | Delete a follower from a product
[**products_id_followers_get**](ProductsApi.md#products_id_followers_get) | **GET** /products/{id}/followers | List followers of a product
[**products_id_followers_post**](ProductsApi.md#products_id_followers_post) | **POST** /products/{id}/followers | Add a follower to a product
[**products_id_get**](ProductsApi.md#products_id_get) | **GET** /products/{id} | Get one product
[**products_id_permitted_users_get**](ProductsApi.md#products_id_permitted_users_get) | **GET** /products/{id}/permittedUsers | List permitted users
[**products_id_put**](ProductsApi.md#products_id_put) | **PUT** /products/{id} | Update a product
[**products_post**](ProductsApi.md#products_post) | **POST** /products | Add a product


# **products_find_get**
> products_find_get(term, opts)

Find products by name

Returns data about the products that were found. If currency was set in request, prices in that currency are served back.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ProductsApi.new

term = "" # String | Search term to look for, minimum 3 characters.

opts = { 
  currency: "", # String | Currency code in which prices should be returned in. If omitted, prices in user's default currency will be returned.
  start: 0, # Float | Pagination start
  limit: 8.14 # Float | Items shown per page
}

begin
  #Find products by name
  api_instance.products_find_get(term, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling ProductsApi->products_find_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **term** | **String**| Search term to look for, minimum 3 characters. | [default to ]
 **currency** | **String**| Currency code in which prices should be returned in. If omitted, prices in user&#39;s default currency will be returned. | [optional] [default to ]
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **products_get**
> products_get(opts)

Get all products

Returns data about all products

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ProductsApi.new

opts = { 
  user_id: 8.14, # Float | If supplied, only products owned by the given user will be returned.
  filter_id: 8.14, # Float | ID of the filter to use
  first_char: "", # String | If supplied, only products whose name starts with the specified letter will be returned (case insensitive).
  start: 0, # Float | Pagination start
  limit: 8.14 # Float | Items shown per page
}

begin
  #Get all products
  api_instance.products_get(opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling ProductsApi->products_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Float**| If supplied, only products owned by the given user will be returned. | [optional] 
 **filter_id** | **Float**| ID of the filter to use | [optional] 
 **first_char** | **String**| If supplied, only products whose name starts with the specified letter will be returned (case insensitive). | [optional] [default to ]
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **products_id_deals_get**
> products_id_deals_get(id, opts)

Get deals where a product is attached to

Returns data about a deals that have a product attached to.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ProductsApi.new

id = 8.14 # Float | ID of the product

opts = { 
  start: 0, # Float | Pagination start
  limit: 8.14, # Float | Items shown per page
  status: "all_not_deleted" # String | Only fetch deals with specific status. If omitted, all not deleted deals are fetched.
}

begin
  #Get deals where a product is attached to
  api_instance.products_id_deals_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling ProductsApi->products_id_deals_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the product | 
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 
 **status** | **String**| Only fetch deals with specific status. If omitted, all not deleted deals are fetched. | [optional] [default to all_not_deleted]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **products_id_delete**
> products_id_delete(id)

Delete a product

Marks a product as deleted.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ProductsApi.new

id = 8.14 # Float | ID of the product to delete.


begin
  #Delete a product
  api_instance.products_id_delete(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling ProductsApi->products_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the product to delete. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **products_id_files_get**
> products_id_files_get(id, opts)

List files attached to a product

Lists files associated with a product.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ProductsApi.new

id = 8.14 # Float | ID of the product

opts = { 
  start: 0, # Float | Pagination start
  limit: 8.14, # Float | Items shown per page
  include_deleted_files: "", # String | When enabled, the list of files will also include deleted files. Please note that trying to download these files will not work.
  sort: "" # String | Field names and sorting mode separated by comma (field_name_1 ASC, field_name_2 DESC). Only first-level field keys are supported (no nested keys). Supported fields: id, user_id, deal_id, person_id, org_id, product_id, add_time, update_time, file_name, file_type, file_size, comment.
}

begin
  #List files attached to a product
  api_instance.products_id_files_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling ProductsApi->products_id_files_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the product | 
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



# **products_id_followers_follower_id_delete**
> products_id_followers_follower_id_delete(id, follower_id)

Delete a follower from a product

Deletes a follower from a product.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ProductsApi.new

id = 8.14 # Float | ID of the product

follower_id = 8.14 # Float | ID of the follower


begin
  #Delete a follower from a product
  api_instance.products_id_followers_follower_id_delete(id, follower_id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling ProductsApi->products_id_followers_follower_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the product | 
 **follower_id** | **Float**| ID of the follower | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **products_id_followers_get**
> products_id_followers_get(id)

List followers of a product

Lists the followers of a product.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ProductsApi.new

id = 8.14 # Float | ID of the product


begin
  #List followers of a product
  api_instance.products_id_followers_get(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling ProductsApi->products_id_followers_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the product | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **products_id_followers_post**
> products_id_followers_post(id, user_id)

Add a follower to a product

Adds a follower to a product.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ProductsApi.new

id = 8.14 # Float | ID of the product

user_id = 8.14 # Float | ID of the user


begin
  #Add a follower to a product
  api_instance.products_id_followers_post(id, user_id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling ProductsApi->products_id_followers_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the product | 
 **user_id** | **Float**| ID of the user | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **products_id_get**
> products_id_get(id)

Get one product

Returns data about a specific products

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ProductsApi.new

id = 8.14 # Float | ID of the product


begin
  #Get one product
  api_instance.products_id_get(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling ProductsApi->products_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the product | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **products_id_permitted_users_get**
> products_id_permitted_users_get(id, opts)

List permitted users

List users permitted to access a product

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ProductsApi.new

id = 8.14 # Float | ID of the product

opts = { 
  access_level: "" # String | If set, filter results by allowed access level. 1 = Read, 2 = Write, 3 = Read+Write
}

begin
  #List permitted users
  api_instance.products_id_permitted_users_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling ProductsApi->products_id_permitted_users_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the product | 
 **access_level** | **String**| If set, filter results by allowed access level. 1 &#x3D; Read, 2 &#x3D; Write, 3 &#x3D; Read+Write | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **products_id_put**
> products_id_put(id, opts)

Update a product

Updates product data.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ProductsApi.new

id = 8.14 # Float | ID of the product

opts = { 
  name: "", # String | Name of the product.
  code: "", # String | Product code.
  unit: "", # String | Unit in which this product is sold
  tax: 0, # Float | Tax percentage
  active_flag: "1", # String | Whether this product will be made active or not.
  visible_to: "", # String | Visibility of the product. If omitted, visibility will be set to the default visibility setting of this item type for the authorized user.<dl class=\"fields-list\"><dt>1</dt><dd>Owner &amp; followers (private)</dd><dt>3</dt><dd>Entire company (shared)</dd></dl>
  owner_id: 8.14, # Float | ID of the user who will be marked as the owner of this product. When omitted, the authorized user ID will be used.
  prices: [""] # Array<String> | Array of objects, each containing: currency (string), price (number), cost (number, optional), overhead_cost (number, optional). Note that there can only be one price per product per currency. When 'prices' is omitted altogether, product pricing will not be changed.
}

begin
  #Update a product
  api_instance.products_id_put(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling ProductsApi->products_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the product | 
 **name** | **String**| Name of the product. | [optional] [default to ]
 **code** | **String**| Product code. | [optional] [default to ]
 **unit** | **String**| Unit in which this product is sold | [optional] [default to ]
 **tax** | **Float**| Tax percentage | [optional] [default to 0]
 **active_flag** | **String**| Whether this product will be made active or not. | [optional] [default to 1]
 **visible_to** | **String**| Visibility of the product. If omitted, visibility will be set to the default visibility setting of this item type for the authorized user.&lt;dl class&#x3D;\&quot;fields-list\&quot;&gt;&lt;dt&gt;1&lt;/dt&gt;&lt;dd&gt;Owner &amp;amp; followers (private)&lt;/dd&gt;&lt;dt&gt;3&lt;/dt&gt;&lt;dd&gt;Entire company (shared)&lt;/dd&gt;&lt;/dl&gt; | [optional] [default to ]
 **owner_id** | **Float**| ID of the user who will be marked as the owner of this product. When omitted, the authorized user ID will be used. | [optional] 
 **prices** | [**Array&lt;String&gt;**](String.md)| Array of objects, each containing: currency (string), price (number), cost (number, optional), overhead_cost (number, optional). Note that there can only be one price per product per currency. When &#39;prices&#39; is omitted altogether, product pricing will not be changed. | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **products_post**
> products_post(name, opts)

Add a product

Adds a new product to the products inventory.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ProductsApi.new

name = "" # String | Name of the product.

opts = { 
  code: "", # String | Product code.
  unit: "", # String | Unit in which this product is sold
  tax: 0, # Float | Tax percentage
  active_flag: "1", # String | Whether this product will be made active or not.
  visible_to: "", # String | Visibility of the product. If omitted, visibility will be set to the default visibility setting of this item type for the authorized user.<dl class=\"fields-list\"><dt>1</dt><dd>Owner &amp; followers (private)</dd><dt>3</dt><dd>Entire company (shared)</dd></dl>
  owner_id: 8.14, # Float | ID of the user who will be marked as the owner of this product. When omitted, the authorized user ID will be used.
  prices: Pipedrive::null.new #  | Array of objects, each containing: currency (string), price (number), cost (number, optional), overhead_cost (number, optional). Note that there can only be one price per product per currency. When 'prices' is omitted altogether, no prices will be set up for the product.
}

begin
  #Add a product
  api_instance.products_post(name, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling ProductsApi->products_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the product. | [default to ]
 **code** | **String**| Product code. | [optional] [default to ]
 **unit** | **String**| Unit in which this product is sold | [optional] [default to ]
 **tax** | **Float**| Tax percentage | [optional] [default to 0]
 **active_flag** | **String**| Whether this product will be made active or not. | [optional] [default to 1]
 **visible_to** | **String**| Visibility of the product. If omitted, visibility will be set to the default visibility setting of this item type for the authorized user.&lt;dl class&#x3D;\&quot;fields-list\&quot;&gt;&lt;dt&gt;1&lt;/dt&gt;&lt;dd&gt;Owner &amp;amp; followers (private)&lt;/dd&gt;&lt;dt&gt;3&lt;/dt&gt;&lt;dd&gt;Entire company (shared)&lt;/dd&gt;&lt;/dl&gt; | [optional] [default to ]
 **owner_id** | **Float**| ID of the user who will be marked as the owner of this product. When omitted, the authorized user ID will be used. | [optional] 
 **prices** | [****](.md)| Array of objects, each containing: currency (string), price (number), cost (number, optional), overhead_cost (number, optional). Note that there can only be one price per product per currency. When &#39;prices&#39; is omitted altogether, no prices will be set up for the product. | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



