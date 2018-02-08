=begin
#Pipedrive API v1

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module Pipedrive
  class NotesApi
    attr_accessor :api_client

    def initialize(api_client = Client.default)
      @api_client = api_client
    end

    # Get all notes
    # Returns all notes
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :user_id ID of the user who&#39;s notes to fetch. If omitted, notes by all users will be returned.
    # @option opts [Float] :deal_id ID of the deal whih notes to fetch. If omitted, notes about all deals with be returned.
    # @option opts [Float] :person_id ID of the person whih notes to fetch. If omitted, notes about all persons with be returned.
    # @option opts [Float] :org_id ID of the organization whih notes to fetch. If omitted, notes about all organizations with be returned.
    # @option opts [Float] :start Pagination start (default to 0)
    # @option opts [Float] :limit Items shown per page
    # @option opts [String] :sort Field names and sorting mode separated by comma (field_name_1 ASC, field_name_2 DESC). Only first-level field keys are supported (no nested keys). Supported fields: id, user_id, deal_id, person_id, org_id, content, add_time, update_time. (default to )
    # @option opts [String] :start_date Date in format of YYYY-MM-DD from which notes to fetch from. (default to )
    # @option opts [String] :end_date Date in format of YYYY-MM-DD until which notes to fetch to. (default to )
    # @option opts [String] :pinned_to_deal_flag If set, then results are filtered by note to deal pinning state. (default to )
    # @option opts [String] :pinned_to_organization_flag If set, then results are filtered by note to organization pinning state. (default to )
    # @option opts [String] :pinned_to_person_flag If set, then results are filtered by note to person pinning state. (default to )
    # @return [nil]
    def notes_get(opts = {})
      notes_get_with_http_info(opts)
      end

    # Get all notes
    # Returns all notes
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :user_id ID of the user who&#39;s notes to fetch. If omitted, notes by all users will be returned.
    # @option opts [Float] :deal_id ID of the deal whih notes to fetch. If omitted, notes about all deals with be returned.
    # @option opts [Float] :person_id ID of the person whih notes to fetch. If omitted, notes about all persons with be returned.
    # @option opts [Float] :org_id ID of the organization whih notes to fetch. If omitted, notes about all organizations with be returned.
    # @option opts [Float] :start Pagination start
    # @option opts [Float] :limit Items shown per page
    # @option opts [String] :sort Field names and sorting mode separated by comma (field_name_1 ASC, field_name_2 DESC). Only first-level field keys are supported (no nested keys). Supported fields: id, user_id, deal_id, person_id, org_id, content, add_time, update_time.
    # @option opts [String] :start_date Date in format of YYYY-MM-DD from which notes to fetch from.
    # @option opts [String] :end_date Date in format of YYYY-MM-DD until which notes to fetch to.
    # @option opts [String] :pinned_to_deal_flag If set, then results are filtered by note to deal pinning state.
    # @option opts [String] :pinned_to_organization_flag If set, then results are filtered by note to organization pinning state.
    # @option opts [String] :pinned_to_person_flag If set, then results are filtered by note to person pinning state.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def notes_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotesApi.notes_get ..."
      end
      # resource path
      local_var_path = "/notes"

      # query parameters
      query_params = {}
      query_params[:'user_id'] = opts[:'user_id'] if !opts[:'user_id'].nil?
      query_params[:'deal_id'] = opts[:'deal_id'] if !opts[:'deal_id'].nil?
      query_params[:'person_id'] = opts[:'person_id'] if !opts[:'person_id'].nil?
      query_params[:'org_id'] = opts[:'org_id'] if !opts[:'org_id'].nil?
      query_params[:'start'] = opts[:'start'] if !opts[:'start'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'start_date'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'end_date'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'pinned_to_deal_flag'] = opts[:'pinned_to_deal_flag'] if !opts[:'pinned_to_deal_flag'].nil?
      query_params[:'pinned_to_organization_flag'] = opts[:'pinned_to_organization_flag'] if !opts[:'pinned_to_organization_flag'].nil?
      query_params[:'pinned_to_person_flag'] = opts[:'pinned_to_person_flag'] if !opts[:'pinned_to_person_flag'].nil?

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
        @api_client.config.logger.debug "API called: NotesApi#notes_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return response
    end

    # Delete a note
    # Deletes a specific note.
    # @param id ID of the note
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def notes_id_delete(id, opts = {})
      notes_id_delete_with_http_info(id, opts)
      end

    # Delete a note
    # Deletes a specific note.
    # @param id ID of the note
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def notes_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotesApi.notes_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling NotesApi.notes_id_delete"
      end
      # resource path
      local_var_path = "/notes/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = [ 'access_token' ]
      response = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotesApi#notes_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return response
    end

    # Get one note
    # Returns details about a specific note.
    # @param id ID of the note
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def notes_id_get(id, opts = {})
      notes_id_get_with_http_info(id, opts)
      end

    # Get one note
    # Returns details about a specific note.
    # @param id ID of the note
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def notes_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotesApi.notes_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling NotesApi.notes_id_get"
      end
      # resource path
      local_var_path = "/notes/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

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
        @api_client.config.logger.debug "API called: NotesApi#notes_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return response
    end

    # Update a note
    # Updates a note
    # @param id ID of the note
    # @param content Content of the note in HTML format. Subject to sanitization on the back-end.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :deal_id ID of the deal the note will be attached to.
    # @option opts [Float] :person_id ID of the person this note will be attached to
    # @option opts [Float] :org_id ID of the organization this note will be attached to
    # @option opts [String] :pinned_to_deal_flag If set, then results are filtered by note to deal pinning state. (default to )
    # @option opts [String] :pinned_to_organization_flag If set, then results are filtered by note to organization pinning state. (default to )
    # @option opts [String] :pinned_to_person_flag If set, then results are filtered by note to person pinning state. (default to )
    # @return [nil]
    def notes_id_put(id, content, opts = {})
      notes_id_put_with_http_info(id, content, opts)
      end

    # Update a note
    # Updates a note
    # @param id ID of the note
    # @param content Content of the note in HTML format. Subject to sanitization on the back-end.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :deal_id ID of the deal the note will be attached to.
    # @option opts [Float] :person_id ID of the person this note will be attached to
    # @option opts [Float] :org_id ID of the organization this note will be attached to
    # @option opts [String] :pinned_to_deal_flag If set, then results are filtered by note to deal pinning state.
    # @option opts [String] :pinned_to_organization_flag If set, then results are filtered by note to organization pinning state.
    # @option opts [String] :pinned_to_person_flag If set, then results are filtered by note to person pinning state.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def notes_id_put_with_http_info(id, content, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotesApi.notes_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling NotesApi.notes_id_put"
      end
      # verify the required parameter 'content' is set
      if @api_client.config.client_side_validation && content.nil?
        fail ArgumentError, "Missing the required parameter 'content' when calling NotesApi.notes_id_put"
      end
      # resource path
      local_var_path = "/notes/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}
      form_params["content"] = content
      form_params["deal_id"] = opts[:'deal_id'] if !opts[:'deal_id'].nil?
      form_params["person_id"] = opts[:'person_id'] if !opts[:'person_id'].nil?
      form_params["org_id"] = opts[:'org_id'] if !opts[:'org_id'].nil?
      form_params["pinned_to_deal_flag"] = opts[:'pinned_to_deal_flag'] if !opts[:'pinned_to_deal_flag'].nil?
      form_params["pinned_to_organization_flag"] = opts[:'pinned_to_organization_flag'] if !opts[:'pinned_to_organization_flag'].nil?
      form_params["pinned_to_person_flag"] = opts[:'pinned_to_person_flag'] if !opts[:'pinned_to_person_flag'].nil?

      # http body (model)
      post_body = nil
      auth_names = [ 'access_token' ]
      response = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotesApi#notes_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return response
    end

    # Add a note
    # Adds a new note
    # @param content Content of the note in HTML format. Subject to sanitization on the back-end.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :deal_id ID of the deal the note will be attached to.
    # @option opts [Float] :person_id ID of the person this note will be attached to
    # @option opts [Float] :org_id ID of the organization this note will be attached to
    # @option opts [String] :pinned_to_deal_flag If set, then results are filtered by note to deal pinning state (deal_id is also required). (default to )
    # @option opts [String] :pinned_to_organization_flag If set, then results are filtered by note to organization pinning state (org_id is also required). (default to )
    # @option opts [String] :pinned_to_person_flag If set, then results are filtered by note to person pinning state (person_id is also required). (default to )
    # @return [nil]
    def notes_post(content, opts = {})
      notes_post_with_http_info(content, opts)
      end

    # Add a note
    # Adds a new note
    # @param content Content of the note in HTML format. Subject to sanitization on the back-end.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :deal_id ID of the deal the note will be attached to.
    # @option opts [Float] :person_id ID of the person this note will be attached to
    # @option opts [Float] :org_id ID of the organization this note will be attached to
    # @option opts [String] :pinned_to_deal_flag If set, then results are filtered by note to deal pinning state (deal_id is also required).
    # @option opts [String] :pinned_to_organization_flag If set, then results are filtered by note to organization pinning state (org_id is also required).
    # @option opts [String] :pinned_to_person_flag If set, then results are filtered by note to person pinning state (person_id is also required).
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def notes_post_with_http_info(content, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotesApi.notes_post ..."
      end
      # verify the required parameter 'content' is set
      if @api_client.config.client_side_validation && content.nil?
        fail ArgumentError, "Missing the required parameter 'content' when calling NotesApi.notes_post"
      end
      # resource path
      local_var_path = "/notes"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}
      form_params["content"] = content
      form_params["deal_id"] = opts[:'deal_id'] if !opts[:'deal_id'].nil?
      form_params["person_id"] = opts[:'person_id'] if !opts[:'person_id'].nil?
      form_params["org_id"] = opts[:'org_id'] if !opts[:'org_id'].nil?
      form_params["pinned_to_deal_flag"] = opts[:'pinned_to_deal_flag'] if !opts[:'pinned_to_deal_flag'].nil?
      form_params["pinned_to_organization_flag"] = opts[:'pinned_to_organization_flag'] if !opts[:'pinned_to_organization_flag'].nil?
      form_params["pinned_to_person_flag"] = opts[:'pinned_to_person_flag'] if !opts[:'pinned_to_person_flag'].nil?

      # http body (model)
      post_body = nil
      auth_names = [ 'access_token' ]
      response = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotesApi#notes_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return response
    end
  end
end
