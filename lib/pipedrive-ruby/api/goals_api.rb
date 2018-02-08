=begin
#Pipedrive API v1

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module Pipedrive
  class GoalsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get all goals
    # Returns data about all goals.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :user_id ID of the user who&#39;s goal to fetch. When omitted, only your goals will be returned.
    # @option opts [String] :everyone If provided, everyone&#39;s goals will be returned. (default to )
    # @return [nil]
    def goals_get(opts = {})
      goals_get_with_http_info(opts)
      return nil
    end

    # Get all goals
    # Returns data about all goals.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :user_id ID of the user who&#39;s goal to fetch. When omitted, only your goals will be returned.
    # @option opts [String] :everyone If provided, everyone&#39;s goals will be returned.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def goals_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: GoalsApi.goals_get ..."
      end
      # resource path
      local_var_path = "/goals"

      # query parameters
      query_params = {}
      query_params[:'user_id'] = opts[:'user_id'] if !opts[:'user_id'].nil?
      query_params[:'everyone'] = opts[:'everyone'] if !opts[:'everyone'].nil?

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
        @api_client.config.logger.debug "API called: GoalsApi#goals_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete existing goal
    # Marks goal as deleted.
    # @param id ID of the goal to mark as deleted.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def goals_id_delete(id, opts = {})
      goals_id_delete_with_http_info(id, opts)
      return nil
    end

    # Delete existing goal
    # Marks goal as deleted.
    # @param id ID of the goal to mark as deleted.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def goals_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: GoalsApi.goals_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling GoalsApi.goals_id_delete"
      end
      # resource path
      local_var_path = "/goals/{id}".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: GoalsApi#goals_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get details of a goal
    # Returns data about a specific goal.
    # @param id ID of the goal to fetch.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def goals_id_get(id, opts = {})
      goals_id_get_with_http_info(id, opts)
      return nil
    end

    # Get details of a goal
    # Returns data about a specific goal.
    # @param id ID of the goal to fetch.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def goals_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: GoalsApi.goals_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling GoalsApi.goals_id_get"
      end
      # resource path
      local_var_path = "/goals/{id}".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: GoalsApi#goals_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update goal details
    # Updates the properties of a goal.
    # @param id ID of the goal to update.
    # @param goal_type Goal type.
    # @param expected_type Expected type.
    # @param period Period of time.
    # @param expected Expected sum or number.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :user_id ID of the user who will be associated with this goal. If omitted, the authorized user will be used.
    # @option opts [Float] :stage_id ID of the stage. This field is required when goal_type &#x3D; stage.
    # @option opts [String] :currency Currency of the goal. Accepts a 3-character currency code. If omitted, currency will be set to the default currency of the authorized user. (default to )
    # @option opts [Float] :pipeline_id ID of the pipeline to add goal to.
    # @return [nil]
    def goals_id_put(id, goal_type, expected_type, period, expected, opts = {})
      goals_id_put_with_http_info(id, goal_type, expected_type, period, expected, opts)
      return nil
    end

    # Update goal details
    # Updates the properties of a goal.
    # @param id ID of the goal to update.
    # @param goal_type Goal type.
    # @param expected_type Expected type.
    # @param period Period of time.
    # @param expected Expected sum or number.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :user_id ID of the user who will be associated with this goal. If omitted, the authorized user will be used.
    # @option opts [Float] :stage_id ID of the stage. This field is required when goal_type &#x3D; stage.
    # @option opts [String] :currency Currency of the goal. Accepts a 3-character currency code. If omitted, currency will be set to the default currency of the authorized user.
    # @option opts [Float] :pipeline_id ID of the pipeline to add goal to.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def goals_id_put_with_http_info(id, goal_type, expected_type, period, expected, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: GoalsApi.goals_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling GoalsApi.goals_id_put"
      end
      # verify the required parameter 'goal_type' is set
      if @api_client.config.client_side_validation && goal_type.nil?
        fail ArgumentError, "Missing the required parameter 'goal_type' when calling GoalsApi.goals_id_put"
      end
      # verify the required parameter 'expected_type' is set
      if @api_client.config.client_side_validation && expected_type.nil?
        fail ArgumentError, "Missing the required parameter 'expected_type' when calling GoalsApi.goals_id_put"
      end
      # verify the required parameter 'period' is set
      if @api_client.config.client_side_validation && period.nil?
        fail ArgumentError, "Missing the required parameter 'period' when calling GoalsApi.goals_id_put"
      end
      # verify the required parameter 'expected' is set
      if @api_client.config.client_side_validation && expected.nil?
        fail ArgumentError, "Missing the required parameter 'expected' when calling GoalsApi.goals_id_put"
      end
      # resource path
      local_var_path = "/goals/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}
      form_params["goal_type"] = goal_type
      form_params["expected_type"] = expected_type
      form_params["period"] = period
      form_params["expected"] = expected
      form_params["user_id"] = opts[:'user_id'] if !opts[:'user_id'].nil?
      form_params["stage_id"] = opts[:'stage_id'] if !opts[:'stage_id'].nil?
      form_params["currency"] = opts[:'currency'] if !opts[:'currency'].nil?
      form_params["pipeline_id"] = opts[:'pipeline_id'] if !opts[:'pipeline_id'].nil?

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
        @api_client.config.logger.debug "API called: GoalsApi#goals_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get results of one goal
    # Lists results of a specific goal.
    # @param id ID of the goal to mark as deleted.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :period_start Start of the period. Date in format of YYYY-MM-DD. (default to )
    # @option opts [String] :period_end End of the period. Date in format of YYYY-MM-DD. (default to )
    # @return [nil]
    def goals_id_results_get(id, opts = {})
      goals_id_results_get_with_http_info(id, opts)
      return nil
    end

    # Get results of one goal
    # Lists results of a specific goal.
    # @param id ID of the goal to mark as deleted.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :period_start Start of the period. Date in format of YYYY-MM-DD.
    # @option opts [String] :period_end End of the period. Date in format of YYYY-MM-DD.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def goals_id_results_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: GoalsApi.goals_id_results_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling GoalsApi.goals_id_results_get"
      end
      # resource path
      local_var_path = "/goals/{id}/results".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'period_start'] = opts[:'period_start'] if !opts[:'period_start'].nil?
      query_params[:'period_end'] = opts[:'period_end'] if !opts[:'period_end'].nil?

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
        @api_client.config.logger.debug "API called: GoalsApi#goals_id_results_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a new goal
    # Adds a new goal, returns the ID upon success.
    # @param goal_type Goal type.
    # @param expected_type Expected type.
    # @param period Period of time.
    # @param expected Expected sum or number.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :user_id ID of the user who will be associated with this goal. If omitted, the authorized user will be used.
    # @option opts [Float] :stage_id ID of the stage. This field is required when goal_type &#x3D; stage.
    # @option opts [String] :currency Currency of the goal. Accepts a 3-character currency code. If omitted, currency will be set to the default currency of the authorized user. (default to )
    # @option opts [Float] :pipeline_id ID of the pipeline to add goal to.
    # @return [nil]
    def goals_post(goal_type, expected_type, period, expected, opts = {})
      goals_post_with_http_info(goal_type, expected_type, period, expected, opts)
      return nil
    end

    # Add a new goal
    # Adds a new goal, returns the ID upon success.
    # @param goal_type Goal type.
    # @param expected_type Expected type.
    # @param period Period of time.
    # @param expected Expected sum or number.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :user_id ID of the user who will be associated with this goal. If omitted, the authorized user will be used.
    # @option opts [Float] :stage_id ID of the stage. This field is required when goal_type &#x3D; stage.
    # @option opts [String] :currency Currency of the goal. Accepts a 3-character currency code. If omitted, currency will be set to the default currency of the authorized user.
    # @option opts [Float] :pipeline_id ID of the pipeline to add goal to.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def goals_post_with_http_info(goal_type, expected_type, period, expected, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: GoalsApi.goals_post ..."
      end
      # verify the required parameter 'goal_type' is set
      if @api_client.config.client_side_validation && goal_type.nil?
        fail ArgumentError, "Missing the required parameter 'goal_type' when calling GoalsApi.goals_post"
      end
      # verify the required parameter 'expected_type' is set
      if @api_client.config.client_side_validation && expected_type.nil?
        fail ArgumentError, "Missing the required parameter 'expected_type' when calling GoalsApi.goals_post"
      end
      # verify the required parameter 'period' is set
      if @api_client.config.client_side_validation && period.nil?
        fail ArgumentError, "Missing the required parameter 'period' when calling GoalsApi.goals_post"
      end
      # verify the required parameter 'expected' is set
      if @api_client.config.client_side_validation && expected.nil?
        fail ArgumentError, "Missing the required parameter 'expected' when calling GoalsApi.goals_post"
      end
      # resource path
      local_var_path = "/goals"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}
      form_params["goal_type"] = goal_type
      form_params["expected_type"] = expected_type
      form_params["period"] = period
      form_params["expected"] = expected
      form_params["user_id"] = opts[:'user_id'] if !opts[:'user_id'].nil?
      form_params["stage_id"] = opts[:'stage_id'] if !opts[:'stage_id'].nil?
      form_params["currency"] = opts[:'currency'] if !opts[:'currency'].nil?
      form_params["pipeline_id"] = opts[:'pipeline_id'] if !opts[:'pipeline_id'].nil?

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
        @api_client.config.logger.debug "API called: GoalsApi#goals_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
