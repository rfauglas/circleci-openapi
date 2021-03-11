=begin
#CircleCI API

#This describes the resources that make up the CircleCI API v2.  # Authentication  <!-- ReDoc-Inject: <security-definitions> -->

The version of the OpenAPI document: v2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0-SNAPSHOT

=end

require 'cgi'

module CircleciOpenapi
  class JobApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cancel job
    # Cancel job with a given job number.
    # @param job_number [AnyType] The number of the job.
    # @param project_slug [String] Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped.
    # @param [Hash] opts the optional parameters
    # @return [MessageResponse]
    def cancel_job(job_number, project_slug, opts = {})
      data, _status_code, _headers = cancel_job_with_http_info(job_number, project_slug, opts)
      data
    end

    # Cancel job
    # Cancel job with a given job number.
    # @param job_number [AnyType] The number of the job.
    # @param project_slug [String] Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MessageResponse, Integer, Hash)>] MessageResponse data, response status code and response headers
    def cancel_job_with_http_info(job_number, project_slug, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobApi.cancel_job ...'
      end
      # verify the required parameter 'job_number' is set
      if @api_client.config.client_side_validation && job_number.nil?
        fail ArgumentError, "Missing the required parameter 'job_number' when calling JobApi.cancel_job"
      end
      # verify the required parameter 'project_slug' is set
      if @api_client.config.client_side_validation && project_slug.nil?
        fail ArgumentError, "Missing the required parameter 'project_slug' when calling JobApi.cancel_job"
      end
      # resource path
      local_var_path = '/project/{project-slug}/job/{job-number}/cancel'.sub('{' + 'job-number' + '}', CGI.escape(job_number.to_s)).sub('{' + 'project-slug' + '}', CGI.escape(project_slug.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MessageResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key_header', 'api_key_query', 'basic_auth']

      new_options = opts.merge(
        :operation => :"JobApi.cancel_job",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobApi#cancel_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a job's artifacts
    # Returns a job's artifacts.
    # @param job_number [AnyType] The number of the job.
    # @param project_slug [String] Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped.
    # @param [Hash] opts the optional parameters
    # @return [ArtifactListResponse]
    def get_job_artifacts(job_number, project_slug, opts = {})
      data, _status_code, _headers = get_job_artifacts_with_http_info(job_number, project_slug, opts)
      data
    end

    # Get a job&#39;s artifacts
    # Returns a job&#39;s artifacts.
    # @param job_number [AnyType] The number of the job.
    # @param project_slug [String] Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ArtifactListResponse, Integer, Hash)>] ArtifactListResponse data, response status code and response headers
    def get_job_artifacts_with_http_info(job_number, project_slug, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobApi.get_job_artifacts ...'
      end
      # verify the required parameter 'job_number' is set
      if @api_client.config.client_side_validation && job_number.nil?
        fail ArgumentError, "Missing the required parameter 'job_number' when calling JobApi.get_job_artifacts"
      end
      # verify the required parameter 'project_slug' is set
      if @api_client.config.client_side_validation && project_slug.nil?
        fail ArgumentError, "Missing the required parameter 'project_slug' when calling JobApi.get_job_artifacts"
      end
      # resource path
      local_var_path = '/project/{project-slug}/{job-number}/artifacts'.sub('{' + 'job-number' + '}', CGI.escape(job_number.to_s)).sub('{' + 'project-slug' + '}', CGI.escape(project_slug.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ArtifactListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key_header', 'api_key_query', 'basic_auth']

      new_options = opts.merge(
        :operation => :"JobApi.get_job_artifacts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobApi#get_job_artifacts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get job details
    # Returns job details.
    # @param job_number [AnyType] The number of the job.
    # @param project_slug [String] Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped.
    # @param [Hash] opts the optional parameters
    # @return [JobDetails]
    def get_job_details(job_number, project_slug, opts = {})
      data, _status_code, _headers = get_job_details_with_http_info(job_number, project_slug, opts)
      data
    end

    # Get job details
    # Returns job details.
    # @param job_number [AnyType] The number of the job.
    # @param project_slug [String] Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped.
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobDetails, Integer, Hash)>] JobDetails data, response status code and response headers
    def get_job_details_with_http_info(job_number, project_slug, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobApi.get_job_details ...'
      end
      # verify the required parameter 'job_number' is set
      if @api_client.config.client_side_validation && job_number.nil?
        fail ArgumentError, "Missing the required parameter 'job_number' when calling JobApi.get_job_details"
      end
      # verify the required parameter 'project_slug' is set
      if @api_client.config.client_side_validation && project_slug.nil?
        fail ArgumentError, "Missing the required parameter 'project_slug' when calling JobApi.get_job_details"
      end
      # resource path
      local_var_path = '/project/{project-slug}/job/{job-number}'.sub('{' + 'job-number' + '}', CGI.escape(job_number.to_s)).sub('{' + 'project-slug' + '}', CGI.escape(project_slug.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'JobDetails'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key_header', 'api_key_query', 'basic_auth']

      new_options = opts.merge(
        :operation => :"JobApi.get_job_details",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobApi#get_job_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get test metadata
    # Get test metadata for a build.
    # @param job_number [AnyType] The number of the job.
    # @param project_slug [String] Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped.
    # @param [Hash] opts the optional parameters
    # @return [TestsResponse]
    def get_tests(job_number, project_slug, opts = {})
      data, _status_code, _headers = get_tests_with_http_info(job_number, project_slug, opts)
      data
    end

    # Get test metadata
    # Get test metadata for a build.
    # @param job_number [AnyType] The number of the job.
    # @param project_slug [String] Project slug in the form &#x60;vcs-slug/org-name/repo-name&#x60;. The &#x60;/&#x60; characters may be URL-escaped.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TestsResponse, Integer, Hash)>] TestsResponse data, response status code and response headers
    def get_tests_with_http_info(job_number, project_slug, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobApi.get_tests ...'
      end
      # verify the required parameter 'job_number' is set
      if @api_client.config.client_side_validation && job_number.nil?
        fail ArgumentError, "Missing the required parameter 'job_number' when calling JobApi.get_tests"
      end
      # verify the required parameter 'project_slug' is set
      if @api_client.config.client_side_validation && project_slug.nil?
        fail ArgumentError, "Missing the required parameter 'project_slug' when calling JobApi.get_tests"
      end
      # resource path
      local_var_path = '/project/{project-slug}/{job-number}/tests'.sub('{' + 'job-number' + '}', CGI.escape(job_number.to_s)).sub('{' + 'project-slug' + '}', CGI.escape(project_slug.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TestsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key_header', 'api_key_query', 'basic_auth']

      new_options = opts.merge(
        :operation => :"JobApi.get_tests",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobApi#get_tests\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end