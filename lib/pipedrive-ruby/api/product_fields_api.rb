=begin
#Pipedrive API v1

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module Pipedrive
  class ProductFieldsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete multiple product fields in bulk
    # Marks multiple fields as deleted.
    # @param ids Comma-separated field IDs to delete
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def product_fields_delete(ids, opts = {})
      product_fields_delete_with_http_info(ids, opts)
      return nil
    end

    # Delete multiple product fields in bulk
    # Marks multiple fields as deleted.
    # @param ids Comma-separated field IDs to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def product_fields_delete_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductFieldsApi.product_fields_delete ..."
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling ProductFieldsApi.product_fields_delete"
      end
      # resource path
      local_var_path = "/productFields"

      # query parameters
      query_params = {}
      query_params[:'ids'] = ids

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductFieldsApi#product_fields_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all product fields
    # Returns data about all product fields
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def product_fields_get(opts = {})
      product_fields_get_with_http_info(opts)
      return nil
    end

    # Get all product fields
    # Returns data about all product fields
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def product_fields_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductFieldsApi.product_fields_get ..."
      end
      # resource path
      local_var_path = "/productFields"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductFieldsApi#product_fields_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a product field
    # Marks a field as deleted.
    # @param id ID of the field to delete.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def product_fields_id_delete(id, opts = {})
      product_fields_id_delete_with_http_info(id, opts)
      return nil
    end

    # Delete a product field
    # Marks a field as deleted.
    # @param id ID of the field to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def product_fields_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductFieldsApi.product_fields_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProductFieldsApi.product_fields_id_delete"
      end
      # resource path
      local_var_path = "/productFields/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductFieldsApi#product_fields_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get one product field
    # Returns data about a specific product field.
    # @param id ID of the field to fetch.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def product_fields_id_get(id, opts = {})
      product_fields_id_get_with_http_info(id, opts)
      return nil
    end

    # Get one product field
    # Returns data about a specific product field.
    # @param id ID of the field to fetch.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def product_fields_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductFieldsApi.product_fields_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProductFieldsApi.product_fields_id_get"
      end
      # resource path
      local_var_path = "/productFields/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductFieldsApi#product_fields_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a product field
    # Updates a product field
    # @param id ID of the field to update.
    # @param name Name of the field
    # @param [Hash] opts the optional parameters
    # @option opts [] :options When field_type is either set or enum, possible options must be supplied as a JSON-encoded sequential array of objects. All active items must be supplied and already existing items must have their ID supplied. New items only require a label. Example: [{\&quot;id\&quot;:123,\&quot;label\&quot;:\&quot;Existing Item\&quot;},{\&quot;label\&quot;:\&quot;New Item\&quot;}]
    # @return [nil]
    def product_fields_id_put(id, name, opts = {})
      product_fields_id_put_with_http_info(id, name, opts)
      return nil
    end

    # Update a product field
    # Updates a product field
    # @param id ID of the field to update.
    # @param name Name of the field
    # @param [Hash] opts the optional parameters
    # @option opts [] :options When field_type is either set or enum, possible options must be supplied as a JSON-encoded sequential array of objects. All active items must be supplied and already existing items must have their ID supplied. New items only require a label. Example: [{\&quot;id\&quot;:123,\&quot;label\&quot;:\&quot;Existing Item\&quot;},{\&quot;label\&quot;:\&quot;New Item\&quot;}]
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def product_fields_id_put_with_http_info(id, name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductFieldsApi.product_fields_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProductFieldsApi.product_fields_id_put"
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling ProductFieldsApi.product_fields_id_put"
      end
      # resource path
      local_var_path = "/productFields/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}
      form_params["name"] = name

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'options'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductFieldsApi#product_fields_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a new product field
    # Adds a new product field
    # @param name Name of the field
    # @param field_type Type of the field.&lt;dl class&#x3D;\&quot;fields-list\&quot;&gt;&lt;dt&gt;varchar&lt;/dt&gt;&lt;dd&gt;Text (up to 255 characters)&lt;/dd&gt;&lt;dt&gt;varchar_auto&lt;/dt&gt;&lt;dd&gt;Autocomplete text (up to 255 characters)&lt;/dd&gt;&lt;dt&gt;text&lt;/dt&gt;&lt;dd&gt;Long text (up to 65k characters)&lt;/dd&gt;&lt;dt&gt;double&lt;/dt&gt;&lt;dd&gt;Numeric value&lt;/dd&gt;&lt;dt&gt;monetary&lt;/dt&gt;&lt;dd&gt;Monetary field (has a numeric value and a currency value)&lt;/dd&gt;&lt;dt&gt;date&lt;/dt&gt;&lt;dd&gt;Date (format YYYY-MM-DD)&lt;/dd&gt;&lt;dt&gt;set&lt;/dt&gt;&lt;dd&gt;Options field with a possibility of having multiple chosen options&lt;/dd&gt;&lt;dt&gt;enum&lt;/dt&gt;&lt;dd&gt;Options field with a single possible chosen option&lt;/dd&gt;&lt;dt&gt;user&lt;/dt&gt;&lt;dd&gt;User field (contains a user ID of another Pipedrive user)&lt;/dd&gt;&lt;dt&gt;org&lt;/dt&gt;&lt;dd&gt;Organization field (contains an organization ID which is stored on the same account)&lt;/dd&gt;&lt;dt&gt;people&lt;/dt&gt;&lt;dd&gt;Person field (contains a product ID which is stored on the same account)&lt;/dd&gt;&lt;dt&gt;phone&lt;/dt&gt;&lt;dd&gt;Phone field (up to 255 numbers and/or characters)&lt;/dd&gt;&lt;dt&gt;time&lt;/dt&gt;&lt;dd&gt;Time field (format HH:MM:SS)&lt;/dd&gt;&lt;dt&gt;timerange&lt;/dt&gt;&lt;dd&gt;Time-range field (has a start time and end time value, both HH:MM:SS)&lt;/dd&gt;&lt;dt&gt;daterange&lt;/dt&gt;&lt;dd&gt;Date-range field (has a start date and end date value, both YYYY-MM-DD)&lt;/dd&gt;&lt;/dl&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [] :options When field_type is either set or enum, possible options must be supplied as a JSON-encoded sequential array, for example: [\&quot;red\&quot;,\&quot;blue\&quot;,\&quot;lilac\&quot;]
    # @return [nil]
    def product_fields_post(name, field_type, opts = {})
      product_fields_post_with_http_info(name, field_type, opts)
      return nil
    end

    # Add a new product field
    # Adds a new product field
    # @param name Name of the field
    # @param field_type Type of the field.&lt;dl class&#x3D;\&quot;fields-list\&quot;&gt;&lt;dt&gt;varchar&lt;/dt&gt;&lt;dd&gt;Text (up to 255 characters)&lt;/dd&gt;&lt;dt&gt;varchar_auto&lt;/dt&gt;&lt;dd&gt;Autocomplete text (up to 255 characters)&lt;/dd&gt;&lt;dt&gt;text&lt;/dt&gt;&lt;dd&gt;Long text (up to 65k characters)&lt;/dd&gt;&lt;dt&gt;double&lt;/dt&gt;&lt;dd&gt;Numeric value&lt;/dd&gt;&lt;dt&gt;monetary&lt;/dt&gt;&lt;dd&gt;Monetary field (has a numeric value and a currency value)&lt;/dd&gt;&lt;dt&gt;date&lt;/dt&gt;&lt;dd&gt;Date (format YYYY-MM-DD)&lt;/dd&gt;&lt;dt&gt;set&lt;/dt&gt;&lt;dd&gt;Options field with a possibility of having multiple chosen options&lt;/dd&gt;&lt;dt&gt;enum&lt;/dt&gt;&lt;dd&gt;Options field with a single possible chosen option&lt;/dd&gt;&lt;dt&gt;user&lt;/dt&gt;&lt;dd&gt;User field (contains a user ID of another Pipedrive user)&lt;/dd&gt;&lt;dt&gt;org&lt;/dt&gt;&lt;dd&gt;Organization field (contains an organization ID which is stored on the same account)&lt;/dd&gt;&lt;dt&gt;people&lt;/dt&gt;&lt;dd&gt;Person field (contains a product ID which is stored on the same account)&lt;/dd&gt;&lt;dt&gt;phone&lt;/dt&gt;&lt;dd&gt;Phone field (up to 255 numbers and/or characters)&lt;/dd&gt;&lt;dt&gt;time&lt;/dt&gt;&lt;dd&gt;Time field (format HH:MM:SS)&lt;/dd&gt;&lt;dt&gt;timerange&lt;/dt&gt;&lt;dd&gt;Time-range field (has a start time and end time value, both HH:MM:SS)&lt;/dd&gt;&lt;dt&gt;daterange&lt;/dt&gt;&lt;dd&gt;Date-range field (has a start date and end date value, both YYYY-MM-DD)&lt;/dd&gt;&lt;/dl&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [] :options When field_type is either set or enum, possible options must be supplied as a JSON-encoded sequential array, for example: [\&quot;red\&quot;,\&quot;blue\&quot;,\&quot;lilac\&quot;]
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def product_fields_post_with_http_info(name, field_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductFieldsApi.product_fields_post ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling ProductFieldsApi.product_fields_post"
      end
      # verify the required parameter 'field_type' is set
      if @api_client.config.client_side_validation && field_type.nil?
        fail ArgumentError, "Missing the required parameter 'field_type' when calling ProductFieldsApi.product_fields_post"
      end
      # resource path
      local_var_path = "/productFields"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}
      form_params["name"] = name
      form_params["field_type"] = field_type

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'options'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductFieldsApi#product_fields_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
