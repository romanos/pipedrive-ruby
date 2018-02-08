# Pipedrive::ProductFieldsApi

All URIs are relative to *https://api.pipedrive.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**product_fields_delete**](ProductFieldsApi.md#product_fields_delete) | **DELETE** /productFields | Delete multiple product fields in bulk
[**product_fields_get**](ProductFieldsApi.md#product_fields_get) | **GET** /productFields | Get all product fields
[**product_fields_id_delete**](ProductFieldsApi.md#product_fields_id_delete) | **DELETE** /productFields/{id} | Delete a product field
[**product_fields_id_get**](ProductFieldsApi.md#product_fields_id_get) | **GET** /productFields/{id} | Get one product field
[**product_fields_id_put**](ProductFieldsApi.md#product_fields_id_put) | **PUT** /productFields/{id} | Update a product field
[**product_fields_post**](ProductFieldsApi.md#product_fields_post) | **POST** /productFields | Add a new product field


# **product_fields_delete**
> product_fields_delete(ids)

Delete multiple product fields in bulk

Marks multiple fields as deleted.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ProductFieldsApi.new

ids = "" # String | Comma-separated field IDs to delete


begin
  #Delete multiple product fields in bulk
  api_instance.product_fields_delete(ids)
rescue Pipedrive::ApiError => e
  puts "Exception when calling ProductFieldsApi->product_fields_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **String**| Comma-separated field IDs to delete | [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **product_fields_get**
> product_fields_get

Get all product fields

Returns data about all product fields

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ProductFieldsApi.new

begin
  #Get all product fields
  api_instance.product_fields_get
rescue Pipedrive::ApiError => e
  puts "Exception when calling ProductFieldsApi->product_fields_get: #{e}"
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



# **product_fields_id_delete**
> product_fields_id_delete(id)

Delete a product field

Marks a field as deleted.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ProductFieldsApi.new

id = 8.14 # Float | ID of the field to delete.


begin
  #Delete a product field
  api_instance.product_fields_id_delete(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling ProductFieldsApi->product_fields_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the field to delete. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **product_fields_id_get**
> product_fields_id_get(id)

Get one product field

Returns data about a specific product field.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ProductFieldsApi.new

id = 8.14 # Float | ID of the field to fetch.


begin
  #Get one product field
  api_instance.product_fields_id_get(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling ProductFieldsApi->product_fields_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the field to fetch. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **product_fields_id_put**
> product_fields_id_put(id, name, opts)

Update a product field

Updates a product field

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ProductFieldsApi.new

id = 8.14 # Float | ID of the field to update.

name = "" # String | Name of the field

opts = { 
  options: Pipedrive::null.new #  | When field_type is either set or enum, possible options must be supplied as a JSON-encoded sequential array of objects. All active items must be supplied and already existing items must have their ID supplied. New items only require a label. Example: [{\"id\":123,\"label\":\"Existing Item\"},{\"label\":\"New Item\"}]
}

begin
  #Update a product field
  api_instance.product_fields_id_put(id, name, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling ProductFieldsApi->product_fields_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the field to update. | 
 **name** | **String**| Name of the field | [default to ]
 **options** | [****](.md)| When field_type is either set or enum, possible options must be supplied as a JSON-encoded sequential array of objects. All active items must be supplied and already existing items must have their ID supplied. New items only require a label. Example: [{\&quot;id\&quot;:123,\&quot;label\&quot;:\&quot;Existing Item\&quot;},{\&quot;label\&quot;:\&quot;New Item\&quot;}] | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **product_fields_post**
> product_fields_post(name, field_type, opts)

Add a new product field

Adds a new product field

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ProductFieldsApi.new

name = "" # String | Name of the field

field_type = "" # String | Type of the field.<dl class=\"fields-list\"><dt>varchar</dt><dd>Text (up to 255 characters)</dd><dt>varchar_auto</dt><dd>Autocomplete text (up to 255 characters)</dd><dt>text</dt><dd>Long text (up to 65k characters)</dd><dt>double</dt><dd>Numeric value</dd><dt>monetary</dt><dd>Monetary field (has a numeric value and a currency value)</dd><dt>date</dt><dd>Date (format YYYY-MM-DD)</dd><dt>set</dt><dd>Options field with a possibility of having multiple chosen options</dd><dt>enum</dt><dd>Options field with a single possible chosen option</dd><dt>user</dt><dd>User field (contains a user ID of another Pipedrive user)</dd><dt>org</dt><dd>Organization field (contains an organization ID which is stored on the same account)</dd><dt>people</dt><dd>Person field (contains a product ID which is stored on the same account)</dd><dt>phone</dt><dd>Phone field (up to 255 numbers and/or characters)</dd><dt>time</dt><dd>Time field (format HH:MM:SS)</dd><dt>timerange</dt><dd>Time-range field (has a start time and end time value, both HH:MM:SS)</dd><dt>daterange</dt><dd>Date-range field (has a start date and end date value, both YYYY-MM-DD)</dd></dl>

opts = { 
  options: Pipedrive::null.new #  | When field_type is either set or enum, possible options must be supplied as a JSON-encoded sequential array, for example: [\"red\",\"blue\",\"lilac\"]
}

begin
  #Add a new product field
  api_instance.product_fields_post(name, field_type, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling ProductFieldsApi->product_fields_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the field | [default to ]
 **field_type** | **String**| Type of the field.&lt;dl class&#x3D;\&quot;fields-list\&quot;&gt;&lt;dt&gt;varchar&lt;/dt&gt;&lt;dd&gt;Text (up to 255 characters)&lt;/dd&gt;&lt;dt&gt;varchar_auto&lt;/dt&gt;&lt;dd&gt;Autocomplete text (up to 255 characters)&lt;/dd&gt;&lt;dt&gt;text&lt;/dt&gt;&lt;dd&gt;Long text (up to 65k characters)&lt;/dd&gt;&lt;dt&gt;double&lt;/dt&gt;&lt;dd&gt;Numeric value&lt;/dd&gt;&lt;dt&gt;monetary&lt;/dt&gt;&lt;dd&gt;Monetary field (has a numeric value and a currency value)&lt;/dd&gt;&lt;dt&gt;date&lt;/dt&gt;&lt;dd&gt;Date (format YYYY-MM-DD)&lt;/dd&gt;&lt;dt&gt;set&lt;/dt&gt;&lt;dd&gt;Options field with a possibility of having multiple chosen options&lt;/dd&gt;&lt;dt&gt;enum&lt;/dt&gt;&lt;dd&gt;Options field with a single possible chosen option&lt;/dd&gt;&lt;dt&gt;user&lt;/dt&gt;&lt;dd&gt;User field (contains a user ID of another Pipedrive user)&lt;/dd&gt;&lt;dt&gt;org&lt;/dt&gt;&lt;dd&gt;Organization field (contains an organization ID which is stored on the same account)&lt;/dd&gt;&lt;dt&gt;people&lt;/dt&gt;&lt;dd&gt;Person field (contains a product ID which is stored on the same account)&lt;/dd&gt;&lt;dt&gt;phone&lt;/dt&gt;&lt;dd&gt;Phone field (up to 255 numbers and/or characters)&lt;/dd&gt;&lt;dt&gt;time&lt;/dt&gt;&lt;dd&gt;Time field (format HH:MM:SS)&lt;/dd&gt;&lt;dt&gt;timerange&lt;/dt&gt;&lt;dd&gt;Time-range field (has a start time and end time value, both HH:MM:SS)&lt;/dd&gt;&lt;dt&gt;daterange&lt;/dt&gt;&lt;dd&gt;Date-range field (has a start date and end date value, both YYYY-MM-DD)&lt;/dd&gt;&lt;/dl&gt; | [default to ]
 **options** | [****](.md)| When field_type is either set or enum, possible options must be supplied as a JSON-encoded sequential array, for example: [\&quot;red\&quot;,\&quot;blue\&quot;,\&quot;lilac\&quot;] | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



