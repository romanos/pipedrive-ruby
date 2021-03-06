=begin
#Pipedrive API v1

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module Pipedrive
  class RecentsApi
    attr_accessor :api_client

    def initialize(api_client = Client.default)
      @api_client = api_client
    end

    # Get recents
    # Returns data about all recent changes occured after given timestamp.
    # @param since_timestamp Timestamp in UTC. Format: YYYY-MM-DD HH:MM:SS
    # @param [Hash] opts the optional parameters
    # @option opts [String] :items Multiple selection of item types to include in query (optional) (default to )
    # @option opts [Float] :start Pagination start (default to 0)
    # @option opts [Float] :limit Items shown per page
    # @return [nil]
    def recents_get(since_timestamp, opts = {})
      recents_get_with_http_info(since_timestamp, opts)
      end

    # Get recents
    # Returns data about all recent changes occured after given timestamp.
    # @param since_timestamp Timestamp in UTC. Format: YYYY-MM-DD HH:MM:SS
    # @param [Hash] opts the optional parameters
    # @option opts [String] :items Multiple selection of item types to include in query (optional)
    # @option opts [Float] :start Pagination start
    # @option opts [Float] :limit Items shown per page
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def recents_get_with_http_info(since_timestamp, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RecentsApi.recents_get ..."
      end
      # verify the required parameter 'since_timestamp' is set
      if @api_client.config.client_side_validation && since_timestamp.nil?
        fail ArgumentError, "Missing the required parameter 'since_timestamp' when calling RecentsApi.recents_get"
      end
      # resource path
      local_var_path = "/recents"

      # query parameters
      query_params = {}
      query_params[:'since_timestamp'] = since_timestamp
      query_params[:'items'] = opts[:'items'] if !opts[:'items'].nil?
      query_params[:'start'] = opts[:'start'] if !opts[:'start'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = [ 'access_token' ]
      response = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecentsApi#recents_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return response
    end
  end
end
