# Pipedrive::PipelinesApi

All URIs are relative to *https://api.pipedrive.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pipelines_get**](PipelinesApi.md#pipelines_get) | **GET** /pipelines | Get all pipelines
[**pipelines_id_conversion_statistics_get**](PipelinesApi.md#pipelines_id_conversion_statistics_get) | **GET** /pipelines/{id}/conversion_statistics | Get deals conversion rates in pipeline
[**pipelines_id_deals_get**](PipelinesApi.md#pipelines_id_deals_get) | **GET** /pipelines/{id}/deals | Get deals in a pipeline
[**pipelines_id_delete**](PipelinesApi.md#pipelines_id_delete) | **DELETE** /pipelines/{id} | Delete a pipeline
[**pipelines_id_get**](PipelinesApi.md#pipelines_id_get) | **GET** /pipelines/{id} | Get one pipeline
[**pipelines_id_movement_statistics_get**](PipelinesApi.md#pipelines_id_movement_statistics_get) | **GET** /pipelines/{id}/movement_statistics | Get deals movements in pipeline
[**pipelines_id_put**](PipelinesApi.md#pipelines_id_put) | **PUT** /pipelines/{id} | Edit a pipeline
[**pipelines_post**](PipelinesApi.md#pipelines_post) | **POST** /pipelines | Add a new pipeline


# **pipelines_get**
> pipelines_get

Get all pipelines

Returns data about all pipelines

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PipelinesApi.new

begin
  #Get all pipelines
  api_instance.pipelines_get
rescue Pipedrive::ApiError => e
  puts "Exception when calling PipelinesApi->pipelines_get: #{e}"
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



# **pipelines_id_conversion_statistics_get**
> pipelines_id_conversion_statistics_get(id, start_date, end_date, opts)

Get deals conversion rates in pipeline

Returns all stage-to-stage conversion and pipeline-to-close rates for given time period.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PipelinesApi.new

id = 8.14 # Float | ID of the pipeline.

start_date = "" # String | Start of the period. Date in format of YYYY-MM-DD.

end_date = "" # String | End of the period. Date in format of YYYY-MM-DD.

opts = { 
  user_id: 8.14 # Float | ID of the user who's pipeline metrics statistics to fetch. If omitted, the authorized user will be used.
}

begin
  #Get deals conversion rates in pipeline
  api_instance.pipelines_id_conversion_statistics_get(id, start_date, end_date, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PipelinesApi->pipelines_id_conversion_statistics_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the pipeline. | 
 **start_date** | **String**| Start of the period. Date in format of YYYY-MM-DD. | [default to ]
 **end_date** | **String**| End of the period. Date in format of YYYY-MM-DD. | [default to ]
 **user_id** | **Float**| ID of the user who&#39;s pipeline metrics statistics to fetch. If omitted, the authorized user will be used. | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **pipelines_id_deals_get**
> pipelines_id_deals_get(id, opts)

Get deals in a pipeline

Lists deals in a specific pipeline across all its stages

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PipelinesApi.new

id = 8.14 # Float | ID of the pipeline to fetch.

opts = { 
  filter_id: 8.14, # Float | If supplied, only deals matching the given filter will be returned.
  user_id: 8.14, # Float | If supplied, filter_id will not be considered and only deals owned by the given user will be returned. If omitted, deals owned by the authorized user will be returned.
  everyone: "", # String | If supplied, filter_id and user_id will not be considered – instead, deals owned by everyone will be returned.
  stage_id: 8.14, # Float | If supplied, only deals within the given stage will be returned.
  start: 0, # Float | Pagination start
  limit: 8.14, # Float | Items shown per page
  get_summary: "", # String | Whether to include summary of the pipeline in the additional_data or not.
  totals_convert_currency: "" # String | 3-letter currency code of any of the supported currencies. When supplied, per_stages_converted is returned inside deals_summary inside additional_data which contains the currency-converted total amounts in the given currency per each stage. You may also set this parameter to 'default_currency' in which case users default currency is used. Only works when get_summary parameter flag is enabled.
}

begin
  #Get deals in a pipeline
  api_instance.pipelines_id_deals_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PipelinesApi->pipelines_id_deals_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the pipeline to fetch. | 
 **filter_id** | **Float**| If supplied, only deals matching the given filter will be returned. | [optional] 
 **user_id** | **Float**| If supplied, filter_id will not be considered and only deals owned by the given user will be returned. If omitted, deals owned by the authorized user will be returned. | [optional] 
 **everyone** | **String**| If supplied, filter_id and user_id will not be considered – instead, deals owned by everyone will be returned. | [optional] [default to ]
 **stage_id** | **Float**| If supplied, only deals within the given stage will be returned. | [optional] 
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 
 **get_summary** | **String**| Whether to include summary of the pipeline in the additional_data or not. | [optional] [default to ]
 **totals_convert_currency** | **String**| 3-letter currency code of any of the supported currencies. When supplied, per_stages_converted is returned inside deals_summary inside additional_data which contains the currency-converted total amounts in the given currency per each stage. You may also set this parameter to &#39;default_currency&#39; in which case users default currency is used. Only works when get_summary parameter flag is enabled. | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **pipelines_id_delete**
> pipelines_id_delete(id)

Delete a pipeline

Marks a pipeline as deleted.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PipelinesApi.new

id = 8.14 # Float | ID of the pipeline to delete.


begin
  #Delete a pipeline
  api_instance.pipelines_id_delete(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PipelinesApi->pipelines_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the pipeline to delete. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **pipelines_id_get**
> pipelines_id_get(id, opts)

Get one pipeline

Returns data about a specific pipeline. Also returns the summary of the deals in this pipeline across its stages.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PipelinesApi.new

id = 8.14 # Float | ID of the pipeline to fetch.

opts = { 
  totals_convert_currency: "" # String | 3-letter currency code of any of the supported currencies. When supplied, per_stages_converted is returned in deals_summary which contains the currency-converted total amounts in the given currency per each stage. You may also set this parameter to 'default_currency' in which case users default currency is used.
}

begin
  #Get one pipeline
  api_instance.pipelines_id_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PipelinesApi->pipelines_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the pipeline to fetch. | 
 **totals_convert_currency** | **String**| 3-letter currency code of any of the supported currencies. When supplied, per_stages_converted is returned in deals_summary which contains the currency-converted total amounts in the given currency per each stage. You may also set this parameter to &#39;default_currency&#39; in which case users default currency is used. | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **pipelines_id_movement_statistics_get**
> pipelines_id_movement_statistics_get(id, start_date, end_date, opts)

Get deals movements in pipeline

Returns statistics for deals movements for given time period.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PipelinesApi.new

id = 8.14 # Float | ID of the pipeline.

start_date = "" # String | Start of the period. Date in format of YYYY-MM-DD.

end_date = "" # String | End of the period. Date in format of YYYY-MM-DD.

opts = { 
  user_id: 8.14 # Float | ID of the user who's pipeline statistics to fetch. If omitted, the authorized user will be used.
}

begin
  #Get deals movements in pipeline
  api_instance.pipelines_id_movement_statistics_get(id, start_date, end_date, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PipelinesApi->pipelines_id_movement_statistics_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the pipeline. | 
 **start_date** | **String**| Start of the period. Date in format of YYYY-MM-DD. | [default to ]
 **end_date** | **String**| End of the period. Date in format of YYYY-MM-DD. | [default to ]
 **user_id** | **Float**| ID of the user who&#39;s pipeline statistics to fetch. If omitted, the authorized user will be used. | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **pipelines_id_put**
> pipelines_id_put(id, opts)

Edit a pipeline

Updates pipeline properties

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PipelinesApi.new

id = 8.14 # Float | ID of the pipeline to fetch.

opts = { 
  name: "", # String | Name of the pipeline
  deal_probability: "0", # String | Whether deal probability is disabled or enabled for this pipeline.
  order_nr: 8.14, # Float | Defines pipelines order. First order(order_nr=0) is the default pipeline.
  active: "" # String | Whether this pipeline will be made inactive (hidden) or active
}

begin
  #Edit a pipeline
  api_instance.pipelines_id_put(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PipelinesApi->pipelines_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the pipeline to fetch. | 
 **name** | **String**| Name of the pipeline | [optional] [default to ]
 **deal_probability** | **String**| Whether deal probability is disabled or enabled for this pipeline. | [optional] [default to 0]
 **order_nr** | **Float**| Defines pipelines order. First order(order_nr&#x3D;0) is the default pipeline. | [optional] 
 **active** | **String**| Whether this pipeline will be made inactive (hidden) or active | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **pipelines_post**
> pipelines_post(opts)

Add a new pipeline

Adds a new pipeline

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::PipelinesApi.new

opts = { 
  name: "", # String | Name of the pipeline
  deal_probability: "0", # String | Whether deal probability is disabled or enabled for this pipeline.
  order_nr: 8.14, # Float | Defines pipelines order. First order(order_nr=0) is the default pipeline.
  active: "1" # String | Whether this pipeline will be made inactive (hidden) or active
}

begin
  #Add a new pipeline
  api_instance.pipelines_post(opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling PipelinesApi->pipelines_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the pipeline | [optional] [default to ]
 **deal_probability** | **String**| Whether deal probability is disabled or enabled for this pipeline. | [optional] [default to 0]
 **order_nr** | **Float**| Defines pipelines order. First order(order_nr&#x3D;0) is the default pipeline. | [optional] 
 **active** | **String**| Whether this pipeline will be made inactive (hidden) or active | [optional] [default to 1]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



