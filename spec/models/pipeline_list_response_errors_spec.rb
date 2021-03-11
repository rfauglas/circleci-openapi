=begin
#CircleCI API

#This describes the resources that make up the CircleCI API v2.  # Authentication  <!-- ReDoc-Inject: <security-definitions> -->

The version of the OpenAPI document: v2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for CircleciOpenapi::PipelineListResponseErrors
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe CircleciOpenapi::PipelineListResponseErrors do
  let(:instance) { CircleciOpenapi::PipelineListResponseErrors.new }

  describe 'test an instance of PipelineListResponseErrors' do
    it 'should create an instance of PipelineListResponseErrors' do
      expect(instance).to be_instance_of(CircleciOpenapi::PipelineListResponseErrors)
    end
  end
  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["config", "plan"])
      # validator.allowable_values.each do |value|
      #   expect { instance.type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "message"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
