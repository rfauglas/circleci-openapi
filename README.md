# circleci_openapi

CircleciOpenapi - the Ruby gem for the CircleCI API

This describes the resources that make up the CircleCI API v2.

# Authentication

<!-- ReDoc-Inject: <security-definitions> -->

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v2
- Package version: 3.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build circleci_openapi.gemspec
```

Then either install the gem locally:

```shell
gem install ./circleci_openapi-3.0.0.gem
```

(for development, run `gem install --dev ./circleci_openapi-3.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'circleci_openapi', '~> 3.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/rfauglas/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'circleci_openapi', :git => 'https://github.com/rfauglas/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'circleci_openapi'

# Setup authorization
CircleciOpenapi.configure do |config|
  # Configure API key authorization: api_key_header
  config.api_key['api_key_header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_header'] = 'Bearer'

  # Configure API key authorization: api_key_query
  config.api_key['api_key_query'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_query'] = 'Bearer'

  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR_USERNAME'
  config.password = 'YOUR_PASSWORD'
end

api_instance = CircleciOpenapi::ContextApi.new
context_id = TODO # String | ID of the context (UUID)
env_var_name = 'POSTGRES_USER' # String | The name of the environment variable
opts = {
  inline_object1: CircleciOpenapi::InlineObject1.new({value: 'some-secret-value'}) # InlineObject1 | 
}

begin
  #Add or update an environment variable
  result = api_instance.add_environment_variable_to_context(context_id, env_var_name, opts)
  p result
rescue CircleciOpenapi::ApiError => e
  puts "Exception when calling ContextApi->add_environment_variable_to_context: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://circleci.com/api/v2*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CircleciOpenapi::ContextApi* | [**add_environment_variable_to_context**](docs/ContextApi.md#add_environment_variable_to_context) | **PUT** /context/{context-id}/environment-variable/{env-var-name} | Add or update an environment variable
*CircleciOpenapi::ContextApi* | [**create_context**](docs/ContextApi.md#create_context) | **POST** /context | Create a new context
*CircleciOpenapi::ContextApi* | [**delete_context**](docs/ContextApi.md#delete_context) | **DELETE** /context/{context-id} | Delete a context
*CircleciOpenapi::ContextApi* | [**delete_environment_variable_from_context**](docs/ContextApi.md#delete_environment_variable_from_context) | **DELETE** /context/{context-id}/environment-variable/{env-var-name} | Remove an environment variable
*CircleciOpenapi::ContextApi* | [**get_context**](docs/ContextApi.md#get_context) | **GET** /context/{context-id} | Get a context
*CircleciOpenapi::ContextApi* | [**list_contexts**](docs/ContextApi.md#list_contexts) | **GET** /context | List contexts
*CircleciOpenapi::ContextApi* | [**list_environment_variables_from_context**](docs/ContextApi.md#list_environment_variables_from_context) | **GET** /context/{context-id}/environment-variable | List environment variables
*CircleciOpenapi::InsightsApi* | [**get_project_job_runs**](docs/InsightsApi.md#get_project_job_runs) | **GET** /insights/{project-slug}/workflows/{workflow-name}/jobs/{job-name} | Get recent runs of a workflow job
*CircleciOpenapi::InsightsApi* | [**get_project_workflow_job_metrics**](docs/InsightsApi.md#get_project_workflow_job_metrics) | **GET** /insights/{project-slug}/workflows/{workflow-name}/jobs | Get summary metrics for a project workflow's jobs.
*CircleciOpenapi::InsightsApi* | [**get_project_workflow_metrics**](docs/InsightsApi.md#get_project_workflow_metrics) | **GET** /insights/{project-slug}/workflows | Get summary metrics for a project's workflows
*CircleciOpenapi::InsightsApi* | [**get_project_workflow_runs**](docs/InsightsApi.md#get_project_workflow_runs) | **GET** /insights/{project-slug}/workflows/{workflow-name} | Get recent runs of a workflow
*CircleciOpenapi::JobApi* | [**cancel_job**](docs/JobApi.md#cancel_job) | **POST** /project/{project-slug}/job/{job-number}/cancel | Cancel job
*CircleciOpenapi::JobApi* | [**get_job_artifacts**](docs/JobApi.md#get_job_artifacts) | **GET** /project/{project-slug}/{job-number}/artifacts | Get a job's artifacts
*CircleciOpenapi::JobApi* | [**get_job_details**](docs/JobApi.md#get_job_details) | **GET** /project/{project-slug}/job/{job-number} | Get job details
*CircleciOpenapi::JobApi* | [**get_tests**](docs/JobApi.md#get_tests) | **GET** /project/{project-slug}/{job-number}/tests | Get test metadata
*CircleciOpenapi::PipelineApi* | [**continue_pipeline**](docs/PipelineApi.md#continue_pipeline) | **POST** /pipeline/continue | Continue a pipeline (Preview)
*CircleciOpenapi::PipelineApi* | [**get_pipeline_by_id**](docs/PipelineApi.md#get_pipeline_by_id) | **GET** /pipeline/{pipeline-id} | Get a pipeline
*CircleciOpenapi::PipelineApi* | [**get_pipeline_by_number**](docs/PipelineApi.md#get_pipeline_by_number) | **GET** /project/{project-slug}/pipeline/{pipeline-number} | Get a pipeline
*CircleciOpenapi::PipelineApi* | [**get_pipeline_config_by_id**](docs/PipelineApi.md#get_pipeline_config_by_id) | **GET** /pipeline/{pipeline-id}/config | Get a pipeline's configuration
*CircleciOpenapi::PipelineApi* | [**list_my_pipelines**](docs/PipelineApi.md#list_my_pipelines) | **GET** /project/{project-slug}/pipeline/mine | Get your pipelines
*CircleciOpenapi::PipelineApi* | [**list_pipelines**](docs/PipelineApi.md#list_pipelines) | **GET** /pipeline | Get a list of pipelines
*CircleciOpenapi::PipelineApi* | [**list_pipelines_for_project**](docs/PipelineApi.md#list_pipelines_for_project) | **GET** /project/{project-slug}/pipeline | Get all pipelines
*CircleciOpenapi::PipelineApi* | [**list_workflows_by_pipeline_id**](docs/PipelineApi.md#list_workflows_by_pipeline_id) | **GET** /pipeline/{pipeline-id}/workflow | Get a pipeline's workflows
*CircleciOpenapi::PipelineApi* | [**trigger_pipeline**](docs/PipelineApi.md#trigger_pipeline) | **POST** /project/{project-slug}/pipeline | Trigger a new pipeline
*CircleciOpenapi::ProjectApi* | [**create_checkout_key**](docs/ProjectApi.md#create_checkout_key) | **POST** /project/{project-slug}/checkout-key | Create a new checkout key
*CircleciOpenapi::ProjectApi* | [**create_env_var**](docs/ProjectApi.md#create_env_var) | **POST** /project/{project-slug}/envvar | Create an environment variable
*CircleciOpenapi::ProjectApi* | [**delete_checkout_key**](docs/ProjectApi.md#delete_checkout_key) | **DELETE** /project/{project-slug}/checkout-key/{fingerprint} | Delete a checkout key
*CircleciOpenapi::ProjectApi* | [**delete_env_var**](docs/ProjectApi.md#delete_env_var) | **DELETE** /project/{project-slug}/envvar/{name} | Delete an environment variable
*CircleciOpenapi::ProjectApi* | [**get_checkout_key**](docs/ProjectApi.md#get_checkout_key) | **GET** /project/{project-slug}/checkout-key/{fingerprint} | Get a checkout key
*CircleciOpenapi::ProjectApi* | [**get_env_var**](docs/ProjectApi.md#get_env_var) | **GET** /project/{project-slug}/envvar/{name} | Get a masked environment variable
*CircleciOpenapi::ProjectApi* | [**get_project_by_slug**](docs/ProjectApi.md#get_project_by_slug) | **GET** /project/{project-slug} | Get a project
*CircleciOpenapi::ProjectApi* | [**list_checkout_keys**](docs/ProjectApi.md#list_checkout_keys) | **GET** /project/{project-slug}/checkout-key | Get all checkout keys
*CircleciOpenapi::ProjectApi* | [**list_env_vars**](docs/ProjectApi.md#list_env_vars) | **GET** /project/{project-slug}/envvar | List all environment variables
*CircleciOpenapi::UserApi* | [**get_collaborations**](docs/UserApi.md#get_collaborations) | **GET** /me/collaborations | Collaborations
*CircleciOpenapi::UserApi* | [**get_current_user**](docs/UserApi.md#get_current_user) | **GET** /me | User Information
*CircleciOpenapi::UserApi* | [**get_user**](docs/UserApi.md#get_user) | **GET** /user/{id} | User Information
*CircleciOpenapi::WorkflowApi* | [**approve_pending_approval_job_by_id**](docs/WorkflowApi.md#approve_pending_approval_job_by_id) | **POST** /workflow/{id}/approve/{approval_request_id} | Approve a job
*CircleciOpenapi::WorkflowApi* | [**cancel_workflow**](docs/WorkflowApi.md#cancel_workflow) | **POST** /workflow/{id}/cancel | Cancel a workflow
*CircleciOpenapi::WorkflowApi* | [**get_workflow_by_id**](docs/WorkflowApi.md#get_workflow_by_id) | **GET** /workflow/{id} | Get a workflow
*CircleciOpenapi::WorkflowApi* | [**list_workflow_jobs**](docs/WorkflowApi.md#list_workflow_jobs) | **GET** /workflow/{id}/job | Get a workflow's jobs
*CircleciOpenapi::WorkflowApi* | [**rerun_workflow**](docs/WorkflowApi.md#rerun_workflow) | **POST** /workflow/{id}/rerun | Rerun a workflow


## Documentation for Models

 - [CircleciOpenapi::Artifact](docs/Artifact.md)
 - [CircleciOpenapi::ArtifactListResponse](docs/ArtifactListResponse.md)
 - [CircleciOpenapi::CheckoutKey](docs/CheckoutKey.md)
 - [CircleciOpenapi::CheckoutKeyInput](docs/CheckoutKeyInput.md)
 - [CircleciOpenapi::CheckoutKeyListResponse](docs/CheckoutKeyListResponse.md)
 - [CircleciOpenapi::Collaboration](docs/Collaboration.md)
 - [CircleciOpenapi::Context](docs/Context.md)
 - [CircleciOpenapi::EnvironmentVariableListResponse](docs/EnvironmentVariableListResponse.md)
 - [CircleciOpenapi::EnvironmentVariablePair](docs/EnvironmentVariablePair.md)
 - [CircleciOpenapi::EnvironmentVariablePair1](docs/EnvironmentVariablePair1.md)
 - [CircleciOpenapi::InlineObject](docs/InlineObject.md)
 - [CircleciOpenapi::InlineObject1](docs/InlineObject1.md)
 - [CircleciOpenapi::InlineObject2](docs/InlineObject2.md)
 - [CircleciOpenapi::InlineResponse200](docs/InlineResponse200.md)
 - [CircleciOpenapi::InlineResponse2001](docs/InlineResponse2001.md)
 - [CircleciOpenapi::InlineResponse2001Items](docs/InlineResponse2001Items.md)
 - [CircleciOpenapi::InlineResponse2002](docs/InlineResponse2002.md)
 - [CircleciOpenapi::InlineResponse2002Items](docs/InlineResponse2002Items.md)
 - [CircleciOpenapi::InlineResponse2002Metrics](docs/InlineResponse2002Metrics.md)
 - [CircleciOpenapi::InlineResponse2002MetricsDurationMetrics](docs/InlineResponse2002MetricsDurationMetrics.md)
 - [CircleciOpenapi::InlineResponse2003](docs/InlineResponse2003.md)
 - [CircleciOpenapi::InlineResponse2003Items](docs/InlineResponse2003Items.md)
 - [CircleciOpenapi::InlineResponse2004](docs/InlineResponse2004.md)
 - [CircleciOpenapi::InlineResponse2004Items](docs/InlineResponse2004Items.md)
 - [CircleciOpenapi::InlineResponse2004Metrics](docs/InlineResponse2004Metrics.md)
 - [CircleciOpenapi::InlineResponse2004MetricsDurationMetrics](docs/InlineResponse2004MetricsDurationMetrics.md)
 - [CircleciOpenapi::InlineResponse2005](docs/InlineResponse2005.md)
 - [CircleciOpenapi::InlineResponse2005Items](docs/InlineResponse2005Items.md)
 - [CircleciOpenapi::InlineResponseDefault](docs/InlineResponseDefault.md)
 - [CircleciOpenapi::Job](docs/Job.md)
 - [CircleciOpenapi::JobDetails](docs/JobDetails.md)
 - [CircleciOpenapi::JobDetailsContexts](docs/JobDetailsContexts.md)
 - [CircleciOpenapi::JobDetailsExecutor](docs/JobDetailsExecutor.md)
 - [CircleciOpenapi::JobDetailsLatestWorkflow](docs/JobDetailsLatestWorkflow.md)
 - [CircleciOpenapi::JobDetailsMessages](docs/JobDetailsMessages.md)
 - [CircleciOpenapi::JobDetailsOrganization](docs/JobDetailsOrganization.md)
 - [CircleciOpenapi::JobDetailsParallelRuns](docs/JobDetailsParallelRuns.md)
 - [CircleciOpenapi::JobDetailsPipeline](docs/JobDetailsPipeline.md)
 - [CircleciOpenapi::JobDetailsProject](docs/JobDetailsProject.md)
 - [CircleciOpenapi::MessageResponse](docs/MessageResponse.md)
 - [CircleciOpenapi::Pipeline](docs/Pipeline.md)
 - [CircleciOpenapi::PipelineConfig](docs/PipelineConfig.md)
 - [CircleciOpenapi::PipelineCreation](docs/PipelineCreation.md)
 - [CircleciOpenapi::PipelineListResponse](docs/PipelineListResponse.md)
 - [CircleciOpenapi::PipelineListResponseErrors](docs/PipelineListResponseErrors.md)
 - [CircleciOpenapi::PipelineListResponseTrigger](docs/PipelineListResponseTrigger.md)
 - [CircleciOpenapi::PipelineListResponseTriggerActor](docs/PipelineListResponseTriggerActor.md)
 - [CircleciOpenapi::PipelineListResponseVcs](docs/PipelineListResponseVcs.md)
 - [CircleciOpenapi::PipelineListResponseVcsCommit](docs/PipelineListResponseVcsCommit.md)
 - [CircleciOpenapi::Project](docs/Project.md)
 - [CircleciOpenapi::ProjectVcsInfo](docs/ProjectVcsInfo.md)
 - [CircleciOpenapi::RerunWorkflowParameters](docs/RerunWorkflowParameters.md)
 - [CircleciOpenapi::TestsResponse](docs/TestsResponse.md)
 - [CircleciOpenapi::TestsResponseItems](docs/TestsResponseItems.md)
 - [CircleciOpenapi::TriggerPipelineParameters](docs/TriggerPipelineParameters.md)
 - [CircleciOpenapi::User](docs/User.md)
 - [CircleciOpenapi::Workflow](docs/Workflow.md)
 - [CircleciOpenapi::WorkflowJobListResponse](docs/WorkflowJobListResponse.md)
 - [CircleciOpenapi::WorkflowListResponse](docs/WorkflowListResponse.md)


## Documentation for Authorization


### api_key_header


- **Type**: API key
- **API key parameter name**: Circle-Token
- **Location**: HTTP header

### api_key_query


- **Type**: API key
- **API key parameter name**: circle-token
- **Location**: URL query string

### basic_auth

- **Type**: HTTP basic authentication

