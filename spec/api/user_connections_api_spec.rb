=begin
#Pipedrive API v1

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Pipedrive::UserConnectionsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UserConnectionsApi' do
  before do
    # run before each test
    @instance = Pipedrive::UserConnectionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserConnectionsApi' do
    it 'should create an instance of UserConnectionsApi' do
      expect(@instance).to be_instance_of(Pipedrive::UserConnectionsApi)
    end
  end

  # unit tests for user_connections_get
  # Get all user connections
  # Returns data about all connections for authorized user.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'user_connections_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
