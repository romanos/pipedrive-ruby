# pipedrive-ruby

Pipedrive - the Ruby gem for the Pipedrive API v1

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0.0
- Package version: 0.0.1
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build pipedrive-ruby.gemspec
```

Then either install the gem locally:

```shell
gem install ./pipedrive-ruby-0.0.1.gem
```
(for development, run `gem install --dev ./pipedrive-ruby-0.0.1.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'pipedrive-ruby', '~> 0.0.1'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'pipedrive-ruby', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'pipedrive-ruby'

api_instance = Pipedrive::ActivitiesApi.new

ids = [""] # Array<String> | Comma-separated IDs that will be deleted


begin
  #Delete multiple activities in bulk
  api_instance.activities_delete(ids)
rescue Pipedrive::ApiError => e
  puts "Exception when calling ActivitiesApi->activities_delete: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.pipedrive.com/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Pipedrive::ActivitiesApi* | [**activities_delete**](docs/ActivitiesApi.md#activities_delete) | **DELETE** /activities | Delete multiple activities in bulk
*Pipedrive::ActivitiesApi* | [**activities_get**](docs/ActivitiesApi.md#activities_get) | **GET** /activities | Get all activities assigned to a particular user
*Pipedrive::ActivitiesApi* | [**activities_id_delete**](docs/ActivitiesApi.md#activities_id_delete) | **DELETE** /activities/{id} | Delete an activity
*Pipedrive::ActivitiesApi* | [**activities_id_get**](docs/ActivitiesApi.md#activities_id_get) | **GET** /activities/{id} | Get details of an activity
*Pipedrive::ActivitiesApi* | [**activities_id_put**](docs/ActivitiesApi.md#activities_id_put) | **PUT** /activities/{id} | Edit an activity
*Pipedrive::ActivitiesApi* | [**activities_post**](docs/ActivitiesApi.md#activities_post) | **POST** /activities | Add an activity
*Pipedrive::ActivityFieldsApi* | [**activity_fields_get**](docs/ActivityFieldsApi.md#activity_fields_get) | **GET** /activityFields | Get all fields for an activity
*Pipedrive::ActivityTypesApi* | [**activity_types_delete**](docs/ActivityTypesApi.md#activity_types_delete) | **DELETE** /activityTypes | Delete multiple activity types in bulk
*Pipedrive::ActivityTypesApi* | [**activity_types_get**](docs/ActivityTypesApi.md#activity_types_get) | **GET** /activityTypes | Get all activity types
*Pipedrive::ActivityTypesApi* | [**activity_types_id_delete**](docs/ActivityTypesApi.md#activity_types_id_delete) | **DELETE** /activityTypes/{id} | Delete an activity type
*Pipedrive::ActivityTypesApi* | [**activity_types_id_put**](docs/ActivityTypesApi.md#activity_types_id_put) | **PUT** /activityTypes/{id} | Edit activity type
*Pipedrive::ActivityTypesApi* | [**activity_types_post**](docs/ActivityTypesApi.md#activity_types_post) | **POST** /activityTypes | Add new activity type
*Pipedrive::AuthorizationsApi* | [**authorizations_post**](docs/AuthorizationsApi.md#authorizations_post) | **POST** /authorizations | Get all authorizations for a user
*Pipedrive::CurrenciesApi* | [**currencies_get**](docs/CurrenciesApi.md#currencies_get) | **GET** /currencies | Get all supported currencies
*Pipedrive::DealFieldsApi* | [**deal_fields_delete**](docs/DealFieldsApi.md#deal_fields_delete) | **DELETE** /dealFields | Delete multiple deal fields in bulk
*Pipedrive::DealFieldsApi* | [**deal_fields_get**](docs/DealFieldsApi.md#deal_fields_get) | **GET** /dealFields | Get all deal fields
*Pipedrive::DealFieldsApi* | [**deal_fields_id_delete**](docs/DealFieldsApi.md#deal_fields_id_delete) | **DELETE** /dealFields/{id} | Delete a deal field
*Pipedrive::DealFieldsApi* | [**deal_fields_id_get**](docs/DealFieldsApi.md#deal_fields_id_get) | **GET** /dealFields/{id} | Get one deal field
*Pipedrive::DealFieldsApi* | [**deal_fields_id_put**](docs/DealFieldsApi.md#deal_fields_id_put) | **PUT** /dealFields/{id} | Update a deal field
*Pipedrive::DealFieldsApi* | [**deal_fields_post**](docs/DealFieldsApi.md#deal_fields_post) | **POST** /dealFields | Add a new deal field
*Pipedrive::DealsApi* | [**deals_delete**](docs/DealsApi.md#deals_delete) | **DELETE** /deals | Delete multiple deals in bulk
*Pipedrive::DealsApi* | [**deals_find_get**](docs/DealsApi.md#deals_find_get) | **GET** /deals/find | Find deals by name
*Pipedrive::DealsApi* | [**deals_get**](docs/DealsApi.md#deals_get) | **GET** /deals | Get all deals
*Pipedrive::DealsApi* | [**deals_id_activities_get**](docs/DealsApi.md#deals_id_activities_get) | **GET** /deals/{id}/activities | List activities associated with a deal
*Pipedrive::DealsApi* | [**deals_id_delete**](docs/DealsApi.md#deals_id_delete) | **DELETE** /deals/{id} | Delete a deal
*Pipedrive::DealsApi* | [**deals_id_duplicate_post**](docs/DealsApi.md#deals_id_duplicate_post) | **POST** /deals/{id}/duplicate | Duplicate deal
*Pipedrive::DealsApi* | [**deals_id_files_get**](docs/DealsApi.md#deals_id_files_get) | **GET** /deals/{id}/files | List files attached to a deal
*Pipedrive::DealsApi* | [**deals_id_flow_get**](docs/DealsApi.md#deals_id_flow_get) | **GET** /deals/{id}/flow | List updates about a deal
*Pipedrive::DealsApi* | [**deals_id_followers_follower_id_delete**](docs/DealsApi.md#deals_id_followers_follower_id_delete) | **DELETE** /deals/{id}/followers/{follower_id} | Delete a follower from a deal
*Pipedrive::DealsApi* | [**deals_id_followers_get**](docs/DealsApi.md#deals_id_followers_get) | **GET** /deals/{id}/followers | List followers of a deal
*Pipedrive::DealsApi* | [**deals_id_followers_post**](docs/DealsApi.md#deals_id_followers_post) | **POST** /deals/{id}/followers | Add a follower to a deal
*Pipedrive::DealsApi* | [**deals_id_get**](docs/DealsApi.md#deals_id_get) | **GET** /deals/{id} | Get details of a deal
*Pipedrive::DealsApi* | [**deals_id_mail_messages_get**](docs/DealsApi.md#deals_id_mail_messages_get) | **GET** /deals/{id}/mailMessages | List mail messages associated with a deal
*Pipedrive::DealsApi* | [**deals_id_merge_put**](docs/DealsApi.md#deals_id_merge_put) | **PUT** /deals/{id}/merge | Merge two deals
*Pipedrive::DealsApi* | [**deals_id_participants_deal_participant_id_delete**](docs/DealsApi.md#deals_id_participants_deal_participant_id_delete) | **DELETE** /deals/{id}/participants/{deal_participant_id} | Delete a participant from a deal
*Pipedrive::DealsApi* | [**deals_id_participants_get**](docs/DealsApi.md#deals_id_participants_get) | **GET** /deals/{id}/participants | List participants of a deal
*Pipedrive::DealsApi* | [**deals_id_participants_post**](docs/DealsApi.md#deals_id_participants_post) | **POST** /deals/{id}/participants | Add a participant to a deal
*Pipedrive::DealsApi* | [**deals_id_permitted_users_get**](docs/DealsApi.md#deals_id_permitted_users_get) | **GET** /deals/{id}/permittedUsers | List permitted users
*Pipedrive::DealsApi* | [**deals_id_persons_get**](docs/DealsApi.md#deals_id_persons_get) | **GET** /deals/{id}/persons | List all persons associated with a deal
*Pipedrive::DealsApi* | [**deals_id_products_deal_product_id_put**](docs/DealsApi.md#deals_id_products_deal_product_id_put) | **PUT** /deals/{id}/products/{deal_product_id} | Update product attachment details of the deal-product (a product already attached to a deal)
*Pipedrive::DealsApi* | [**deals_id_products_get**](docs/DealsApi.md#deals_id_products_get) | **GET** /deals/{id}/products | List products attached to a deal
*Pipedrive::DealsApi* | [**deals_id_products_post**](docs/DealsApi.md#deals_id_products_post) | **POST** /deals/{id}/products | Add a product to the deal, eventually creating a new item called a deal-product.
*Pipedrive::DealsApi* | [**deals_id_products_product_attachment_id_delete**](docs/DealsApi.md#deals_id_products_product_attachment_id_delete) | **DELETE** /deals/{id}/products/{product_attachment_id} | Delete an attached product from a deal
*Pipedrive::DealsApi* | [**deals_id_put**](docs/DealsApi.md#deals_id_put) | **PUT** /deals/{id} | Update a deal
*Pipedrive::DealsApi* | [**deals_post**](docs/DealsApi.md#deals_post) | **POST** /deals | Add a deal
*Pipedrive::DealsApi* | [**deals_timeline_get**](docs/DealsApi.md#deals_timeline_get) | **GET** /deals/timeline | Get deals timeline
*Pipedrive::FilesApi* | [**files_get**](docs/FilesApi.md#files_get) | **GET** /files | Get all files
*Pipedrive::FilesApi* | [**files_id_delete**](docs/FilesApi.md#files_id_delete) | **DELETE** /files/{id} | Delete a file
*Pipedrive::FilesApi* | [**files_id_download_get**](docs/FilesApi.md#files_id_download_get) | **GET** /files/{id}/download | Download one file
*Pipedrive::FilesApi* | [**files_id_get**](docs/FilesApi.md#files_id_get) | **GET** /files/{id} | Get one file
*Pipedrive::FilesApi* | [**files_id_put**](docs/FilesApi.md#files_id_put) | **PUT** /files/{id} | Update file details
*Pipedrive::FilesApi* | [**files_post**](docs/FilesApi.md#files_post) | **POST** /files | Add file
*Pipedrive::FilesApi* | [**files_remote_link_post**](docs/FilesApi.md#files_remote_link_post) | **POST** /files/remoteLink | Link a remote file to an item
*Pipedrive::FilesApi* | [**files_remote_post**](docs/FilesApi.md#files_remote_post) | **POST** /files/remote | Create a remote file and link it to an item
*Pipedrive::FiltersApi* | [**filters_delete**](docs/FiltersApi.md#filters_delete) | **DELETE** /filters | Delete multiple filters in bulk
*Pipedrive::FiltersApi* | [**filters_get**](docs/FiltersApi.md#filters_get) | **GET** /filters | Get all filters
*Pipedrive::FiltersApi* | [**filters_id_delete**](docs/FiltersApi.md#filters_id_delete) | **DELETE** /filters/{id} | Delete a filter
*Pipedrive::FiltersApi* | [**filters_id_get**](docs/FiltersApi.md#filters_id_get) | **GET** /filters/{id} | Get one filter
*Pipedrive::FiltersApi* | [**filters_id_put**](docs/FiltersApi.md#filters_id_put) | **PUT** /filters/{id} | Update filter
*Pipedrive::FiltersApi* | [**filters_post**](docs/FiltersApi.md#filters_post) | **POST** /filters | Add a new filter
*Pipedrive::GlobalMessagesApi* | [**global_messages_get**](docs/GlobalMessagesApi.md#global_messages_get) | **GET** /globalMessages | Get global messages
*Pipedrive::GlobalMessagesApi* | [**global_messages_id_delete**](docs/GlobalMessagesApi.md#global_messages_id_delete) | **DELETE** /globalMessages/{id} | Dismiss a global message
*Pipedrive::GoalsApi* | [**goals_get**](docs/GoalsApi.md#goals_get) | **GET** /goals | Get all goals
*Pipedrive::GoalsApi* | [**goals_id_delete**](docs/GoalsApi.md#goals_id_delete) | **DELETE** /goals/{id} | Delete existing goal
*Pipedrive::GoalsApi* | [**goals_id_get**](docs/GoalsApi.md#goals_id_get) | **GET** /goals/{id} | Get details of a goal
*Pipedrive::GoalsApi* | [**goals_id_put**](docs/GoalsApi.md#goals_id_put) | **PUT** /goals/{id} | Update goal details
*Pipedrive::GoalsApi* | [**goals_id_results_get**](docs/GoalsApi.md#goals_id_results_get) | **GET** /goals/{id}/results | Get results of one goal
*Pipedrive::GoalsApi* | [**goals_post**](docs/GoalsApi.md#goals_post) | **POST** /goals | Add a new goal
*Pipedrive::MailMessagesApi* | [**mailbox_mail_messages_id_get**](docs/MailMessagesApi.md#mailbox_mail_messages_id_get) | **GET** /mailbox/mailMessages/{id} | Get one mail message
*Pipedrive::MailThreadsApi* | [**mailbox_mail_threads_get**](docs/MailThreadsApi.md#mailbox_mail_threads_get) | **GET** /mailbox/mailThreads | Get mail threads
*Pipedrive::MailThreadsApi* | [**mailbox_mail_threads_id_delete**](docs/MailThreadsApi.md#mailbox_mail_threads_id_delete) | **DELETE** /mailbox/mailThreads/{id} | Delete mail thread
*Pipedrive::MailThreadsApi* | [**mailbox_mail_threads_id_get**](docs/MailThreadsApi.md#mailbox_mail_threads_id_get) | **GET** /mailbox/mailThreads/{id} | Get one mail thread
*Pipedrive::MailThreadsApi* | [**mailbox_mail_threads_id_mail_messages_get**](docs/MailThreadsApi.md#mailbox_mail_threads_id_mail_messages_get) | **GET** /mailbox/mailThreads/{id}/mailMessages | Get all mail messages of mail thread
*Pipedrive::MailThreadsApi* | [**mailbox_mail_threads_id_put**](docs/MailThreadsApi.md#mailbox_mail_threads_id_put) | **PUT** /mailbox/mailThreads/{id} | Update mail thread details
*Pipedrive::NoteFieldsApi* | [**note_fields_get**](docs/NoteFieldsApi.md#note_fields_get) | **GET** /noteFields | Get all fields for a note
*Pipedrive::NotesApi* | [**notes_get**](docs/NotesApi.md#notes_get) | **GET** /notes | Get all notes
*Pipedrive::NotesApi* | [**notes_id_delete**](docs/NotesApi.md#notes_id_delete) | **DELETE** /notes/{id} | Delete a note
*Pipedrive::NotesApi* | [**notes_id_get**](docs/NotesApi.md#notes_id_get) | **GET** /notes/{id} | Get one note
*Pipedrive::NotesApi* | [**notes_id_put**](docs/NotesApi.md#notes_id_put) | **PUT** /notes/{id} | Update a note
*Pipedrive::NotesApi* | [**notes_post**](docs/NotesApi.md#notes_post) | **POST** /notes | Add a note
*Pipedrive::OrganizationFieldsApi* | [**organization_fields_delete**](docs/OrganizationFieldsApi.md#organization_fields_delete) | **DELETE** /organizationFields | Delete multiple organization fields in bulk
*Pipedrive::OrganizationFieldsApi* | [**organization_fields_get**](docs/OrganizationFieldsApi.md#organization_fields_get) | **GET** /organizationFields | Get all organization fields
*Pipedrive::OrganizationFieldsApi* | [**organization_fields_id_delete**](docs/OrganizationFieldsApi.md#organization_fields_id_delete) | **DELETE** /organizationFields/{id} | Delete an organization field
*Pipedrive::OrganizationFieldsApi* | [**organization_fields_id_get**](docs/OrganizationFieldsApi.md#organization_fields_id_get) | **GET** /organizationFields/{id} | Get one organization field
*Pipedrive::OrganizationFieldsApi* | [**organization_fields_id_put**](docs/OrganizationFieldsApi.md#organization_fields_id_put) | **PUT** /organizationFields/{id} | Update an organization field
*Pipedrive::OrganizationFieldsApi* | [**organization_fields_post**](docs/OrganizationFieldsApi.md#organization_fields_post) | **POST** /organizationFields | Add a new organization field
*Pipedrive::OrganizationRelationshipsApi* | [**organization_relationships_get**](docs/OrganizationRelationshipsApi.md#organization_relationships_get) | **GET** /organizationRelationships | Get all relationships for organization
*Pipedrive::OrganizationRelationshipsApi* | [**organization_relationships_id_delete**](docs/OrganizationRelationshipsApi.md#organization_relationships_id_delete) | **DELETE** /organizationRelationships/{id} | Delete an organization relationship
*Pipedrive::OrganizationRelationshipsApi* | [**organization_relationships_id_get**](docs/OrganizationRelationshipsApi.md#organization_relationships_id_get) | **GET** /organizationRelationships/{id} | Get one organization relationship
*Pipedrive::OrganizationRelationshipsApi* | [**organization_relationships_id_put**](docs/OrganizationRelationshipsApi.md#organization_relationships_id_put) | **PUT** /organizationRelationships/{id} | Update an organization relationship
*Pipedrive::OrganizationRelationshipsApi* | [**organization_relationships_post**](docs/OrganizationRelationshipsApi.md#organization_relationships_post) | **POST** /organizationRelationships | Create an organization relationship
*Pipedrive::OrganizationsApi* | [**organizations_delete**](docs/OrganizationsApi.md#organizations_delete) | **DELETE** /organizations | Delete multiple organizations in bulk
*Pipedrive::OrganizationsApi* | [**organizations_find_get**](docs/OrganizationsApi.md#organizations_find_get) | **GET** /organizations/find | Find organizations by name
*Pipedrive::OrganizationsApi* | [**organizations_get**](docs/OrganizationsApi.md#organizations_get) | **GET** /organizations | Get all organizations
*Pipedrive::OrganizationsApi* | [**organizations_id_activities_get**](docs/OrganizationsApi.md#organizations_id_activities_get) | **GET** /organizations/{id}/activities | List activities associated with an organization
*Pipedrive::OrganizationsApi* | [**organizations_id_deals_get**](docs/OrganizationsApi.md#organizations_id_deals_get) | **GET** /organizations/{id}/deals | List deals associated with an organization
*Pipedrive::OrganizationsApi* | [**organizations_id_delete**](docs/OrganizationsApi.md#organizations_id_delete) | **DELETE** /organizations/{id} | Delete an organization
*Pipedrive::OrganizationsApi* | [**organizations_id_files_get**](docs/OrganizationsApi.md#organizations_id_files_get) | **GET** /organizations/{id}/files | List files attached to an organization
*Pipedrive::OrganizationsApi* | [**organizations_id_flow_get**](docs/OrganizationsApi.md#organizations_id_flow_get) | **GET** /organizations/{id}/flow | List updates about an organization
*Pipedrive::OrganizationsApi* | [**organizations_id_followers_follower_id_delete**](docs/OrganizationsApi.md#organizations_id_followers_follower_id_delete) | **DELETE** /organizations/{id}/followers/{follower_id} | Delete a follower from an organization
*Pipedrive::OrganizationsApi* | [**organizations_id_followers_get**](docs/OrganizationsApi.md#organizations_id_followers_get) | **GET** /organizations/{id}/followers | List followers of an organization
*Pipedrive::OrganizationsApi* | [**organizations_id_followers_post**](docs/OrganizationsApi.md#organizations_id_followers_post) | **POST** /organizations/{id}/followers | Add a follower to an organization
*Pipedrive::OrganizationsApi* | [**organizations_id_get**](docs/OrganizationsApi.md#organizations_id_get) | **GET** /organizations/{id} | Get details of an organization
*Pipedrive::OrganizationsApi* | [**organizations_id_mail_messages_get**](docs/OrganizationsApi.md#organizations_id_mail_messages_get) | **GET** /organizations/{id}/mailMessages | List mail messages associated with an organization
*Pipedrive::OrganizationsApi* | [**organizations_id_merge_put**](docs/OrganizationsApi.md#organizations_id_merge_put) | **PUT** /organizations/{id}/merge | Merge two organizations
*Pipedrive::OrganizationsApi* | [**organizations_id_permitted_users_get**](docs/OrganizationsApi.md#organizations_id_permitted_users_get) | **GET** /organizations/{id}/permittedUsers | List permitted users
*Pipedrive::OrganizationsApi* | [**organizations_id_persons_get**](docs/OrganizationsApi.md#organizations_id_persons_get) | **GET** /organizations/{id}/persons | List persons of an organization
*Pipedrive::OrganizationsApi* | [**organizations_id_put**](docs/OrganizationsApi.md#organizations_id_put) | **PUT** /organizations/{id} | Update an organization
*Pipedrive::OrganizationsApi* | [**organizations_post**](docs/OrganizationsApi.md#organizations_post) | **POST** /organizations | Add an organization
*Pipedrive::PermissionSetsApi* | [**permission_sets_get**](docs/PermissionSetsApi.md#permission_sets_get) | **GET** /permissionSets | Get all permission sets
*Pipedrive::PermissionSetsApi* | [**permission_sets_id_assignments_delete**](docs/PermissionSetsApi.md#permission_sets_id_assignments_delete) | **DELETE** /permissionSets/{id}/assignments | Delete a permission set assignment
*Pipedrive::PermissionSetsApi* | [**permission_sets_id_assignments_get**](docs/PermissionSetsApi.md#permission_sets_id_assignments_get) | **GET** /permissionSets/{id}/assignments | List permission set assignments
*Pipedrive::PermissionSetsApi* | [**permission_sets_id_assignments_post**](docs/PermissionSetsApi.md#permission_sets_id_assignments_post) | **POST** /permissionSets/{id}/assignments | Add permission set assignment
*Pipedrive::PermissionSetsApi* | [**permission_sets_id_get**](docs/PermissionSetsApi.md#permission_sets_id_get) | **GET** /permissionSets/{id} | Get one permission set
*Pipedrive::PermissionSetsApi* | [**permission_sets_id_put**](docs/PermissionSetsApi.md#permission_sets_id_put) | **PUT** /permissionSets/{id} | Update permission set details
*Pipedrive::PersonFieldsApi* | [**person_fields_delete**](docs/PersonFieldsApi.md#person_fields_delete) | **DELETE** /personFields | Delete multiple person fields in bulk
*Pipedrive::PersonFieldsApi* | [**person_fields_get**](docs/PersonFieldsApi.md#person_fields_get) | **GET** /personFields | Get all person fields
*Pipedrive::PersonFieldsApi* | [**person_fields_id_delete**](docs/PersonFieldsApi.md#person_fields_id_delete) | **DELETE** /personFields/{id} | Delete a person field
*Pipedrive::PersonFieldsApi* | [**person_fields_id_get**](docs/PersonFieldsApi.md#person_fields_id_get) | **GET** /personFields/{id} | Get one person field
*Pipedrive::PersonFieldsApi* | [**person_fields_id_put**](docs/PersonFieldsApi.md#person_fields_id_put) | **PUT** /personFields/{id} | Update a person field
*Pipedrive::PersonFieldsApi* | [**person_fields_post**](docs/PersonFieldsApi.md#person_fields_post) | **POST** /personFields | Add a new person field
*Pipedrive::PersonsApi* | [**persons_delete**](docs/PersonsApi.md#persons_delete) | **DELETE** /persons | Delete multiple persons in bulk
*Pipedrive::PersonsApi* | [**persons_find_get**](docs/PersonsApi.md#persons_find_get) | **GET** /persons/find | Find persons by name
*Pipedrive::PersonsApi* | [**persons_get**](docs/PersonsApi.md#persons_get) | **GET** /persons | Get all persons
*Pipedrive::PersonsApi* | [**persons_id_activities_get**](docs/PersonsApi.md#persons_id_activities_get) | **GET** /persons/{id}/activities | List activities associated with a person
*Pipedrive::PersonsApi* | [**persons_id_deals_get**](docs/PersonsApi.md#persons_id_deals_get) | **GET** /persons/{id}/deals | List deals associated with a person
*Pipedrive::PersonsApi* | [**persons_id_delete**](docs/PersonsApi.md#persons_id_delete) | **DELETE** /persons/{id} | Delete a person
*Pipedrive::PersonsApi* | [**persons_id_files_get**](docs/PersonsApi.md#persons_id_files_get) | **GET** /persons/{id}/files | List files attached to a person
*Pipedrive::PersonsApi* | [**persons_id_flow_get**](docs/PersonsApi.md#persons_id_flow_get) | **GET** /persons/{id}/flow | List updates about a person
*Pipedrive::PersonsApi* | [**persons_id_followers_follower_id_delete**](docs/PersonsApi.md#persons_id_followers_follower_id_delete) | **DELETE** /persons/{id}/followers/{follower_id} | Delete a follower from a person
*Pipedrive::PersonsApi* | [**persons_id_followers_get**](docs/PersonsApi.md#persons_id_followers_get) | **GET** /persons/{id}/followers | List followers of a person
*Pipedrive::PersonsApi* | [**persons_id_followers_post**](docs/PersonsApi.md#persons_id_followers_post) | **POST** /persons/{id}/followers | Add a follower to a person
*Pipedrive::PersonsApi* | [**persons_id_get**](docs/PersonsApi.md#persons_id_get) | **GET** /persons/{id} | Get details of a person
*Pipedrive::PersonsApi* | [**persons_id_mail_messages_get**](docs/PersonsApi.md#persons_id_mail_messages_get) | **GET** /persons/{id}/mailMessages | List mail messages associated with a person
*Pipedrive::PersonsApi* | [**persons_id_merge_put**](docs/PersonsApi.md#persons_id_merge_put) | **PUT** /persons/{id}/merge | Merge two persons
*Pipedrive::PersonsApi* | [**persons_id_permitted_users_get**](docs/PersonsApi.md#persons_id_permitted_users_get) | **GET** /persons/{id}/permittedUsers | List permitted users
*Pipedrive::PersonsApi* | [**persons_id_picture_delete**](docs/PersonsApi.md#persons_id_picture_delete) | **DELETE** /persons/{id}/picture | Delete person picture
*Pipedrive::PersonsApi* | [**persons_id_picture_post**](docs/PersonsApi.md#persons_id_picture_post) | **POST** /persons/{id}/picture | Add person picture
*Pipedrive::PersonsApi* | [**persons_id_products_get**](docs/PersonsApi.md#persons_id_products_get) | **GET** /persons/{id}/products | List products associated with a person
*Pipedrive::PersonsApi* | [**persons_id_put**](docs/PersonsApi.md#persons_id_put) | **PUT** /persons/{id} | Update a person
*Pipedrive::PersonsApi* | [**persons_post**](docs/PersonsApi.md#persons_post) | **POST** /persons | Add a person
*Pipedrive::PipelinesApi* | [**pipelines_get**](docs/PipelinesApi.md#pipelines_get) | **GET** /pipelines | Get all pipelines
*Pipedrive::PipelinesApi* | [**pipelines_id_conversion_statistics_get**](docs/PipelinesApi.md#pipelines_id_conversion_statistics_get) | **GET** /pipelines/{id}/conversion_statistics | Get deals conversion rates in pipeline
*Pipedrive::PipelinesApi* | [**pipelines_id_deals_get**](docs/PipelinesApi.md#pipelines_id_deals_get) | **GET** /pipelines/{id}/deals | Get deals in a pipeline
*Pipedrive::PipelinesApi* | [**pipelines_id_delete**](docs/PipelinesApi.md#pipelines_id_delete) | **DELETE** /pipelines/{id} | Delete a pipeline
*Pipedrive::PipelinesApi* | [**pipelines_id_get**](docs/PipelinesApi.md#pipelines_id_get) | **GET** /pipelines/{id} | Get one pipeline
*Pipedrive::PipelinesApi* | [**pipelines_id_movement_statistics_get**](docs/PipelinesApi.md#pipelines_id_movement_statistics_get) | **GET** /pipelines/{id}/movement_statistics | Get deals movements in pipeline
*Pipedrive::PipelinesApi* | [**pipelines_id_put**](docs/PipelinesApi.md#pipelines_id_put) | **PUT** /pipelines/{id} | Edit a pipeline
*Pipedrive::PipelinesApi* | [**pipelines_post**](docs/PipelinesApi.md#pipelines_post) | **POST** /pipelines | Add a new pipeline
*Pipedrive::ProductFieldsApi* | [**product_fields_delete**](docs/ProductFieldsApi.md#product_fields_delete) | **DELETE** /productFields | Delete multiple product fields in bulk
*Pipedrive::ProductFieldsApi* | [**product_fields_get**](docs/ProductFieldsApi.md#product_fields_get) | **GET** /productFields | Get all product fields
*Pipedrive::ProductFieldsApi* | [**product_fields_id_delete**](docs/ProductFieldsApi.md#product_fields_id_delete) | **DELETE** /productFields/{id} | Delete a product field
*Pipedrive::ProductFieldsApi* | [**product_fields_id_get**](docs/ProductFieldsApi.md#product_fields_id_get) | **GET** /productFields/{id} | Get one product field
*Pipedrive::ProductFieldsApi* | [**product_fields_id_put**](docs/ProductFieldsApi.md#product_fields_id_put) | **PUT** /productFields/{id} | Update a product field
*Pipedrive::ProductFieldsApi* | [**product_fields_post**](docs/ProductFieldsApi.md#product_fields_post) | **POST** /productFields | Add a new product field
*Pipedrive::ProductsApi* | [**products_find_get**](docs/ProductsApi.md#products_find_get) | **GET** /products/find | Find products by name
*Pipedrive::ProductsApi* | [**products_get**](docs/ProductsApi.md#products_get) | **GET** /products | Get all products
*Pipedrive::ProductsApi* | [**products_id_deals_get**](docs/ProductsApi.md#products_id_deals_get) | **GET** /products/{id}/deals | Get deals where a product is attached to
*Pipedrive::ProductsApi* | [**products_id_delete**](docs/ProductsApi.md#products_id_delete) | **DELETE** /products/{id} | Delete a product
*Pipedrive::ProductsApi* | [**products_id_files_get**](docs/ProductsApi.md#products_id_files_get) | **GET** /products/{id}/files | List files attached to a product
*Pipedrive::ProductsApi* | [**products_id_followers_follower_id_delete**](docs/ProductsApi.md#products_id_followers_follower_id_delete) | **DELETE** /products/{id}/followers/{follower_id} | Delete a follower from a product
*Pipedrive::ProductsApi* | [**products_id_followers_get**](docs/ProductsApi.md#products_id_followers_get) | **GET** /products/{id}/followers | List followers of a product
*Pipedrive::ProductsApi* | [**products_id_followers_post**](docs/ProductsApi.md#products_id_followers_post) | **POST** /products/{id}/followers | Add a follower to a product
*Pipedrive::ProductsApi* | [**products_id_get**](docs/ProductsApi.md#products_id_get) | **GET** /products/{id} | Get one product
*Pipedrive::ProductsApi* | [**products_id_permitted_users_get**](docs/ProductsApi.md#products_id_permitted_users_get) | **GET** /products/{id}/permittedUsers | List permitted users
*Pipedrive::ProductsApi* | [**products_id_put**](docs/ProductsApi.md#products_id_put) | **PUT** /products/{id} | Update a product
*Pipedrive::ProductsApi* | [**products_post**](docs/ProductsApi.md#products_post) | **POST** /products | Add a product
*Pipedrive::PushNotificationsApi* | [**push_notifications_get**](docs/PushNotificationsApi.md#push_notifications_get) | **GET** /pushNotifications | Get all subscriptions
*Pipedrive::PushNotificationsApi* | [**push_notifications_id_delete**](docs/PushNotificationsApi.md#push_notifications_id_delete) | **DELETE** /pushNotifications/{id} | Delete existing subscription
*Pipedrive::PushNotificationsApi* | [**push_notifications_id_get**](docs/PushNotificationsApi.md#push_notifications_id_get) | **GET** /pushNotifications/{id} | Get details of a subscription
*Pipedrive::PushNotificationsApi* | [**push_notifications_post**](docs/PushNotificationsApi.md#push_notifications_post) | **POST** /pushNotifications | Create new subscription
*Pipedrive::RecentsApi* | [**recents_get**](docs/RecentsApi.md#recents_get) | **GET** /recents | Get recents
*Pipedrive::RolesApi* | [**roles_get**](docs/RolesApi.md#roles_get) | **GET** /roles | Get all roles
*Pipedrive::RolesApi* | [**roles_id_assignments_delete**](docs/RolesApi.md#roles_id_assignments_delete) | **DELETE** /roles/{id}/assignments | Delete a role assignment
*Pipedrive::RolesApi* | [**roles_id_assignments_get**](docs/RolesApi.md#roles_id_assignments_get) | **GET** /roles/{id}/assignments | List role assignments
*Pipedrive::RolesApi* | [**roles_id_assignments_post**](docs/RolesApi.md#roles_id_assignments_post) | **POST** /roles/{id}/assignments | Add role assignment
*Pipedrive::RolesApi* | [**roles_id_delete**](docs/RolesApi.md#roles_id_delete) | **DELETE** /roles/{id} | Delete a role
*Pipedrive::RolesApi* | [**roles_id_get**](docs/RolesApi.md#roles_id_get) | **GET** /roles/{id} | Get one role
*Pipedrive::RolesApi* | [**roles_id_put**](docs/RolesApi.md#roles_id_put) | **PUT** /roles/{id} | Update role details
*Pipedrive::RolesApi* | [**roles_id_roles_get**](docs/RolesApi.md#roles_id_roles_get) | **GET** /roles/{id}/roles | List role sub-roles
*Pipedrive::RolesApi* | [**roles_id_settings_get**](docs/RolesApi.md#roles_id_settings_get) | **GET** /roles/{id}/settings | List role settings
*Pipedrive::RolesApi* | [**roles_id_settings_post**](docs/RolesApi.md#roles_id_settings_post) | **POST** /roles/{id}/settings | Add or update role setting
*Pipedrive::RolesApi* | [**roles_post**](docs/RolesApi.md#roles_post) | **POST** /roles | Add a role
*Pipedrive::SearchResultsApi* | [**search_results_field_get**](docs/SearchResultsApi.md#search_results_field_get) | **GET** /searchResults/field | Perform a search using a specific field value
*Pipedrive::SearchResultsApi* | [**search_results_get**](docs/SearchResultsApi.md#search_results_get) | **GET** /searchResults | Perform a search
*Pipedrive::StagesApi* | [**stages_delete**](docs/StagesApi.md#stages_delete) | **DELETE** /stages | Delete multiple stages in bulk
*Pipedrive::StagesApi* | [**stages_get**](docs/StagesApi.md#stages_get) | **GET** /stages | Get all stages
*Pipedrive::StagesApi* | [**stages_id_deals_get**](docs/StagesApi.md#stages_id_deals_get) | **GET** /stages/{id}/deals | Get deals in a stage
*Pipedrive::StagesApi* | [**stages_id_delete**](docs/StagesApi.md#stages_id_delete) | **DELETE** /stages/{id} | Delete a stage
*Pipedrive::StagesApi* | [**stages_id_get**](docs/StagesApi.md#stages_id_get) | **GET** /stages/{id} | Get one stage
*Pipedrive::StagesApi* | [**stages_id_put**](docs/StagesApi.md#stages_id_put) | **PUT** /stages/{id} | Update stage details
*Pipedrive::StagesApi* | [**stages_post**](docs/StagesApi.md#stages_post) | **POST** /stages | Add a new stage
*Pipedrive::UserConnectionsApi* | [**user_connections_get**](docs/UserConnectionsApi.md#user_connections_get) | **GET** /userConnections | Get all user connections
*Pipedrive::UserSettingsApi* | [**user_settings_get**](docs/UserSettingsApi.md#user_settings_get) | **GET** /userSettings | List settings of authorized user
*Pipedrive::UsersApi* | [**users_find_get**](docs/UsersApi.md#users_find_get) | **GET** /users/find | Find users by name
*Pipedrive::UsersApi* | [**users_get**](docs/UsersApi.md#users_get) | **GET** /users | Get all users
*Pipedrive::UsersApi* | [**users_id_activities_get**](docs/UsersApi.md#users_id_activities_get) | **GET** /users/{id}/activities | List and filter activities assigned to a specific user
*Pipedrive::UsersApi* | [**users_id_blacklisted_emails_get**](docs/UsersApi.md#users_id_blacklisted_emails_get) | **GET** /users/{id}/blacklistedEmails | List blacklisted email addresses of a user
*Pipedrive::UsersApi* | [**users_id_blacklisted_emails_post**](docs/UsersApi.md#users_id_blacklisted_emails_post) | **POST** /users/{id}/blacklistedEmails | Add blacklisted email address for a user
*Pipedrive::UsersApi* | [**users_id_followers_get**](docs/UsersApi.md#users_id_followers_get) | **GET** /users/{id}/followers | List followers of a user
*Pipedrive::UsersApi* | [**users_id_get**](docs/UsersApi.md#users_id_get) | **GET** /users/{id} | Get one user
*Pipedrive::UsersApi* | [**users_id_permission_set_assignments_delete**](docs/UsersApi.md#users_id_permission_set_assignments_delete) | **DELETE** /users/{id}/permissionSetAssignments | Delete a permission set assignment
*Pipedrive::UsersApi* | [**users_id_permission_set_assignments_get**](docs/UsersApi.md#users_id_permission_set_assignments_get) | **GET** /users/{id}/permissionSetAssignments | List permission set assignments
*Pipedrive::UsersApi* | [**users_id_permission_set_assignments_post**](docs/UsersApi.md#users_id_permission_set_assignments_post) | **POST** /users/{id}/permissionSetAssignments | Add permission set assignment
*Pipedrive::UsersApi* | [**users_id_permissions_get**](docs/UsersApi.md#users_id_permissions_get) | **GET** /users/{id}/permissions | List user permissions
*Pipedrive::UsersApi* | [**users_id_put**](docs/UsersApi.md#users_id_put) | **PUT** /users/{id} | Update user details
*Pipedrive::UsersApi* | [**users_id_role_assignments_delete**](docs/UsersApi.md#users_id_role_assignments_delete) | **DELETE** /users/{id}/roleAssignments | Delete a role assignment
*Pipedrive::UsersApi* | [**users_id_role_assignments_get**](docs/UsersApi.md#users_id_role_assignments_get) | **GET** /users/{id}/roleAssignments | List role assignments
*Pipedrive::UsersApi* | [**users_id_role_assignments_post**](docs/UsersApi.md#users_id_role_assignments_post) | **POST** /users/{id}/roleAssignments | Add role assignment
*Pipedrive::UsersApi* | [**users_id_role_settings_get**](docs/UsersApi.md#users_id_role_settings_get) | **GET** /users/{id}/roleSettings | List user role settings
*Pipedrive::UsersApi* | [**users_post**](docs/UsersApi.md#users_post) | **POST** /users | Add a new user
*Pipedrive::WebhooksApi* | [**webhooks_get**](docs/WebhooksApi.md#webhooks_get) | **GET** /webhooks | Get all webhooks
*Pipedrive::WebhooksApi* | [**webhooks_id_delete**](docs/WebhooksApi.md#webhooks_id_delete) | **DELETE** /webhooks/{id} | Delete existing webhook
*Pipedrive::WebhooksApi* | [**webhooks_post**](docs/WebhooksApi.md#webhooks_post) | **POST** /webhooks | Create a new webhook


## Documentation for Models



## Documentation for Authorization


### api_key

- **Type**: API key
- **API key parameter name**: api_token
- **Location**: URL query string

