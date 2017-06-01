# NAME

ProcessMaker::PMIO::Role - a Moose role for the ProcessMaker API

This ProcessMaker I/O API provides access to a BPMN 2.0 compliant workflow engine api that is designed to be used as a microservice to support enterprise cloud applications.  The current Alpha 1.0 version supports most of the descriptive class of the BPMN 2.0 specification.

# VERSION

Automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0.0
- Package version: 1.0.0
- Build date: 2017-06-01T10:49:16.404+03:00
- Build package: class io.swagger.codegen.languages.PerlClientCodegen
For more information, please visit [https://www.processmaker.io/](https://www.processmaker.io/)

## A note on Moose

This role is the only component of the library that uses Moose. See 
ProcessMaker::PMIO::ApiFactory for non-Moosey usage. 

# SYNOPSIS

The Perl Swagger Codegen project builds a library of Perl modules to interact with 
a web service defined by a OpenAPI Specification. See below for how to build the 
library.

This module provides an interface to the generated library. All the classes, 
objects, and methods (well, not quite \*all\*, see below) are flattened into this 
role. 

        package MyApp;
        use Moose;
        with 'ProcessMaker::PMIO::Role';
        
        package main;
        
        my $api = MyApp->new({ tokens => $tokens });
        
        my $pet = $api->get_pet_by_id(pet_id => $pet_id);
        

## Structure of the library

The library consists of a set of API classes, one for each endpoint. These APIs
implement the method calls available on each endpoint. 

Additionally, there is a set of "object" classes, which represent the objects 
returned by and sent to the methods on the endpoints. 

An API factory class is provided, which builds instances of each endpoint API. 

This Moose role flattens all the methods from the endpoint APIs onto the consuming 
class. It also provides methods to retrieve the endpoint API objects, and the API 
factory object, should you need it. 

For documentation of all these methods, see AUTOMATIC DOCUMENTATION below.

## Configuring authentication

In the normal case, the OpenAPI Spec will describe what parameters are
required and where to put them. You just need to supply the tokens.

    my $tokens = {
        # basic
        username => $username,
        password => $password,
        
        # oauth
        access_token => $oauth_token,
        
        # keys
        $some_key => { token => $token,
                       prefix => $prefix, 
                       in => $in,             # 'head||query',     
                       },
                       
        $another => { token => $token,
                      prefix => $prefix, 
                      in => $in,              # 'head||query',      
                      },                   
        ...,
        
        };
        
        my $api = MyApp->new({ tokens => $tokens });

Note these are all optional, as are `prefix` and `in`, and depend on the API
you are accessing. Usually `prefix` and `in` will be determined by the code generator from
the spec and you will not need to set them at run time. If not, `in` will
default to 'head' and `prefix` to the empty string. 

The tokens will be placed in the `ProcessMaker::PMIO::Configuration` namespace
as follows, but you don't need to know about this. 

- `$ProcessMaker::PMIO::Configuration::username`

    String. The username for basic auth.

- `$ProcessMaker::PMIO::Configuration::password`

    String. The password for basic auth.

- `$ProcessMaker::PMIO::Configuration::api_key`

    Hashref. Keyed on the name of each key (there can be multiple tokens).

            $ProcessMaker::PMIO::Configuration::api_key = {
                    secretKey => 'aaaabbbbccccdddd',
                    anotherKey => '1111222233334444',
                    };

- `$ProcessMaker::PMIO::Configuration::api_key_prefix`

    Hashref. Keyed on the name of each key (there can be multiple tokens). Note not
    all api keys require a prefix.

            $ProcessMaker::PMIO::Configuration::api_key_prefix = {
                    secretKey => 'string',
                    anotherKey => 'same or some other string',
                    };

- `$ProcessMaker::PMIO::Configuration::access_token`

    String. The OAuth access token. 

# METHODS

## `base_url`

The generated code has the `base_url` already set as a default value. This method 
returns (and optionally sets, but only if the API client has not been 
created yet) the current value of `base_url`.

## `api_factory`

Returns an API factory object. You probably won't need to call this directly. 

        $self->api_factory('Pet'); # returns a ProcessMaker::PMIO::PetApi instance
        
        $self->pet_api;            # the same

# MISSING METHODS

Most of the methods on the API are delegated to individual endpoint API objects
(e.g. Pet API, Store API, User API etc). Where different endpoint APIs use the
same method name (e.g. `new()`), these methods can't be delegated. So you need
to call `$api->pet_api->new()`.

In principle, every API is susceptible to the presence of a few, random, undelegatable 
method names. In practice, because of the way method names are constructed, it's 
unlikely in general that any methods will be undelegatable, except for: 

        new()
        class_documentation()
        method_documentation()

To call these methods, you need to get a handle on the relevant object, either
by calling `$api->foo_api` or by retrieving an object, e.g.
`$api->get_pet_by_id(pet_id => $pet_id)`. They are class methods, so
you could also call them on class names.

# BUILDING YOUR LIBRARY

See the homepage `https://github.com/swagger-api/swagger-codegen` for full details. 
But briefly, clone the git repository, build the codegen codebase, set up your build 
config file, then run the API build script. You will need git, Java 7 or 8 and Apache
maven 3.0.3 or better already installed.

The config file should specify the project name for the generated library: 

        {"moduleName":"WWW::MyProjectName"}

Your library files will be built under `WWW::MyProjectName`.

          $ git clone https://github.com/swagger-api/swagger-codegen.git
          $ cd swagger-codegen
          $ mvn package
          $ java -jar modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate \
    -i [URL or file path to JSON swagger API spec] \
    -l perl \
    -c /path/to/config/file.json \
    -o /path/to/output/folder

Bang, all done. Run the `autodoc` script in the `bin` directory to see the API 
you just built. 

# AUTOMATIC DOCUMENTATION

You can print out a summary of the generated API by running the included
`autodoc` script in the `bin` directory of your generated library. A few
output formats are supported:

          Usage: autodoc [OPTION]

    -w           wide format (default)
    -n           narrow format
    -p           POD format 
    -H           HTML format 
    -m           Markdown format
    -h           print this help message
    -c           your application class
    

The `-c` option allows you to load and inspect your own application. A dummy
namespace is used if you don't supply your own class.

# DOCUMENTATION FROM THE OpenAPI Spec

Additional documentation for each class and method may be provided by the Swagger 
spec. If so, this is available via the `class_documentation()` and 
`method_documentation()` methods on each generated object class, and the 
`method_documentation()` method on the endpoint API classes: 

        my $cmdoc = $api->pet_api->method_documentation->{$method_name}; 
        
        my $odoc = $api->get_pet_by_id->(pet_id => $pet_id)->class_documentation;                                  
        my $omdoc = $api->get_pet_by_id->(pet_id => $pet_id)->method_documentation->{method_name}; 
        

Each of these calls returns a hashref with various useful pieces of information.

# LOAD THE MODULES

To load the API packages:
```perl
use ProcessMaker::PMIO::ProcessmakerApi;

```

To load the models:
```perl
use ProcessMaker::PMIO::Object::BpmnFile;
use ProcessMaker::PMIO::Object::BpmnFileAttributes;
use ProcessMaker::PMIO::Object::BpmnImportItem;
use ProcessMaker::PMIO::Object::Client;
use ProcessMaker::PMIO::Object::ClientAttributes;
use ProcessMaker::PMIO::Object::ClientCollection;
use ProcessMaker::PMIO::Object::ClientCreateItem;
use ProcessMaker::PMIO::Object::ClientItem;
use ProcessMaker::PMIO::Object::ClientUpdateItem;
use ProcessMaker::PMIO::Object::DataModel;
use ProcessMaker::PMIO::Object::DataModelAttributes;
use ProcessMaker::PMIO::Object::DataModelItem;
use ProcessMaker::PMIO::Object::DataModelItem1;
use ProcessMaker::PMIO::Object::DataModelItemAttributes;
use ProcessMaker::PMIO::Object::Error;
use ProcessMaker::PMIO::Object::ErrorArray;
use ProcessMaker::PMIO::Object::Event;
use ProcessMaker::PMIO::Object::EventAttributes;
use ProcessMaker::PMIO::Object::EventCollection;
use ProcessMaker::PMIO::Object::EventConnector;
use ProcessMaker::PMIO::Object::EventConnector1;
use ProcessMaker::PMIO::Object::EventConnectorAttributes;
use ProcessMaker::PMIO::Object::EventConnectorCreateItem;
use ProcessMaker::PMIO::Object::EventConnectorUpdateItem;
use ProcessMaker::PMIO::Object::EventConnectorsCollection;
use ProcessMaker::PMIO::Object::EventCreateItem;
use ProcessMaker::PMIO::Object::EventItem;
use ProcessMaker::PMIO::Object::EventUpdateItem;
use ProcessMaker::PMIO::Object::Flow;
use ProcessMaker::PMIO::Object::FlowAttributes;
use ProcessMaker::PMIO::Object::FlowCollection;
use ProcessMaker::PMIO::Object::FlowCreateItem;
use ProcessMaker::PMIO::Object::FlowItem;
use ProcessMaker::PMIO::Object::FlowUpdateItem;
use ProcessMaker::PMIO::Object::Gateway;
use ProcessMaker::PMIO::Object::GatewayAttributes;
use ProcessMaker::PMIO::Object::GatewayCollection;
use ProcessMaker::PMIO::Object::GatewayCreateItem;
use ProcessMaker::PMIO::Object::GatewayItem;
use ProcessMaker::PMIO::Object::GatewayUpdateItem;
use ProcessMaker::PMIO::Object::Group;
use ProcessMaker::PMIO::Object::GroupAddUsersItem;
use ProcessMaker::PMIO::Object::GroupAttributes;
use ProcessMaker::PMIO::Object::GroupCollection;
use ProcessMaker::PMIO::Object::GroupCreateItem;
use ProcessMaker::PMIO::Object::GroupIds;
use ProcessMaker::PMIO::Object::GroupItem;
use ProcessMaker::PMIO::Object::GroupRemoveUsersItem;
use ProcessMaker::PMIO::Object::GroupSyncUsersItem;
use ProcessMaker::PMIO::Object::GroupUpdateItem;
use ProcessMaker::PMIO::Object::InlineResponse200;
use ProcessMaker::PMIO::Object::InputOutput;
use ProcessMaker::PMIO::Object::InputOutputAttributes;
use ProcessMaker::PMIO::Object::InputOutputCollection;
use ProcessMaker::PMIO::Object::InputOutputCreateItem;
use ProcessMaker::PMIO::Object::InputOutputItem;
use ProcessMaker::PMIO::Object::InputOutputUpdateItem;
use ProcessMaker::PMIO::Object::Instance;
use ProcessMaker::PMIO::Object::InstanceAttributes;
use ProcessMaker::PMIO::Object::InstanceCollection;
use ProcessMaker::PMIO::Object::InstanceCreateItem;
use ProcessMaker::PMIO::Object::InstanceItem;
use ProcessMaker::PMIO::Object::InstanceUpdateItem;
use ProcessMaker::PMIO::Object::Meta;
use ProcessMaker::PMIO::Object::MetaLog;
use ProcessMaker::PMIO::Object::Pagination;
use ProcessMaker::PMIO::Object::PaginationLinks;
use ProcessMaker::PMIO::Object::Process;
use ProcessMaker::PMIO::Object::ProcessAttributes;
use ProcessMaker::PMIO::Object::ProcessCollection;
use ProcessMaker::PMIO::Object::ProcessCollection1;
use ProcessMaker::PMIO::Object::ProcessCreateItem;
use ProcessMaker::PMIO::Object::ProcessItem;
use ProcessMaker::PMIO::Object::ProcessUpdateItem;
use ProcessMaker::PMIO::Object::ResultSuccess;
use ProcessMaker::PMIO::Object::ResultSuccessMeta;
use ProcessMaker::PMIO::Object::Task;
use ProcessMaker::PMIO::Object::TaskAddGroupsItem;
use ProcessMaker::PMIO::Object::TaskAttributes;
use ProcessMaker::PMIO::Object::TaskCollection;
use ProcessMaker::PMIO::Object::TaskConnector;
use ProcessMaker::PMIO::Object::TaskConnector1;
use ProcessMaker::PMIO::Object::TaskConnectorAttributes;
use ProcessMaker::PMIO::Object::TaskConnectorCreateItem;
use ProcessMaker::PMIO::Object::TaskConnectorUpdateItem;
use ProcessMaker::PMIO::Object::TaskConnectorsCollection;
use ProcessMaker::PMIO::Object::TaskCreateItem;
use ProcessMaker::PMIO::Object::TaskInstance;
use ProcessMaker::PMIO::Object::TaskInstanceAttributes;
use ProcessMaker::PMIO::Object::TaskInstanceCollection;
use ProcessMaker::PMIO::Object::TaskInstanceUpdateItem;
use ProcessMaker::PMIO::Object::TaskItem;
use ProcessMaker::PMIO::Object::TaskRemoveGroupsItem;
use ProcessMaker::PMIO::Object::TaskSyncGroupsItem;
use ProcessMaker::PMIO::Object::TaskUpdateItem;
use ProcessMaker::PMIO::Object::TriggerEventCreateItem;
use ProcessMaker::PMIO::Object::User;
use ProcessMaker::PMIO::Object::UserAttributes;
use ProcessMaker::PMIO::Object::UserCollection;
use ProcessMaker::PMIO::Object::UserCreateItem;
use ProcessMaker::PMIO::Object::UserIds;
use ProcessMaker::PMIO::Object::UserItem;
use ProcessMaker::PMIO::Object::UserUpdateItem;

````

# GETTING STARTED
Put the Perl SDK under the 'lib' folder in your project directory, then run the following
```perl
#!/usr/bin/perl
use lib 'lib';
use strict;
use warnings;
# load the API package
use ProcessMaker::PMIO::ProcessmakerApi;

# load the models
use ProcessMaker::PMIO::Object::BpmnFile;
use ProcessMaker::PMIO::Object::BpmnFileAttributes;
use ProcessMaker::PMIO::Object::BpmnImportItem;
use ProcessMaker::PMIO::Object::Client;
use ProcessMaker::PMIO::Object::ClientAttributes;
use ProcessMaker::PMIO::Object::ClientCollection;
use ProcessMaker::PMIO::Object::ClientCreateItem;
use ProcessMaker::PMIO::Object::ClientItem;
use ProcessMaker::PMIO::Object::ClientUpdateItem;
use ProcessMaker::PMIO::Object::DataModel;
use ProcessMaker::PMIO::Object::DataModelAttributes;
use ProcessMaker::PMIO::Object::DataModelItem;
use ProcessMaker::PMIO::Object::DataModelItem1;
use ProcessMaker::PMIO::Object::DataModelItemAttributes;
use ProcessMaker::PMIO::Object::Error;
use ProcessMaker::PMIO::Object::ErrorArray;
use ProcessMaker::PMIO::Object::Event;
use ProcessMaker::PMIO::Object::EventAttributes;
use ProcessMaker::PMIO::Object::EventCollection;
use ProcessMaker::PMIO::Object::EventConnector;
use ProcessMaker::PMIO::Object::EventConnector1;
use ProcessMaker::PMIO::Object::EventConnectorAttributes;
use ProcessMaker::PMIO::Object::EventConnectorCreateItem;
use ProcessMaker::PMIO::Object::EventConnectorUpdateItem;
use ProcessMaker::PMIO::Object::EventConnectorsCollection;
use ProcessMaker::PMIO::Object::EventCreateItem;
use ProcessMaker::PMIO::Object::EventItem;
use ProcessMaker::PMIO::Object::EventUpdateItem;
use ProcessMaker::PMIO::Object::Flow;
use ProcessMaker::PMIO::Object::FlowAttributes;
use ProcessMaker::PMIO::Object::FlowCollection;
use ProcessMaker::PMIO::Object::FlowCreateItem;
use ProcessMaker::PMIO::Object::FlowItem;
use ProcessMaker::PMIO::Object::FlowUpdateItem;
use ProcessMaker::PMIO::Object::Gateway;
use ProcessMaker::PMIO::Object::GatewayAttributes;
use ProcessMaker::PMIO::Object::GatewayCollection;
use ProcessMaker::PMIO::Object::GatewayCreateItem;
use ProcessMaker::PMIO::Object::GatewayItem;
use ProcessMaker::PMIO::Object::GatewayUpdateItem;
use ProcessMaker::PMIO::Object::Group;
use ProcessMaker::PMIO::Object::GroupAddUsersItem;
use ProcessMaker::PMIO::Object::GroupAttributes;
use ProcessMaker::PMIO::Object::GroupCollection;
use ProcessMaker::PMIO::Object::GroupCreateItem;
use ProcessMaker::PMIO::Object::GroupIds;
use ProcessMaker::PMIO::Object::GroupItem;
use ProcessMaker::PMIO::Object::GroupRemoveUsersItem;
use ProcessMaker::PMIO::Object::GroupSyncUsersItem;
use ProcessMaker::PMIO::Object::GroupUpdateItem;
use ProcessMaker::PMIO::Object::InlineResponse200;
use ProcessMaker::PMIO::Object::InputOutput;
use ProcessMaker::PMIO::Object::InputOutputAttributes;
use ProcessMaker::PMIO::Object::InputOutputCollection;
use ProcessMaker::PMIO::Object::InputOutputCreateItem;
use ProcessMaker::PMIO::Object::InputOutputItem;
use ProcessMaker::PMIO::Object::InputOutputUpdateItem;
use ProcessMaker::PMIO::Object::Instance;
use ProcessMaker::PMIO::Object::InstanceAttributes;
use ProcessMaker::PMIO::Object::InstanceCollection;
use ProcessMaker::PMIO::Object::InstanceCreateItem;
use ProcessMaker::PMIO::Object::InstanceItem;
use ProcessMaker::PMIO::Object::InstanceUpdateItem;
use ProcessMaker::PMIO::Object::Meta;
use ProcessMaker::PMIO::Object::MetaLog;
use ProcessMaker::PMIO::Object::Pagination;
use ProcessMaker::PMIO::Object::PaginationLinks;
use ProcessMaker::PMIO::Object::Process;
use ProcessMaker::PMIO::Object::ProcessAttributes;
use ProcessMaker::PMIO::Object::ProcessCollection;
use ProcessMaker::PMIO::Object::ProcessCollection1;
use ProcessMaker::PMIO::Object::ProcessCreateItem;
use ProcessMaker::PMIO::Object::ProcessItem;
use ProcessMaker::PMIO::Object::ProcessUpdateItem;
use ProcessMaker::PMIO::Object::ResultSuccess;
use ProcessMaker::PMIO::Object::ResultSuccessMeta;
use ProcessMaker::PMIO::Object::Task;
use ProcessMaker::PMIO::Object::TaskAddGroupsItem;
use ProcessMaker::PMIO::Object::TaskAttributes;
use ProcessMaker::PMIO::Object::TaskCollection;
use ProcessMaker::PMIO::Object::TaskConnector;
use ProcessMaker::PMIO::Object::TaskConnector1;
use ProcessMaker::PMIO::Object::TaskConnectorAttributes;
use ProcessMaker::PMIO::Object::TaskConnectorCreateItem;
use ProcessMaker::PMIO::Object::TaskConnectorUpdateItem;
use ProcessMaker::PMIO::Object::TaskConnectorsCollection;
use ProcessMaker::PMIO::Object::TaskCreateItem;
use ProcessMaker::PMIO::Object::TaskInstance;
use ProcessMaker::PMIO::Object::TaskInstanceAttributes;
use ProcessMaker::PMIO::Object::TaskInstanceCollection;
use ProcessMaker::PMIO::Object::TaskInstanceUpdateItem;
use ProcessMaker::PMIO::Object::TaskItem;
use ProcessMaker::PMIO::Object::TaskRemoveGroupsItem;
use ProcessMaker::PMIO::Object::TaskSyncGroupsItem;
use ProcessMaker::PMIO::Object::TaskUpdateItem;
use ProcessMaker::PMIO::Object::TriggerEventCreateItem;
use ProcessMaker::PMIO::Object::User;
use ProcessMaker::PMIO::Object::UserAttributes;
use ProcessMaker::PMIO::Object::UserCollection;
use ProcessMaker::PMIO::Object::UserCreateItem;
use ProcessMaker::PMIO::Object::UserIds;
use ProcessMaker::PMIO::Object::UserItem;
use ProcessMaker::PMIO::Object::UserUpdateItem;

# for displaying the API response data
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $user_id = 'user_id_example'; # string | ID of the user related to the Oauth client
my $client_create_item = ProcessMaker::PMIO::Object::ClientCreateItem->new(); # ClientCreateItem | JSON API with the Oauth Client object to add

eval {
    my $result = $api_instance->add_client(user_id => $user_id, client_create_item => $client_create_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->add_client: $@\n";
}

```

# DOCUMENTATION FOR API ENDPOINTS

All URIs are relative to *https://CHANGEME.api.processmaker.io/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ProcessmakerApi* | [**add_client**](docs/ProcessmakerApi.md#add_client) | **POST** /users/{user_id}/clients | 
*ProcessmakerApi* | [**add_event**](docs/ProcessmakerApi.md#add_event) | **POST** /processes/{process_id}/events | 
*ProcessmakerApi* | [**add_event_connector**](docs/ProcessmakerApi.md#add_event_connector) | **POST** /processes/{process_id}/events/{event_id}/connectors | 
*ProcessmakerApi* | [**add_flow**](docs/ProcessmakerApi.md#add_flow) | **POST** /processes/{process_id}/flows | 
*ProcessmakerApi* | [**add_gateway**](docs/ProcessmakerApi.md#add_gateway) | **POST** /processes/{process_id}/gateways | 
*ProcessmakerApi* | [**add_group**](docs/ProcessmakerApi.md#add_group) | **POST** /groups | 
*ProcessmakerApi* | [**add_groups_to_task**](docs/ProcessmakerApi.md#add_groups_to_task) | **PUT** /processes/{process_id}/tasks/{task_id}/groups | 
*ProcessmakerApi* | [**add_input_output**](docs/ProcessmakerApi.md#add_input_output) | **POST** /processes/{process_id}/tasks/{task_id}/inputoutput | 
*ProcessmakerApi* | [**add_instance**](docs/ProcessmakerApi.md#add_instance) | **POST** /processes/{process_id}/instances | 
*ProcessmakerApi* | [**add_process**](docs/ProcessmakerApi.md#add_process) | **POST** /processes | 
*ProcessmakerApi* | [**add_task**](docs/ProcessmakerApi.md#add_task) | **POST** /processes/{process_id}/tasks | 
*ProcessmakerApi* | [**add_task_connector**](docs/ProcessmakerApi.md#add_task_connector) | **POST** /processes/{process_id}/tasks/{task_id}/connectors | 
*ProcessmakerApi* | [**add_user**](docs/ProcessmakerApi.md#add_user) | **POST** /users | 
*ProcessmakerApi* | [**add_users_to_group**](docs/ProcessmakerApi.md#add_users_to_group) | **PUT** /groups/{id}/users | 
*ProcessmakerApi* | [**delete_client**](docs/ProcessmakerApi.md#delete_client) | **DELETE** /users/{user_id}/clients/{client_id} | 
*ProcessmakerApi* | [**delete_event**](docs/ProcessmakerApi.md#delete_event) | **DELETE** /processes/{process_id}/events/{event_id} | 
*ProcessmakerApi* | [**delete_event_connector**](docs/ProcessmakerApi.md#delete_event_connector) | **DELETE** /processes/{process_id}/events/{event_id}/connectors/{connector_id} | 
*ProcessmakerApi* | [**delete_flow**](docs/ProcessmakerApi.md#delete_flow) | **DELETE** /processes/{process_id}/flows/{flow_id} | 
*ProcessmakerApi* | [**delete_gateway**](docs/ProcessmakerApi.md#delete_gateway) | **DELETE** /processes/{process_id}/gateways/{gateway_id} | 
*ProcessmakerApi* | [**delete_group**](docs/ProcessmakerApi.md#delete_group) | **DELETE** /groups/{id} | 
*ProcessmakerApi* | [**delete_input_output**](docs/ProcessmakerApi.md#delete_input_output) | **DELETE** /processes/{process_id}/tasks/{task_id}/inputoutput/{inputoutput_uid} | 
*ProcessmakerApi* | [**delete_instance**](docs/ProcessmakerApi.md#delete_instance) | **DELETE** /processes/{process_id}/instances/{instance_id} | 
*ProcessmakerApi* | [**delete_process**](docs/ProcessmakerApi.md#delete_process) | **DELETE** /processes/{id} | 
*ProcessmakerApi* | [**delete_task**](docs/ProcessmakerApi.md#delete_task) | **DELETE** /processes/{process_id}/tasks/{task_id} | 
*ProcessmakerApi* | [**delete_task_connector**](docs/ProcessmakerApi.md#delete_task_connector) | **DELETE** /processes/{process_id}/tasks/{task_id}/connectors/{connector_id} | 
*ProcessmakerApi* | [**delete_user**](docs/ProcessmakerApi.md#delete_user) | **DELETE** /users/{id} | 
*ProcessmakerApi* | [**event_trigger**](docs/ProcessmakerApi.md#event_trigger) | **POST** /processes/{process_id}/events/{event_id}/trigger | 
*ProcessmakerApi* | [**find_client_by_id**](docs/ProcessmakerApi.md#find_client_by_id) | **GET** /users/{user_id}/clients/{client_id} | 
*ProcessmakerApi* | [**find_clients**](docs/ProcessmakerApi.md#find_clients) | **GET** /users/{user_id}/clients | 
*ProcessmakerApi* | [**find_data_model**](docs/ProcessmakerApi.md#find_data_model) | **GET** /processes/{process_id}/instances/{instance_id}/datamodel | 
*ProcessmakerApi* | [**find_event_by_id**](docs/ProcessmakerApi.md#find_event_by_id) | **GET** /processes/{process_id}/events/{event_id} | 
*ProcessmakerApi* | [**find_event_connector_by_id**](docs/ProcessmakerApi.md#find_event_connector_by_id) | **GET** /processes/{process_id}/events/{event_id}/connectors/{connector_id} | 
*ProcessmakerApi* | [**find_event_connectors**](docs/ProcessmakerApi.md#find_event_connectors) | **GET** /processes/{process_id}/events/{event_id}/connectors | 
*ProcessmakerApi* | [**find_events**](docs/ProcessmakerApi.md#find_events) | **GET** /processes/{process_id}/events | 
*ProcessmakerApi* | [**find_flow_by_id**](docs/ProcessmakerApi.md#find_flow_by_id) | **GET** /processes/{process_id}/flows/{flow_id} | 
*ProcessmakerApi* | [**find_flows**](docs/ProcessmakerApi.md#find_flows) | **GET** /processes/{process_id}/flows | 
*ProcessmakerApi* | [**find_gateway_by_id**](docs/ProcessmakerApi.md#find_gateway_by_id) | **GET** /processes/{process_id}/gateways/{gateway_id} | 
*ProcessmakerApi* | [**find_gateways**](docs/ProcessmakerApi.md#find_gateways) | **GET** /processes/{process_id}/gateways | 
*ProcessmakerApi* | [**find_group_by_id**](docs/ProcessmakerApi.md#find_group_by_id) | **GET** /groups/{id} | 
*ProcessmakerApi* | [**find_groups**](docs/ProcessmakerApi.md#find_groups) | **GET** /groups | 
*ProcessmakerApi* | [**find_input_output_by_id**](docs/ProcessmakerApi.md#find_input_output_by_id) | **GET** /processes/{process_id}/tasks/{task_id}/inputoutput/{inputoutput_uid} | 
*ProcessmakerApi* | [**find_input_outputs**](docs/ProcessmakerApi.md#find_input_outputs) | **GET** /processes/{process_id}/tasks/{task_id}/inputoutput | 
*ProcessmakerApi* | [**find_instance_by_id**](docs/ProcessmakerApi.md#find_instance_by_id) | **GET** /processes/{process_id}/instances/{instance_id} | 
*ProcessmakerApi* | [**find_instances**](docs/ProcessmakerApi.md#find_instances) | **GET** /processes/{process_id}/instances | 
*ProcessmakerApi* | [**find_process_by_id**](docs/ProcessmakerApi.md#find_process_by_id) | **GET** /processes/{id} | 
*ProcessmakerApi* | [**find_processes**](docs/ProcessmakerApi.md#find_processes) | **GET** /processes | 
*ProcessmakerApi* | [**find_task_by_id**](docs/ProcessmakerApi.md#find_task_by_id) | **GET** /processes/{process_id}/tasks/{task_id} | 
*ProcessmakerApi* | [**find_task_connector_by_id**](docs/ProcessmakerApi.md#find_task_connector_by_id) | **GET** /processes/{process_id}/tasks/{task_id}/connectors/{connector_id} | 
*ProcessmakerApi* | [**find_task_connectors**](docs/ProcessmakerApi.md#find_task_connectors) | **GET** /processes/{process_id}/tasks/{task_id}/connectors | 
*ProcessmakerApi* | [**find_task_instance_by_id**](docs/ProcessmakerApi.md#find_task_instance_by_id) | **GET** /task_instances/{task_instance_id} | 
*ProcessmakerApi* | [**find_task_instances**](docs/ProcessmakerApi.md#find_task_instances) | **GET** /task_instances | 
*ProcessmakerApi* | [**find_tasks**](docs/ProcessmakerApi.md#find_tasks) | **GET** /processes/{process_id}/tasks | 
*ProcessmakerApi* | [**find_user_by_id**](docs/ProcessmakerApi.md#find_user_by_id) | **GET** /users/{id} | 
*ProcessmakerApi* | [**find_users**](docs/ProcessmakerApi.md#find_users) | **GET** /users | 
*ProcessmakerApi* | [**import_bpmn_file**](docs/ProcessmakerApi.md#import_bpmn_file) | **POST** /processes/import | 
*ProcessmakerApi* | [**myself_user**](docs/ProcessmakerApi.md#myself_user) | **GET** /users/myself | 
*ProcessmakerApi* | [**remove_groups_from_task**](docs/ProcessmakerApi.md#remove_groups_from_task) | **DELETE** /processes/{process_id}/tasks/{task_id}/groups | 
*ProcessmakerApi* | [**remove_users_from_group**](docs/ProcessmakerApi.md#remove_users_from_group) | **DELETE** /groups/{id}/users | 
*ProcessmakerApi* | [**sync_groups_to_task**](docs/ProcessmakerApi.md#sync_groups_to_task) | **POST** /processes/{process_id}/tasks/{task_id}/groups | 
*ProcessmakerApi* | [**sync_users_to_group**](docs/ProcessmakerApi.md#sync_users_to_group) | **POST** /groups/{id}/users | 
*ProcessmakerApi* | [**update_client**](docs/ProcessmakerApi.md#update_client) | **PUT** /users/{user_id}/clients/{client_id} | 
*ProcessmakerApi* | [**update_event**](docs/ProcessmakerApi.md#update_event) | **PUT** /processes/{process_id}/events/{event_id} | 
*ProcessmakerApi* | [**update_event_connector**](docs/ProcessmakerApi.md#update_event_connector) | **PUT** /processes/{process_id}/events/{event_id}/connectors/{connector_id} | 
*ProcessmakerApi* | [**update_flow**](docs/ProcessmakerApi.md#update_flow) | **PUT** /processes/{process_id}/flows/{flow_id} | 
*ProcessmakerApi* | [**update_gateway**](docs/ProcessmakerApi.md#update_gateway) | **PUT** /processes/{process_id}/gateways/{gateway_id} | 
*ProcessmakerApi* | [**update_group**](docs/ProcessmakerApi.md#update_group) | **PUT** /groups/{id} | 
*ProcessmakerApi* | [**update_input_output**](docs/ProcessmakerApi.md#update_input_output) | **PUT** /processes/{process_id}/tasks/{task_id}/inputoutput/{inputoutput_uid} | 
*ProcessmakerApi* | [**update_instance**](docs/ProcessmakerApi.md#update_instance) | **PUT** /processes/{process_id}/instances/{instance_id} | 
*ProcessmakerApi* | [**update_process**](docs/ProcessmakerApi.md#update_process) | **PUT** /processes/{id} | 
*ProcessmakerApi* | [**update_task**](docs/ProcessmakerApi.md#update_task) | **PUT** /processes/{process_id}/tasks/{task_id} | 
*ProcessmakerApi* | [**update_task_connector**](docs/ProcessmakerApi.md#update_task_connector) | **PUT** /processes/{process_id}/tasks/{task_id}/connectors/{connector_id} | 
*ProcessmakerApi* | [**update_task_instance**](docs/ProcessmakerApi.md#update_task_instance) | **PATCH** /task_instances/{task_instance_id} | 
*ProcessmakerApi* | [**update_user**](docs/ProcessmakerApi.md#update_user) | **PUT** /users/{id} | 


# DOCUMENTATION FOR MODELS
 - [ProcessMaker::PMIO::Object::BpmnFile](docs/BpmnFile.md)
 - [ProcessMaker::PMIO::Object::BpmnFileAttributes](docs/BpmnFileAttributes.md)
 - [ProcessMaker::PMIO::Object::BpmnImportItem](docs/BpmnImportItem.md)
 - [ProcessMaker::PMIO::Object::Client](docs/Client.md)
 - [ProcessMaker::PMIO::Object::ClientAttributes](docs/ClientAttributes.md)
 - [ProcessMaker::PMIO::Object::ClientCollection](docs/ClientCollection.md)
 - [ProcessMaker::PMIO::Object::ClientCreateItem](docs/ClientCreateItem.md)
 - [ProcessMaker::PMIO::Object::ClientItem](docs/ClientItem.md)
 - [ProcessMaker::PMIO::Object::ClientUpdateItem](docs/ClientUpdateItem.md)
 - [ProcessMaker::PMIO::Object::DataModel](docs/DataModel.md)
 - [ProcessMaker::PMIO::Object::DataModelAttributes](docs/DataModelAttributes.md)
 - [ProcessMaker::PMIO::Object::DataModelItem](docs/DataModelItem.md)
 - [ProcessMaker::PMIO::Object::DataModelItem1](docs/DataModelItem1.md)
 - [ProcessMaker::PMIO::Object::DataModelItemAttributes](docs/DataModelItemAttributes.md)
 - [ProcessMaker::PMIO::Object::Error](docs/Error.md)
 - [ProcessMaker::PMIO::Object::ErrorArray](docs/ErrorArray.md)
 - [ProcessMaker::PMIO::Object::Event](docs/Event.md)
 - [ProcessMaker::PMIO::Object::EventAttributes](docs/EventAttributes.md)
 - [ProcessMaker::PMIO::Object::EventCollection](docs/EventCollection.md)
 - [ProcessMaker::PMIO::Object::EventConnector](docs/EventConnector.md)
 - [ProcessMaker::PMIO::Object::EventConnector1](docs/EventConnector1.md)
 - [ProcessMaker::PMIO::Object::EventConnectorAttributes](docs/EventConnectorAttributes.md)
 - [ProcessMaker::PMIO::Object::EventConnectorCreateItem](docs/EventConnectorCreateItem.md)
 - [ProcessMaker::PMIO::Object::EventConnectorUpdateItem](docs/EventConnectorUpdateItem.md)
 - [ProcessMaker::PMIO::Object::EventConnectorsCollection](docs/EventConnectorsCollection.md)
 - [ProcessMaker::PMIO::Object::EventCreateItem](docs/EventCreateItem.md)
 - [ProcessMaker::PMIO::Object::EventItem](docs/EventItem.md)
 - [ProcessMaker::PMIO::Object::EventUpdateItem](docs/EventUpdateItem.md)
 - [ProcessMaker::PMIO::Object::Flow](docs/Flow.md)
 - [ProcessMaker::PMIO::Object::FlowAttributes](docs/FlowAttributes.md)
 - [ProcessMaker::PMIO::Object::FlowCollection](docs/FlowCollection.md)
 - [ProcessMaker::PMIO::Object::FlowCreateItem](docs/FlowCreateItem.md)
 - [ProcessMaker::PMIO::Object::FlowItem](docs/FlowItem.md)
 - [ProcessMaker::PMIO::Object::FlowUpdateItem](docs/FlowUpdateItem.md)
 - [ProcessMaker::PMIO::Object::Gateway](docs/Gateway.md)
 - [ProcessMaker::PMIO::Object::GatewayAttributes](docs/GatewayAttributes.md)
 - [ProcessMaker::PMIO::Object::GatewayCollection](docs/GatewayCollection.md)
 - [ProcessMaker::PMIO::Object::GatewayCreateItem](docs/GatewayCreateItem.md)
 - [ProcessMaker::PMIO::Object::GatewayItem](docs/GatewayItem.md)
 - [ProcessMaker::PMIO::Object::GatewayUpdateItem](docs/GatewayUpdateItem.md)
 - [ProcessMaker::PMIO::Object::Group](docs/Group.md)
 - [ProcessMaker::PMIO::Object::GroupAddUsersItem](docs/GroupAddUsersItem.md)
 - [ProcessMaker::PMIO::Object::GroupAttributes](docs/GroupAttributes.md)
 - [ProcessMaker::PMIO::Object::GroupCollection](docs/GroupCollection.md)
 - [ProcessMaker::PMIO::Object::GroupCreateItem](docs/GroupCreateItem.md)
 - [ProcessMaker::PMIO::Object::GroupIds](docs/GroupIds.md)
 - [ProcessMaker::PMIO::Object::GroupItem](docs/GroupItem.md)
 - [ProcessMaker::PMIO::Object::GroupRemoveUsersItem](docs/GroupRemoveUsersItem.md)
 - [ProcessMaker::PMIO::Object::GroupSyncUsersItem](docs/GroupSyncUsersItem.md)
 - [ProcessMaker::PMIO::Object::GroupUpdateItem](docs/GroupUpdateItem.md)
 - [ProcessMaker::PMIO::Object::InlineResponse200](docs/InlineResponse200.md)
 - [ProcessMaker::PMIO::Object::InputOutput](docs/InputOutput.md)
 - [ProcessMaker::PMIO::Object::InputOutputAttributes](docs/InputOutputAttributes.md)
 - [ProcessMaker::PMIO::Object::InputOutputCollection](docs/InputOutputCollection.md)
 - [ProcessMaker::PMIO::Object::InputOutputCreateItem](docs/InputOutputCreateItem.md)
 - [ProcessMaker::PMIO::Object::InputOutputItem](docs/InputOutputItem.md)
 - [ProcessMaker::PMIO::Object::InputOutputUpdateItem](docs/InputOutputUpdateItem.md)
 - [ProcessMaker::PMIO::Object::Instance](docs/Instance.md)
 - [ProcessMaker::PMIO::Object::InstanceAttributes](docs/InstanceAttributes.md)
 - [ProcessMaker::PMIO::Object::InstanceCollection](docs/InstanceCollection.md)
 - [ProcessMaker::PMIO::Object::InstanceCreateItem](docs/InstanceCreateItem.md)
 - [ProcessMaker::PMIO::Object::InstanceItem](docs/InstanceItem.md)
 - [ProcessMaker::PMIO::Object::InstanceUpdateItem](docs/InstanceUpdateItem.md)
 - [ProcessMaker::PMIO::Object::Meta](docs/Meta.md)
 - [ProcessMaker::PMIO::Object::MetaLog](docs/MetaLog.md)
 - [ProcessMaker::PMIO::Object::Pagination](docs/Pagination.md)
 - [ProcessMaker::PMIO::Object::PaginationLinks](docs/PaginationLinks.md)
 - [ProcessMaker::PMIO::Object::Process](docs/Process.md)
 - [ProcessMaker::PMIO::Object::ProcessAttributes](docs/ProcessAttributes.md)
 - [ProcessMaker::PMIO::Object::ProcessCollection](docs/ProcessCollection.md)
 - [ProcessMaker::PMIO::Object::ProcessCollection1](docs/ProcessCollection1.md)
 - [ProcessMaker::PMIO::Object::ProcessCreateItem](docs/ProcessCreateItem.md)
 - [ProcessMaker::PMIO::Object::ProcessItem](docs/ProcessItem.md)
 - [ProcessMaker::PMIO::Object::ProcessUpdateItem](docs/ProcessUpdateItem.md)
 - [ProcessMaker::PMIO::Object::ResultSuccess](docs/ResultSuccess.md)
 - [ProcessMaker::PMIO::Object::ResultSuccessMeta](docs/ResultSuccessMeta.md)
 - [ProcessMaker::PMIO::Object::Task](docs/Task.md)
 - [ProcessMaker::PMIO::Object::TaskAddGroupsItem](docs/TaskAddGroupsItem.md)
 - [ProcessMaker::PMIO::Object::TaskAttributes](docs/TaskAttributes.md)
 - [ProcessMaker::PMIO::Object::TaskCollection](docs/TaskCollection.md)
 - [ProcessMaker::PMIO::Object::TaskConnector](docs/TaskConnector.md)
 - [ProcessMaker::PMIO::Object::TaskConnector1](docs/TaskConnector1.md)
 - [ProcessMaker::PMIO::Object::TaskConnectorAttributes](docs/TaskConnectorAttributes.md)
 - [ProcessMaker::PMIO::Object::TaskConnectorCreateItem](docs/TaskConnectorCreateItem.md)
 - [ProcessMaker::PMIO::Object::TaskConnectorUpdateItem](docs/TaskConnectorUpdateItem.md)
 - [ProcessMaker::PMIO::Object::TaskConnectorsCollection](docs/TaskConnectorsCollection.md)
 - [ProcessMaker::PMIO::Object::TaskCreateItem](docs/TaskCreateItem.md)
 - [ProcessMaker::PMIO::Object::TaskInstance](docs/TaskInstance.md)
 - [ProcessMaker::PMIO::Object::TaskInstanceAttributes](docs/TaskInstanceAttributes.md)
 - [ProcessMaker::PMIO::Object::TaskInstanceCollection](docs/TaskInstanceCollection.md)
 - [ProcessMaker::PMIO::Object::TaskInstanceUpdateItem](docs/TaskInstanceUpdateItem.md)
 - [ProcessMaker::PMIO::Object::TaskItem](docs/TaskItem.md)
 - [ProcessMaker::PMIO::Object::TaskRemoveGroupsItem](docs/TaskRemoveGroupsItem.md)
 - [ProcessMaker::PMIO::Object::TaskSyncGroupsItem](docs/TaskSyncGroupsItem.md)
 - [ProcessMaker::PMIO::Object::TaskUpdateItem](docs/TaskUpdateItem.md)
 - [ProcessMaker::PMIO::Object::TriggerEventCreateItem](docs/TriggerEventCreateItem.md)
 - [ProcessMaker::PMIO::Object::User](docs/User.md)
 - [ProcessMaker::PMIO::Object::UserAttributes](docs/UserAttributes.md)
 - [ProcessMaker::PMIO::Object::UserCollection](docs/UserCollection.md)
 - [ProcessMaker::PMIO::Object::UserCreateItem](docs/UserCreateItem.md)
 - [ProcessMaker::PMIO::Object::UserIds](docs/UserIds.md)
 - [ProcessMaker::PMIO::Object::UserItem](docs/UserItem.md)
 - [ProcessMaker::PMIO::Object::UserUpdateItem](docs/UserUpdateItem.md)


# DOCUMENTATION FOR AUTHORIZATION

## PasswordGrant

- **Type**: OAuth
- **Flow**: password
- **Authorization URL**: /oauth/access_token
- **Scopes**: N/A



