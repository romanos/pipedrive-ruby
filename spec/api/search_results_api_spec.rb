=begin
#Pipedrive API v1

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Pipedrive::SearchResultsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SearchResultsApi' do
  before do
    # run before each test
    @instance = Pipedrive::SearchResultsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SearchResultsApi' do
    it 'should create an instance of SearchResultsApi' do
      expect(@instance).to be_instance_of(Pipedrive::SearchResultsApi)
    end
  end

  # unit tests for search_results_field_get
  # Perform a search using a specific field value
  # Performs a search from a specific field&#39;s values. Results can be either the distinct values of the field (useful for searching autocomplete field values), or actual items IDs (deals, persons, organizations or products). Works only with the following field types: varchar, varchar_auto, double, address, text, phone, date.
  # @param term Search term to look for, minimum 2 characters.
  # @param field_type Type of the field to perform the search from.
  # @param field_key Key of the field to search from. Field key can be obtained by fetching the list of fields using any of fields API GET methods (dealFields, personFields, ..).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :exact_match When enabled, only full exact matches against the given term are returned. By default, term can be present anywhere in the resulting field values to be considered a match. The minimum 2 character limit for the term is discarded when exact_match is enabled.
  # @option opts [String] :return_field_key Name of the field in search results from which the search was performed. When omitted, &#39;value&#39; will be used. You may want to set this parameter to match the field_key.
  # @option opts [String] :return_item_ids Whether to return matching items IDs in search results. When omitted or set to 0, only distinct values of the searched field are returned. When enabled, the return_field_key parameter is ignored and the results include the searched field as its own key.
  # @option opts [Float] :start Pagination start
  # @option opts [Float] :limit Items shown per page
  # @return [nil]
  describe 'search_results_field_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_results_get
  # Perform a search
  # Performs a search across the account and returns SearchResults.
  # @param term Search term to look for, minimum 2 characters.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :item_type Search for items of exact type. If omitted, all types of items are searched.
  # @option opts [Float] :start Pagination start
  # @option opts [Float] :limit Items shown per page
  # @option opts [String] :exact_match When enabled, only full exact matches against the given term are returned. The minimum 2 character limit for the term is discarded when exact_match is enabled. It will only work if search term is 30 characters or less.
  # @return [nil]
  describe 'search_results_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end