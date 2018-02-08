# Pipedrive::StagesApi

All URIs are relative to *https://api.pipedrive.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**stages_delete**](StagesApi.md#stages_delete) | **DELETE** /stages | Delete multiple stages in bulk
[**stages_get**](StagesApi.md#stages_get) | **GET** /stages | Get all stages
[**stages_id_deals_get**](StagesApi.md#stages_id_deals_get) | **GET** /stages/{id}/deals | Get deals in a stage
[**stages_id_delete**](StagesApi.md#stages_id_delete) | **DELETE** /stages/{id} | Delete a stage
[**stages_id_get**](StagesApi.md#stages_id_get) | **GET** /stages/{id} | Get one stage
[**stages_id_put**](StagesApi.md#stages_id_put) | **PUT** /stages/{id} | Update stage details
[**stages_post**](StagesApi.md#stages_post) | **POST** /stages | Add a new stage


# **stages_delete**
> stages_delete(ids)

Delete multiple stages in bulk

Marks multiple stages as deleted.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::StagesApi.new

ids = 8.14 # Float | Comma-separated stage IDs to delete


begin
  #Delete multiple stages in bulk
  api_instance.stages_delete(ids)
rescue Pipedrive::ApiError => e
  puts "Exception when calling StagesApi->stages_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **Float**| Comma-separated stage IDs to delete | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **stages_get**
> stages_get(opts)

Get all stages

Returns data about all stages

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::StagesApi.new

opts = { 
  pipeline_id: 8.14 # Float | ID of the pipeline to fetch stages for. If omitted, stages for all pipelines will be fetched.
}

begin
  #Get all stages
  api_instance.stages_get(opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling StagesApi->stages_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pipeline_id** | **Float**| ID of the pipeline to fetch stages for. If omitted, stages for all pipelines will be fetched. | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **stages_id_deals_get**
> stages_id_deals_get(id, opts)

Get deals in a stage

Lists deals in a specific stage

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::StagesApi.new

id = 8.14 # Float | ID of the stage

opts = { 
  filter_id: 8.14, # Float | If supplied, only deals matching the given filter will be returned.
  user_id: 8.14, # Float | If supplied, filter_id will not be considered and only deals owned by the given user will be returned. If omitted, deals owned by the authorized user will be returned.
  everyone: "", # String | If supplied, filter_id and user_id will not be considered – instead, deals owned by everyone will be returned.
  start: 0, # Float | Pagination start
  limit: 8.14 # Float | Items shown per page
}

begin
  #Get deals in a stage
  api_instance.stages_id_deals_get(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling StagesApi->stages_id_deals_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the stage | 
 **filter_id** | **Float**| If supplied, only deals matching the given filter will be returned. | [optional] 
 **user_id** | **Float**| If supplied, filter_id will not be considered and only deals owned by the given user will be returned. If omitted, deals owned by the authorized user will be returned. | [optional] 
 **everyone** | **String**| If supplied, filter_id and user_id will not be considered – instead, deals owned by everyone will be returned. | [optional] [default to ]
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **stages_id_delete**
> stages_id_delete(id)

Delete a stage

Marks a stage as deleted.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::StagesApi.new

id = 8.14 # Float | ID of the stage to delete


begin
  #Delete a stage
  api_instance.stages_id_delete(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling StagesApi->stages_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the stage to delete | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **stages_id_get**
> stages_id_get(id)

Get one stage

Returns data about a specific stage

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::StagesApi.new

id = 8.14 # Float | ID of the stage


begin
  #Get one stage
  api_instance.stages_id_get(id)
rescue Pipedrive::ApiError => e
  puts "Exception when calling StagesApi->stages_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the stage | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **stages_id_put**
> stages_id_put(id, opts)

Update stage details

Updates the properties of a stage.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::StagesApi.new

id = 8.14 # Float | ID of the stage

opts = { 
  name: "", # String | Name of the stage
  pipeline_id: 8.14, # Float | ID of the pipeline this stage belongs to.
  order_nr: 8.14, # Float | An order number for this stage. Order numbers should be used to order the stages in the pipeline.
  deal_probability: 8.14, # Float | Deal success probability percentage. Used/shown when deal weighted values are used.
  rotten_flag: "", # String | Whether deals in this stage can become rotten.
  rotten_days: 8.14 # Float | Number of days the deals not updated in this stage would become rotten. Applies only if rotten_flag is set.
}

begin
  #Update stage details
  api_instance.stages_id_put(id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling StagesApi->stages_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Float**| ID of the stage | 
 **name** | **String**| Name of the stage | [optional] [default to ]
 **pipeline_id** | **Float**| ID of the pipeline this stage belongs to. | [optional] 
 **order_nr** | **Float**| An order number for this stage. Order numbers should be used to order the stages in the pipeline. | [optional] 
 **deal_probability** | **Float**| Deal success probability percentage. Used/shown when deal weighted values are used. | [optional] 
 **rotten_flag** | **String**| Whether deals in this stage can become rotten. | [optional] [default to ]
 **rotten_days** | **Float**| Number of days the deals not updated in this stage would become rotten. Applies only if rotten_flag is set. | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **stages_post**
> stages_post(name, pipeline_id, opts)

Add a new stage

Adds a new stage, returns the ID upon success.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::StagesApi.new

name = "" # String | Name of the stage

pipeline_id = 8.14 # Float | ID of the pipeline to add stage to.

opts = { 
  deal_probability: 8.14, # Float | Deal success probability percentage. Used/shown when deal weighted values are used.
  rotten_flag: "", # String | Whether deals in this stage can become rotten.
  rotten_days: 8.14 # Float | Number of days the deals not updated in this stage would become rotten. Applies only if rotten_flag is set.
}

begin
  #Add a new stage
  api_instance.stages_post(name, pipeline_id, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling StagesApi->stages_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the stage | [default to ]
 **pipeline_id** | **Float**| ID of the pipeline to add stage to. | 
 **deal_probability** | **Float**| Deal success probability percentage. Used/shown when deal weighted values are used. | [optional] 
 **rotten_flag** | **String**| Whether deals in this stage can become rotten. | [optional] [default to ]
 **rotten_days** | **Float**| Number of days the deals not updated in this stage would become rotten. Applies only if rotten_flag is set. | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



