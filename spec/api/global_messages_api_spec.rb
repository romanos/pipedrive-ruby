=begin
#Pipedrive API v1

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Pipedrive::GlobalMessagesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GlobalMessagesApi' do
  before do
    # run before each test
    @instance = Pipedrive::GlobalMessagesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GlobalMessagesApi' do
    it 'should create an instance of GlobalMessagesApi' do
      expect(@instance).to be_instance_of(Pipedrive::GlobalMessagesApi)
    end
  end

  # unit tests for global_messages_get
  # Get global messages
  # Returns data about global messages to display for the authorized user.
  # @param [Hash] opts the optional parameters
  # @option opts [Float] :limit Number of messages to get from 1 to 100. 1 message is returned by default.
  # @return [nil]
  describe 'global_messages_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for global_messages_id_delete
  # Dismiss a global message
  # Removes global message from being shown, if message is dismissible
  # @param id ID of global message to be dismissed.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'global_messages_id_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end