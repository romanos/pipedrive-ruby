# Pipedrive::CurrenciesApi

All URIs are relative to *https://api.pipedrive.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**currencies_get**](CurrenciesApi.md#currencies_get) | **GET** /currencies | Get all supported currencies


# **currencies_get**
> currencies_get(opts)

Get all supported currencies

Returns all supported currencies in given account which should be used when saving monetary values with other objects. The 'code' parameter of the returning objects is the currency code according to ISO 4217 for all non-custom currencies.

### Example
```ruby
# load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::CurrenciesApi.new

opts = { 
  term: "" # String | Optional search term that is searched for from currency's name and/or code.
}

begin
  #Get all supported currencies
  api_instance.currencies_get(opts)
rescue Pipedrive::ApiError => e
  puts "Exception when calling CurrenciesApi->currencies_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **term** | **String**| Optional search term that is searched for from currency&#39;s name and/or code. | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



