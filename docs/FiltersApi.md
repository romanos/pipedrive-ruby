# Pipedrive::FiltersApi

All URIs are relative to *https://api.pipedrive.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**filters_delete**](FiltersApi.md#filters_delete) | **DELETE** /filters | Delete multiple filters in bulk
[**filters_get**](FiltersApi.md#filters_get) | **GET** /filters | Get all filters
[**filters_id_delete**](FiltersApi.md#filters_id_delete) | **DELETE** /filters/{id} | Delete a filter
[**filters_id_get**](FiltersApi.md#filters_id_get) | **GET** /filters/{id} | Get one filter
[**filters_id_put**](FiltersApi.md#filters_id_put) | **PUT** /filters/{id} | Update filter
[**filters_post**](FiltersApi.md#filters_post) | **POST** /filters | Add a new filter


# **filters_delete**
> filters_delete(ids)

Delete multiple filters in bulk

Marks multiple filters as deleted.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::FiltersApi.new

ids = "" # String | Comma-separated filter IDs to delete


begin
  #Delete multiple filters in bulk
  api_instance.filters_delete(ids)
rescue Pipedrive::ApiError => e
  puts "Exception when calling FiltersApi->filters_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **String**| Comma-separated filter IDs to delete | [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **filters_get**
> filters_get(opts)

Get all filters

Returns data about all filters

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::FiltersApi.new

opts = { 
  type: "" # String | Type of filters to fetch.
}

begin
  #Get all filters
  api_instance.filters_get(opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling FiltersApi->filters_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Type of filters to fetch. | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **filters_id_delete**
> filters_id_delete(id)

Delete a filter

Marks a filter as deleted.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::FiltersApi.new

id = 8.14 # Float | ID of the filter to delete.


begin
  #Delete a filter
  api_instance.filters_id_delete(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling FiltersApi->filters_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the filter to delete. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **filters_id_get**
> filters_id_get(id)

Get one filter

Returns data about a specific filter. Note that this also returns the condition lines of the filter.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::FiltersApi.new

id = 8.14 # Float | ID of the filter to fetch.


begin
  #Get one filter
  api_instance.filters_id_get(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling FiltersApi->filters_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the filter to fetch. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **filters_id_put**
> filters_id_put(id, conditions, opts)

Update filter

Updates existing filter.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::FiltersApi.new

id = 8.14 # Float | ID of the filter to update.

conditions = Pipedrive::null.new #  | Filter conditions as a JSON object. It requires a minimum structure as follows: {\"glue\":\"and\",\"conditions\":[{\"glue\":\"and\",\"conditions\": [CONDITION_OBJECTS]},{\"glue\":\"or\",\"conditions\":[CONDITION_OBJECTS]}]}. Replace CONDITION_OBJECTS with JSON objects of the following structure: {\"object\":\"\",\"field_id\":\"\", \"operator\":\"\",\"value\":\"\", \"extra_value\":\"\"} or leave the array empty. Depending on the object type you should use another API endpoint to get field_id. There are five types of objects you can choose from: \"person\", \"deal\", \"organization\", \"product\", \"activity\" and you can use these types of operators depending on what type of a field you have: \"IS NOT NULL\", \"IS NULL\", \"<=\", \">=\", \"<\", \">\", \"!=\", \"=\", \"LIKE '%$%'\", \"NOT LIKE '%$%'\", \"LIKE '$%'\", \"NOT LIKE '$%'\", \"LIKE '%$'\", \"NOT LIKE '%$'\". To get a better understanding of how filters work try creating them directly from the Pipedrive application.

opts = { 
  name: "" # String | Filter name
}

begin
  #Update filter
  api_instance.filters_id_put(id, conditions, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling FiltersApi->filters_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the filter to update. | 
 **conditions** | [****](.md)| Filter conditions as a JSON object. It requires a minimum structure as follows: {\&quot;glue\&quot;:\&quot;and\&quot;,\&quot;conditions\&quot;:[{\&quot;glue\&quot;:\&quot;and\&quot;,\&quot;conditions\&quot;: [CONDITION_OBJECTS]},{\&quot;glue\&quot;:\&quot;or\&quot;,\&quot;conditions\&quot;:[CONDITION_OBJECTS]}]}. Replace CONDITION_OBJECTS with JSON objects of the following structure: {\&quot;object\&quot;:\&quot;\&quot;,\&quot;field_id\&quot;:\&quot;\&quot;, \&quot;operator\&quot;:\&quot;\&quot;,\&quot;value\&quot;:\&quot;\&quot;, \&quot;extra_value\&quot;:\&quot;\&quot;} or leave the array empty. Depending on the object type you should use another API endpoint to get field_id. There are five types of objects you can choose from: \&quot;person\&quot;, \&quot;deal\&quot;, \&quot;organization\&quot;, \&quot;product\&quot;, \&quot;activity\&quot; and you can use these types of operators depending on what type of a field you have: \&quot;IS NOT NULL\&quot;, \&quot;IS NULL\&quot;, \&quot;&lt;&#x3D;\&quot;, \&quot;&gt;&#x3D;\&quot;, \&quot;&lt;\&quot;, \&quot;&gt;\&quot;, \&quot;!&#x3D;\&quot;, \&quot;&#x3D;\&quot;, \&quot;LIKE &#39;%$%&#39;\&quot;, \&quot;NOT LIKE &#39;%$%&#39;\&quot;, \&quot;LIKE &#39;$%&#39;\&quot;, \&quot;NOT LIKE &#39;$%&#39;\&quot;, \&quot;LIKE &#39;%$&#39;\&quot;, \&quot;NOT LIKE &#39;%$&#39;\&quot;. To get a better understanding of how filters work try creating them directly from the Pipedrive application. | 
 **name** | **String**| Filter name | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **filters_post**
> filters_post(name, conditions, type)

Add a new filter

Adds a new filter, returns the ID upon success. Note that in the conditions json object only one first-level condition group is supported, and it must be glued with 'AND', and only two second level condition groups are supported of which one must be glued with 'AND' and the second with 'OR'. Other combinations do not work (yet) but the syntax supports introducing them in future.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::FiltersApi.new

name = "" # String | Filter name

conditions = Pipedrive::null.new #  | Filter conditions as a JSON object. It requires a minimum structure as follows: {\"glue\":\"and\",\"conditions\":[{\"glue\":\"and\",\"conditions\": [CONDITION_OBJECTS]},{\"glue\":\"or\",\"conditions\":[CONDITION_OBJECTS]}]}. Replace CONDITION_OBJECTS with JSON objects of the following structure: {\"object\":\"\",\"field_id\":\"\", \"operator\":\"\",\"value\":\"\", \"extra_value\":\"\"} or leave the array empty. Depending on the object type you should use another API endpoint to get field_id. There are five types of objects you can choose from: \"person\", \"deal\", \"organization\", \"product\", \"activity\" and you can use these types of operators depending on what type of a field you have: \"IS NOT NULL\", \"IS NULL\", \"<=\", \">=\", \"<\", \">\", \"!=\", \"=\", \"LIKE '%$%'\", \"NOT LIKE '%$%'\", \"LIKE '$%'\", \"NOT LIKE '$%'\", \"LIKE '%$'\", \"NOT LIKE '%$'\". To get a better understanding of how filters work try creating them directly from the Pipedrive application.

type = "" # String | Type of filter to create.


begin
  #Add a new filter
  api_instance.filters_post(name, conditions, type)
rescue Pipedrive::ApiError => e
  puts "Exception when calling FiltersApi->filters_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Filter name | [default to ]
 **conditions** | [****](.md)| Filter conditions as a JSON object. It requires a minimum structure as follows: {\&quot;glue\&quot;:\&quot;and\&quot;,\&quot;conditions\&quot;:[{\&quot;glue\&quot;:\&quot;and\&quot;,\&quot;conditions\&quot;: [CONDITION_OBJECTS]},{\&quot;glue\&quot;:\&quot;or\&quot;,\&quot;conditions\&quot;:[CONDITION_OBJECTS]}]}. Replace CONDITION_OBJECTS with JSON objects of the following structure: {\&quot;object\&quot;:\&quot;\&quot;,\&quot;field_id\&quot;:\&quot;\&quot;, \&quot;operator\&quot;:\&quot;\&quot;,\&quot;value\&quot;:\&quot;\&quot;, \&quot;extra_value\&quot;:\&quot;\&quot;} or leave the array empty. Depending on the object type you should use another API endpoint to get field_id. There are five types of objects you can choose from: \&quot;person\&quot;, \&quot;deal\&quot;, \&quot;organization\&quot;, \&quot;product\&quot;, \&quot;activity\&quot; and you can use these types of operators depending on what type of a field you have: \&quot;IS NOT NULL\&quot;, \&quot;IS NULL\&quot;, \&quot;&lt;&#x3D;\&quot;, \&quot;&gt;&#x3D;\&quot;, \&quot;&lt;\&quot;, \&quot;&gt;\&quot;, \&quot;!&#x3D;\&quot;, \&quot;&#x3D;\&quot;, \&quot;LIKE &#39;%$%&#39;\&quot;, \&quot;NOT LIKE &#39;%$%&#39;\&quot;, \&quot;LIKE &#39;$%&#39;\&quot;, \&quot;NOT LIKE &#39;$%&#39;\&quot;, \&quot;LIKE &#39;%$&#39;\&quot;, \&quot;NOT LIKE &#39;%$&#39;\&quot;. To get a better understanding of how filters work try creating them directly from the Pipedrive application. | 
 **type** | **String**| Type of filter to create. | [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



