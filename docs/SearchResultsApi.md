# Pipedrive::SearchResultsApi

All URIs are relative to *https://api.pipedrive.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**search_results_field_get**](SearchResultsApi.md#search_results_field_get) | **GET** /searchResults/field | Perform a search using a specific field value
[**search_results_get**](SearchResultsApi.md#search_results_get) | **GET** /searchResults | Perform a search


# **search_results_field_get**
> search_results_field_get(term, field_type, field_key, opts)

Perform a search using a specific field value

Performs a search from a specific field's values. Results can be either the distinct values of the field (useful for searching autocomplete field values), or actual items IDs (deals, persons, organizations or products). Works only with the following field types: varchar, varchar_auto, double, address, text, phone, date.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::SearchResultsApi.new

term = "" # String | Search term to look for, minimum 2 characters.

field_type = "" # String | Type of the field to perform the search from.

field_key = "" # String | Key of the field to search from. Field key can be obtained by fetching the list of fields using any of fields API GET methods (dealFields, personFields, ..).

opts = { 
  exact_match: "", # String | When enabled, only full exact matches against the given term are returned. By default, term can be present anywhere in the resulting field values to be considered a match. The minimum 2 character limit for the term is discarded when exact_match is enabled.
  return_field_key: "", # String | Name of the field in search results from which the search was performed. When omitted, 'value' will be used. You may want to set this parameter to match the field_key.
  return_item_ids: "", # String | Whether to return matching items IDs in search results. When omitted or set to 0, only distinct values of the searched field are returned. When enabled, the return_field_key parameter is ignored and the results include the searched field as its own key.
  start: 0, # Float | Pagination start
  limit: 8.14 # Float | Items shown per page
}

begin
  #Perform a search using a specific field value
  api_instance.search_results_field_get(term, field_type, field_key, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling SearchResultsApi->search_results_field_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **term** | **String**| Search term to look for, minimum 2 characters. | [default to ]
 **field_type** | **String**| Type of the field to perform the search from. | [default to ]
 **field_key** | **String**| Key of the field to search from. Field key can be obtained by fetching the list of fields using any of fields API GET methods (dealFields, personFields, ..). | [default to ]
 **exact_match** | **String**| When enabled, only full exact matches against the given term are returned. By default, term can be present anywhere in the resulting field values to be considered a match. The minimum 2 character limit for the term is discarded when exact_match is enabled. | [optional] [default to ]
 **return_field_key** | **String**| Name of the field in search results from which the search was performed. When omitted, &#39;value&#39; will be used. You may want to set this parameter to match the field_key. | [optional] [default to ]
 **return_item_ids** | **String**| Whether to return matching items IDs in search results. When omitted or set to 0, only distinct values of the searched field are returned. When enabled, the return_field_key parameter is ignored and the results include the searched field as its own key. | [optional] [default to ]
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **search_results_get**
> search_results_get(term, opts)

Perform a search

Performs a search across the account and returns SearchResults.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::SearchResultsApi.new

term = "" # String | Search term to look for, minimum 2 characters.

opts = { 
  item_type: "", # String | Search for items of exact type. If omitted, all types of items are searched.
  start: 0, # Float | Pagination start
  limit: 8.14, # Float | Items shown per page
  exact_match: "" # String | When enabled, only full exact matches against the given term are returned. The minimum 2 character limit for the term is discarded when exact_match is enabled. It will only work if search term is 30 characters or less.
}

begin
  #Perform a search
  api_instance.search_results_get(term, opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling SearchResultsApi->search_results_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **term** | **String**| Search term to look for, minimum 2 characters. | [default to ]
 **item_type** | **String**| Search for items of exact type. If omitted, all types of items are searched. | [optional] [default to ]
 **start** | **Float**| Pagination start | [optional] [default to 0]
 **limit** | **Float**| Items shown per page | [optional] 
 **exact_match** | **String**| When enabled, only full exact matches against the given term are returned. The minimum 2 character limit for the term is discarded when exact_match is enabled. It will only work if search term is 30 characters or less. | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



