=begin
#Pipedrive API v1

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module Pipedrive
  class PipelinesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get all pipelines
    # Returns data about all pipelines
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def pipelines_get(opts = {})
      pipelines_get_with_http_info(opts)
      return nil
    end

    # Get all pipelines
    # Returns data about all pipelines
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def pipelines_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PipelinesApi.pipelines_get ..."
      end
      # resource path
      local_var_path = "/pipelines"

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
        @api_client.config.logger.debug "API called: PipelinesApi#pipelines_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get deals conversion rates in pipeline
    # Returns all stage-to-stage conversion and pipeline-to-close rates for given time period.
    # @param id ID of the pipeline.
    # @param start_date Start of the period. Date in format of YYYY-MM-DD.
    # @param end_date End of the period. Date in format of YYYY-MM-DD.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :user_id ID of the user who&#39;s pipeline metrics statistics to fetch. If omitted, the authorized user will be used.
    # @return [nil]
    def pipelines_id_conversion_statistics_get(id, start_date, end_date, opts = {})
      pipelines_id_conversion_statistics_get_with_http_info(id, start_date, end_date, opts)
      return nil
    end

    # Get deals conversion rates in pipeline
    # Returns all stage-to-stage conversion and pipeline-to-close rates for given time period.
    # @param id ID of the pipeline.
    # @param start_date Start of the period. Date in format of YYYY-MM-DD.
    # @param end_date End of the period. Date in format of YYYY-MM-DD.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :user_id ID of the user who&#39;s pipeline metrics statistics to fetch. If omitted, the authorized user will be used.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def pipelines_id_conversion_statistics_get_with_http_info(id, start_date, end_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PipelinesApi.pipelines_id_conversion_statistics_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PipelinesApi.pipelines_id_conversion_statistics_get"
      end
      # verify the required parameter 'start_date' is set
      if @api_client.config.client_side_validation && start_date.nil?
        fail ArgumentError, "Missing the required parameter 'start_date' when calling PipelinesApi.pipelines_id_conversion_statistics_get"
      end
      # verify the required parameter 'end_date' is set
      if @api_client.config.client_side_validation && end_date.nil?
        fail ArgumentError, "Missing the required parameter 'end_date' when calling PipelinesApi.pipelines_id_conversion_statistics_get"
      end
      # resource path
      local_var_path = "/pipelines/{id}/conversion_statistics".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'start_date'] = start_date
      query_params[:'end_date'] = end_date
      query_params[:'user_id'] = opts[:'user_id'] if !opts[:'user_id'].nil?

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
        @api_client.config.logger.debug "API called: PipelinesApi#pipelines_id_conversion_statistics_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get deals in a pipeline
    # Lists deals in a specific pipeline across all its stages
    # @param id ID of the pipeline to fetch.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :filter_id If supplied, only deals matching the given filter will be returned.
    # @option opts [Float] :user_id If supplied, filter_id will not be considered and only deals owned by the given user will be returned. If omitted, deals owned by the authorized user will be returned.
    # @option opts [String] :everyone If supplied, filter_id and user_id will not be considered – instead, deals owned by everyone will be returned. (default to )
    # @option opts [Float] :stage_id If supplied, only deals within the given stage will be returned.
    # @option opts [Float] :start Pagination start (default to 0)
    # @option opts [Float] :limit Items shown per page
    # @option opts [String] :get_summary Whether to include summary of the pipeline in the additional_data or not. (default to )
    # @option opts [String] :totals_convert_currency 3-letter currency code of any of the supported currencies. When supplied, per_stages_converted is returned inside deals_summary inside additional_data which contains the currency-converted total amounts in the given currency per each stage. You may also set this parameter to &#39;default_currency&#39; in which case users default currency is used. Only works when get_summary parameter flag is enabled. (default to )
    # @return [nil]
    def pipelines_id_deals_get(id, opts = {})
      pipelines_id_deals_get_with_http_info(id, opts)
      return nil
    end

    # Get deals in a pipeline
    # Lists deals in a specific pipeline across all its stages
    # @param id ID of the pipeline to fetch.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :filter_id If supplied, only deals matching the given filter will be returned.
    # @option opts [Float] :user_id If supplied, filter_id will not be considered and only deals owned by the given user will be returned. If omitted, deals owned by the authorized user will be returned.
    # @option opts [String] :everyone If supplied, filter_id and user_id will not be considered – instead, deals owned by everyone will be returned.
    # @option opts [Float] :stage_id If supplied, only deals within the given stage will be returned.
    # @option opts [Float] :start Pagination start
    # @option opts [Float] :limit Items shown per page
    # @option opts [String] :get_summary Whether to include summary of the pipeline in the additional_data or not.
    # @option opts [String] :totals_convert_currency 3-letter currency code of any of the supported currencies. When supplied, per_stages_converted is returned inside deals_summary inside additional_data which contains the currency-converted total amounts in the given currency per each stage. You may also set this parameter to &#39;default_currency&#39; in which case users default currency is used. Only works when get_summary parameter flag is enabled.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def pipelines_id_deals_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PipelinesApi.pipelines_id_deals_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PipelinesApi.pipelines_id_deals_get"
      end
      # resource path
      local_var_path = "/pipelines/{id}/deals".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'filter_id'] = opts[:'filter_id'] if !opts[:'filter_id'].nil?
      query_params[:'user_id'] = opts[:'user_id'] if !opts[:'user_id'].nil?
      query_params[:'everyone'] = opts[:'everyone'] if !opts[:'everyone'].nil?
      query_params[:'stage_id'] = opts[:'stage_id'] if !opts[:'stage_id'].nil?
      query_params[:'start'] = opts[:'start'] if !opts[:'start'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'get_summary'] = opts[:'get_summary'] if !opts[:'get_summary'].nil?
      query_params[:'totals_convert_currency'] = opts[:'totals_convert_currency'] if !opts[:'totals_convert_currency'].nil?

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
        @api_client.config.logger.debug "API called: PipelinesApi#pipelines_id_deals_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a pipeline
    # Marks a pipeline as deleted.
    # @param id ID of the pipeline to delete.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def pipelines_id_delete(id, opts = {})
      pipelines_id_delete_with_http_info(id, opts)
      return nil
    end

    # Delete a pipeline
    # Marks a pipeline as deleted.
    # @param id ID of the pipeline to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def pipelines_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PipelinesApi.pipelines_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PipelinesApi.pipelines_id_delete"
      end
      # resource path
      local_var_path = "/pipelines/{id}".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: PipelinesApi#pipelines_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get one pipeline
    # Returns data about a specific pipeline. Also returns the summary of the deals in this pipeline across its stages.
    # @param id ID of the pipeline to fetch.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :totals_convert_currency 3-letter currency code of any of the supported currencies. When supplied, per_stages_converted is returned in deals_summary which contains the currency-converted total amounts in the given currency per each stage. You may also set this parameter to &#39;default_currency&#39; in which case users default currency is used. (default to )
    # @return [nil]
    def pipelines_id_get(id, opts = {})
      pipelines_id_get_with_http_info(id, opts)
      return nil
    end

    # Get one pipeline
    # Returns data about a specific pipeline. Also returns the summary of the deals in this pipeline across its stages.
    # @param id ID of the pipeline to fetch.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :totals_convert_currency 3-letter currency code of any of the supported currencies. When supplied, per_stages_converted is returned in deals_summary which contains the currency-converted total amounts in the given currency per each stage. You may also set this parameter to &#39;default_currency&#39; in which case users default currency is used.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def pipelines_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PipelinesApi.pipelines_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PipelinesApi.pipelines_id_get"
      end
      # resource path
      local_var_path = "/pipelines/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'totals_convert_currency'] = opts[:'totals_convert_currency'] if !opts[:'totals_convert_currency'].nil?

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
        @api_client.config.logger.debug "API called: PipelinesApi#pipelines_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get deals movements in pipeline
    # Returns statistics for deals movements for given time period.
    # @param id ID of the pipeline.
    # @param start_date Start of the period. Date in format of YYYY-MM-DD.
    # @param end_date End of the period. Date in format of YYYY-MM-DD.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :user_id ID of the user who&#39;s pipeline statistics to fetch. If omitted, the authorized user will be used.
    # @return [nil]
    def pipelines_id_movement_statistics_get(id, start_date, end_date, opts = {})
      pipelines_id_movement_statistics_get_with_http_info(id, start_date, end_date, opts)
      return nil
    end

    # Get deals movements in pipeline
    # Returns statistics for deals movements for given time period.
    # @param id ID of the pipeline.
    # @param start_date Start of the period. Date in format of YYYY-MM-DD.
    # @param end_date End of the period. Date in format of YYYY-MM-DD.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :user_id ID of the user who&#39;s pipeline statistics to fetch. If omitted, the authorized user will be used.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def pipelines_id_movement_statistics_get_with_http_info(id, start_date, end_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PipelinesApi.pipelines_id_movement_statistics_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PipelinesApi.pipelines_id_movement_statistics_get"
      end
      # verify the required parameter 'start_date' is set
      if @api_client.config.client_side_validation && start_date.nil?
        fail ArgumentError, "Missing the required parameter 'start_date' when calling PipelinesApi.pipelines_id_movement_statistics_get"
      end
      # verify the required parameter 'end_date' is set
      if @api_client.config.client_side_validation && end_date.nil?
        fail ArgumentError, "Missing the required parameter 'end_date' when calling PipelinesApi.pipelines_id_movement_statistics_get"
      end
      # resource path
      local_var_path = "/pipelines/{id}/movement_statistics".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'start_date'] = start_date
      query_params[:'end_date'] = end_date
      query_params[:'user_id'] = opts[:'user_id'] if !opts[:'user_id'].nil?

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
        @api_client.config.logger.debug "API called: PipelinesApi#pipelines_id_movement_statistics_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit a pipeline
    # Updates pipeline properties
    # @param id ID of the pipeline to fetch.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Name of the pipeline (default to )
    # @option opts [String] :deal_probability Whether deal probability is disabled or enabled for this pipeline. (default to 0)
    # @option opts [Float] :order_nr Defines pipelines order. First order(order_nr&#x3D;0) is the default pipeline.
    # @option opts [String] :active Whether this pipeline will be made inactive (hidden) or active (default to )
    # @return [nil]
    def pipelines_id_put(id, opts = {})
      pipelines_id_put_with_http_info(id, opts)
      return nil
    end

    # Edit a pipeline
    # Updates pipeline properties
    # @param id ID of the pipeline to fetch.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Name of the pipeline
    # @option opts [String] :deal_probability Whether deal probability is disabled or enabled for this pipeline.
    # @option opts [Float] :order_nr Defines pipelines order. First order(order_nr&#x3D;0) is the default pipeline.
    # @option opts [String] :active Whether this pipeline will be made inactive (hidden) or active
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def pipelines_id_put_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PipelinesApi.pipelines_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PipelinesApi.pipelines_id_put"
      end
      # resource path
      local_var_path = "/pipelines/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?
      form_params["deal_probability"] = opts[:'deal_probability'] if !opts[:'deal_probability'].nil?
      form_params["order_nr"] = opts[:'order_nr'] if !opts[:'order_nr'].nil?
      form_params["active"] = opts[:'active'] if !opts[:'active'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PipelinesApi#pipelines_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a new pipeline
    # Adds a new pipeline
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Name of the pipeline (default to )
    # @option opts [String] :deal_probability Whether deal probability is disabled or enabled for this pipeline. (default to 0)
    # @option opts [Float] :order_nr Defines pipelines order. First order(order_nr&#x3D;0) is the default pipeline.
    # @option opts [String] :active Whether this pipeline will be made inactive (hidden) or active (default to 1)
    # @return [nil]
    def pipelines_post(opts = {})
      pipelines_post_with_http_info(opts)
      return nil
    end

    # Add a new pipeline
    # Adds a new pipeline
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Name of the pipeline
    # @option opts [String] :deal_probability Whether deal probability is disabled or enabled for this pipeline.
    # @option opts [Float] :order_nr Defines pipelines order. First order(order_nr&#x3D;0) is the default pipeline.
    # @option opts [String] :active Whether this pipeline will be made inactive (hidden) or active
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def pipelines_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PipelinesApi.pipelines_post ..."
      end
      # resource path
      local_var_path = "/pipelines"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?
      form_params["deal_probability"] = opts[:'deal_probability'] if !opts[:'deal_probability'].nil?
      form_params["order_nr"] = opts[:'order_nr'] if !opts[:'order_nr'].nil?
      form_params["active"] = opts[:'active'] if !opts[:'active'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PipelinesApi#pipelines_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end