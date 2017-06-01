# ProcessMaker::PMIO::ProcessmakerApi

## Load the API package
```perl
use ProcessMaker::PMIO::Object::ProcessmakerApi;
```

All URIs are relative to *https://CHANGEME.api.processmaker.io/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_client**](ProcessmakerApi.md#add_client) | **POST** /users/{user_id}/clients | 
[**add_event**](ProcessmakerApi.md#add_event) | **POST** /processes/{process_id}/events | 
[**add_event_connector**](ProcessmakerApi.md#add_event_connector) | **POST** /processes/{process_id}/events/{event_id}/connectors | 
[**add_flow**](ProcessmakerApi.md#add_flow) | **POST** /processes/{process_id}/flows | 
[**add_gateway**](ProcessmakerApi.md#add_gateway) | **POST** /processes/{process_id}/gateways | 
[**add_group**](ProcessmakerApi.md#add_group) | **POST** /groups | 
[**add_groups_to_task**](ProcessmakerApi.md#add_groups_to_task) | **PUT** /processes/{process_id}/tasks/{task_id}/groups | 
[**add_input_output**](ProcessmakerApi.md#add_input_output) | **POST** /processes/{process_id}/tasks/{task_id}/inputoutput | 
[**add_instance**](ProcessmakerApi.md#add_instance) | **POST** /processes/{process_id}/instances | 
[**add_process**](ProcessmakerApi.md#add_process) | **POST** /processes | 
[**add_task**](ProcessmakerApi.md#add_task) | **POST** /processes/{process_id}/tasks | 
[**add_task_connector**](ProcessmakerApi.md#add_task_connector) | **POST** /processes/{process_id}/tasks/{task_id}/connectors | 
[**add_user**](ProcessmakerApi.md#add_user) | **POST** /users | 
[**add_users_to_group**](ProcessmakerApi.md#add_users_to_group) | **PUT** /groups/{id}/users | 
[**delete_client**](ProcessmakerApi.md#delete_client) | **DELETE** /users/{user_id}/clients/{client_id} | 
[**delete_event**](ProcessmakerApi.md#delete_event) | **DELETE** /processes/{process_id}/events/{event_id} | 
[**delete_event_connector**](ProcessmakerApi.md#delete_event_connector) | **DELETE** /processes/{process_id}/events/{event_id}/connectors/{connector_id} | 
[**delete_flow**](ProcessmakerApi.md#delete_flow) | **DELETE** /processes/{process_id}/flows/{flow_id} | 
[**delete_gateway**](ProcessmakerApi.md#delete_gateway) | **DELETE** /processes/{process_id}/gateways/{gateway_id} | 
[**delete_group**](ProcessmakerApi.md#delete_group) | **DELETE** /groups/{id} | 
[**delete_input_output**](ProcessmakerApi.md#delete_input_output) | **DELETE** /processes/{process_id}/tasks/{task_id}/inputoutput/{inputoutput_uid} | 
[**delete_instance**](ProcessmakerApi.md#delete_instance) | **DELETE** /processes/{process_id}/instances/{instance_id} | 
[**delete_process**](ProcessmakerApi.md#delete_process) | **DELETE** /processes/{id} | 
[**delete_task**](ProcessmakerApi.md#delete_task) | **DELETE** /processes/{process_id}/tasks/{task_id} | 
[**delete_task_connector**](ProcessmakerApi.md#delete_task_connector) | **DELETE** /processes/{process_id}/tasks/{task_id}/connectors/{connector_id} | 
[**delete_user**](ProcessmakerApi.md#delete_user) | **DELETE** /users/{id} | 
[**event_trigger**](ProcessmakerApi.md#event_trigger) | **POST** /processes/{process_id}/events/{event_id}/trigger | 
[**find_client_by_id**](ProcessmakerApi.md#find_client_by_id) | **GET** /users/{user_id}/clients/{client_id} | 
[**find_clients**](ProcessmakerApi.md#find_clients) | **GET** /users/{user_id}/clients | 
[**find_data_model**](ProcessmakerApi.md#find_data_model) | **GET** /processes/{process_id}/instances/{instance_id}/datamodel | 
[**find_event_by_id**](ProcessmakerApi.md#find_event_by_id) | **GET** /processes/{process_id}/events/{event_id} | 
[**find_event_connector_by_id**](ProcessmakerApi.md#find_event_connector_by_id) | **GET** /processes/{process_id}/events/{event_id}/connectors/{connector_id} | 
[**find_event_connectors**](ProcessmakerApi.md#find_event_connectors) | **GET** /processes/{process_id}/events/{event_id}/connectors | 
[**find_events**](ProcessmakerApi.md#find_events) | **GET** /processes/{process_id}/events | 
[**find_flow_by_id**](ProcessmakerApi.md#find_flow_by_id) | **GET** /processes/{process_id}/flows/{flow_id} | 
[**find_flows**](ProcessmakerApi.md#find_flows) | **GET** /processes/{process_id}/flows | 
[**find_gateway_by_id**](ProcessmakerApi.md#find_gateway_by_id) | **GET** /processes/{process_id}/gateways/{gateway_id} | 
[**find_gateways**](ProcessmakerApi.md#find_gateways) | **GET** /processes/{process_id}/gateways | 
[**find_group_by_id**](ProcessmakerApi.md#find_group_by_id) | **GET** /groups/{id} | 
[**find_groups**](ProcessmakerApi.md#find_groups) | **GET** /groups | 
[**find_input_output_by_id**](ProcessmakerApi.md#find_input_output_by_id) | **GET** /processes/{process_id}/tasks/{task_id}/inputoutput/{inputoutput_uid} | 
[**find_input_outputs**](ProcessmakerApi.md#find_input_outputs) | **GET** /processes/{process_id}/tasks/{task_id}/inputoutput | 
[**find_instance_by_id**](ProcessmakerApi.md#find_instance_by_id) | **GET** /processes/{process_id}/instances/{instance_id} | 
[**find_instances**](ProcessmakerApi.md#find_instances) | **GET** /processes/{process_id}/instances | 
[**find_process_by_id**](ProcessmakerApi.md#find_process_by_id) | **GET** /processes/{id} | 
[**find_processes**](ProcessmakerApi.md#find_processes) | **GET** /processes | 
[**find_task_by_id**](ProcessmakerApi.md#find_task_by_id) | **GET** /processes/{process_id}/tasks/{task_id} | 
[**find_task_connector_by_id**](ProcessmakerApi.md#find_task_connector_by_id) | **GET** /processes/{process_id}/tasks/{task_id}/connectors/{connector_id} | 
[**find_task_connectors**](ProcessmakerApi.md#find_task_connectors) | **GET** /processes/{process_id}/tasks/{task_id}/connectors | 
[**find_task_instance_by_id**](ProcessmakerApi.md#find_task_instance_by_id) | **GET** /task_instances/{task_instance_id} | 
[**find_task_instances**](ProcessmakerApi.md#find_task_instances) | **GET** /task_instances | 
[**find_tasks**](ProcessmakerApi.md#find_tasks) | **GET** /processes/{process_id}/tasks | 
[**find_user_by_id**](ProcessmakerApi.md#find_user_by_id) | **GET** /users/{id} | 
[**find_users**](ProcessmakerApi.md#find_users) | **GET** /users | 
[**import_bpmn_file**](ProcessmakerApi.md#import_bpmn_file) | **POST** /processes/import | 
[**myself_user**](ProcessmakerApi.md#myself_user) | **GET** /users/myself | 
[**remove_groups_from_task**](ProcessmakerApi.md#remove_groups_from_task) | **DELETE** /processes/{process_id}/tasks/{task_id}/groups | 
[**remove_users_from_group**](ProcessmakerApi.md#remove_users_from_group) | **DELETE** /groups/{id}/users | 
[**sync_groups_to_task**](ProcessmakerApi.md#sync_groups_to_task) | **POST** /processes/{process_id}/tasks/{task_id}/groups | 
[**sync_users_to_group**](ProcessmakerApi.md#sync_users_to_group) | **POST** /groups/{id}/users | 
[**update_client**](ProcessmakerApi.md#update_client) | **PUT** /users/{user_id}/clients/{client_id} | 
[**update_event**](ProcessmakerApi.md#update_event) | **PUT** /processes/{process_id}/events/{event_id} | 
[**update_event_connector**](ProcessmakerApi.md#update_event_connector) | **PUT** /processes/{process_id}/events/{event_id}/connectors/{connector_id} | 
[**update_flow**](ProcessmakerApi.md#update_flow) | **PUT** /processes/{process_id}/flows/{flow_id} | 
[**update_gateway**](ProcessmakerApi.md#update_gateway) | **PUT** /processes/{process_id}/gateways/{gateway_id} | 
[**update_group**](ProcessmakerApi.md#update_group) | **PUT** /groups/{id} | 
[**update_input_output**](ProcessmakerApi.md#update_input_output) | **PUT** /processes/{process_id}/tasks/{task_id}/inputoutput/{inputoutput_uid} | 
[**update_instance**](ProcessmakerApi.md#update_instance) | **PUT** /processes/{process_id}/instances/{instance_id} | 
[**update_process**](ProcessmakerApi.md#update_process) | **PUT** /processes/{id} | 
[**update_task**](ProcessmakerApi.md#update_task) | **PUT** /processes/{process_id}/tasks/{task_id} | 
[**update_task_connector**](ProcessmakerApi.md#update_task_connector) | **PUT** /processes/{process_id}/tasks/{task_id}/connectors/{connector_id} | 
[**update_task_instance**](ProcessmakerApi.md#update_task_instance) | **PATCH** /task_instances/{task_instance_id} | 
[**update_user**](ProcessmakerApi.md#update_user) | **PUT** /users/{id} | 


# **add_client**
> ClientItem add_client(user_id => $user_id, client_create_item => $client_create_item)



This method creates a new Oauth client for the user

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

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

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **string**| ID of the user related to the Oauth client | 
 **client_create_item** | [**ClientCreateItem**](ClientCreateItem.md)| JSON API with the Oauth Client object to add | 

### Return type

[**ClientItem**](ClientItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_event**
> EventItem add_event(process_id => $process_id, event_create_item => $event_create_item)



This method creates the new event.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | ID of the process related to the event
my $event_create_item = ProcessMaker::PMIO::Object::EventCreateItem->new(); # EventCreateItem | JSON API response with the Event object to add

eval { 
    my $result = $api_instance->add_event(process_id => $process_id, event_create_item => $event_create_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->add_event: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| ID of the process related to the event | 
 **event_create_item** | [**EventCreateItem**](EventCreateItem.md)| JSON API response with the Event object to add | 

### Return type

[**EventItem**](EventItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_event_connector**
> EventConnector1 add_event_connector(process_id => $process_id, event_id => $event_id, event_connector_create_item => $event_connector_create_item)



This method is intended for creating a new Event connector.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | ID of Process to fetch
my $event_id = 'event_id_example'; # string | ID of Event to fetch
my $event_connector_create_item = ProcessMaker::PMIO::Object::EventConnectorCreateItem->new(); # EventConnectorCreateItem | JSON API with the EventConnector object to add

eval { 
    my $result = $api_instance->add_event_connector(process_id => $process_id, event_id => $event_id, event_connector_create_item => $event_connector_create_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->add_event_connector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| ID of Process to fetch | 
 **event_id** | **string**| ID of Event to fetch | 
 **event_connector_create_item** | [**EventConnectorCreateItem**](EventConnectorCreateItem.md)| JSON API with the EventConnector object to add | 

### Return type

[**EventConnector1**](EventConnector1.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_flow**
> FlowItem add_flow(process_id => $process_id, flow_create_item => $flow_create_item)



This method creates a new Sequence flow

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | ID of the process related to the flow
my $flow_create_item = ProcessMaker::PMIO::Object::FlowCreateItem->new(); # FlowCreateItem | JSON API response with the Flow object to add

eval { 
    my $result = $api_instance->add_flow(process_id => $process_id, flow_create_item => $flow_create_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->add_flow: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| ID of the process related to the flow | 
 **flow_create_item** | [**FlowCreateItem**](FlowCreateItem.md)| JSON API response with the Flow object to add | 

### Return type

[**FlowItem**](FlowItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_gateway**
> GatewayItem add_gateway(process_id => $process_id, gateway_create_item => $gateway_create_item)



This method creates a new gateway.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | ID of the process related to the gateway
my $gateway_create_item = ProcessMaker::PMIO::Object::GatewayCreateItem->new(); # GatewayCreateItem | JSON API response with the gateway object to add

eval { 
    my $result = $api_instance->add_gateway(process_id => $process_id, gateway_create_item => $gateway_create_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->add_gateway: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| ID of the process related to the gateway | 
 **gateway_create_item** | [**GatewayCreateItem**](GatewayCreateItem.md)| JSON API response with the gateway object to add | 

### Return type

[**GatewayItem**](GatewayItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_group**
> GroupItem add_group(group_create_item => $group_create_item)



This method creates a new group.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $group_create_item = ProcessMaker::PMIO::Object::GroupCreateItem->new(); # GroupCreateItem | JSON API with the Group object to add

eval { 
    my $result = $api_instance->add_group(group_create_item => $group_create_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->add_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_create_item** | [**GroupCreateItem**](GroupCreateItem.md)| JSON API with the Group object to add | 

### Return type

[**GroupItem**](GroupItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_groups_to_task**
> ResultSuccess add_groups_to_task(process_id => $process_id, task_id => $task_id, task_add_groups_item => $task_add_groups_item)



This method assigns group(s) to the choosen task

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | Process ID
my $task_id = 'task_id_example'; # string | ID of task to be modified
my $task_add_groups_item = ProcessMaker::PMIO::Object::TaskAddGroupsItem->new(); # TaskAddGroupsItem | JSON API with Groups ID's to add

eval { 
    my $result = $api_instance->add_groups_to_task(process_id => $process_id, task_id => $task_id, task_add_groups_item => $task_add_groups_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->add_groups_to_task: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| Process ID | 
 **task_id** | **string**| ID of task to be modified | 
 **task_add_groups_item** | [**TaskAddGroupsItem**](TaskAddGroupsItem.md)| JSON API with Groups ID&#39;s to add | 

### Return type

[**ResultSuccess**](ResultSuccess.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_input_output**
> InputOutputItem add_input_output(process_id => $process_id, task_id => $task_id, input_output_create_item => $input_output_create_item)



This method creates a new Input/Output object

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | Process ID related to Input/Output object
my $task_id = 'task_id_example'; # string | Task instance ID related to Input/Output object
my $input_output_create_item = ProcessMaker::PMIO::Object::InputOutputCreateItem->new(); # InputOutputCreateItem | Create and add a new Input/Output object with JSON API

eval { 
    my $result = $api_instance->add_input_output(process_id => $process_id, task_id => $task_id, input_output_create_item => $input_output_create_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->add_input_output: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| Process ID related to Input/Output object | 
 **task_id** | **string**| Task instance ID related to Input/Output object | 
 **input_output_create_item** | [**InputOutputCreateItem**](InputOutputCreateItem.md)| Create and add a new Input/Output object with JSON API | 

### Return type

[**InputOutputItem**](InputOutputItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_instance**
> InstanceItem add_instance(process_id => $process_id, instance_create_item => $instance_create_item)



This method creates a new instance.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | Process ID related to the nstance
my $instance_create_item = ProcessMaker::PMIO::Object::InstanceCreateItem->new(); # InstanceCreateItem | JSON API response with the Instance object to add

eval { 
    my $result = $api_instance->add_instance(process_id => $process_id, instance_create_item => $instance_create_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->add_instance: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| Process ID related to the nstance | 
 **instance_create_item** | [**InstanceCreateItem**](InstanceCreateItem.md)| JSON API response with the Instance object to add | 

### Return type

[**InstanceItem**](InstanceItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_process**
> ProcessItem add_process(process_create_item => $process_create_item)



This method creates a new process

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_create_item = ProcessMaker::PMIO::Object::ProcessCreateItem->new(); # ProcessCreateItem | JSON API response with the Process object to add

eval { 
    my $result = $api_instance->add_process(process_create_item => $process_create_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->add_process: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_create_item** | [**ProcessCreateItem**](ProcessCreateItem.md)| JSON API response with the Process object to add | 

### Return type

[**ProcessItem**](ProcessItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_task**
> TaskItem add_task(process_id => $process_id, task_create_item => $task_create_item)



This method creates a new task.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | Process ID related to the task
my $task_create_item = ProcessMaker::PMIO::Object::TaskCreateItem->new(); # TaskCreateItem | JSON API with the Task object to add

eval { 
    my $result = $api_instance->add_task(process_id => $process_id, task_create_item => $task_create_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->add_task: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| Process ID related to the task | 
 **task_create_item** | [**TaskCreateItem**](TaskCreateItem.md)| JSON API with the Task object to add | 

### Return type

[**TaskItem**](TaskItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_task_connector**
> TaskConnector1 add_task_connector(process_id => $process_id, task_id => $task_id, task_connector_create_item => $task_connector_create_item)



This method is intended for creating a new task connector.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | ID of Process to fetch
my $task_id = 'task_id_example'; # string | ID of Task to fetch
my $task_connector_create_item = ProcessMaker::PMIO::Object::TaskConnectorCreateItem->new(); # TaskConnectorCreateItem | JSON API with the TaskConnector object to add

eval { 
    my $result = $api_instance->add_task_connector(process_id => $process_id, task_id => $task_id, task_connector_create_item => $task_connector_create_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->add_task_connector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| ID of Process to fetch | 
 **task_id** | **string**| ID of Task to fetch | 
 **task_connector_create_item** | [**TaskConnectorCreateItem**](TaskConnectorCreateItem.md)| JSON API with the TaskConnector object to add | 

### Return type

[**TaskConnector1**](TaskConnector1.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_user**
> UserItem add_user(user_create_item => $user_create_item)



This method creates a new user in the system.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $user_create_item = ProcessMaker::PMIO::Object::UserCreateItem->new(); # UserCreateItem | JSON API with the User object to add

eval { 
    my $result = $api_instance->add_user(user_create_item => $user_create_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->add_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_create_item** | [**UserCreateItem**](UserCreateItem.md)| JSON API with the User object to add | 

### Return type

[**UserItem**](UserItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_users_to_group**
> ResultSuccess add_users_to_group(id => $id, group_add_users_item => $group_add_users_item)



This method adds one or more new users to a group.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $id = 'id_example'; # string | ID of group to be modified
my $group_add_users_item = ProcessMaker::PMIO::Object::GroupAddUsersItem->new(); # GroupAddUsersItem | JSON API response with array of users ID's

eval { 
    my $result = $api_instance->add_users_to_group(id => $id, group_add_users_item => $group_add_users_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->add_users_to_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| ID of group to be modified | 
 **group_add_users_item** | [**GroupAddUsersItem**](GroupAddUsersItem.md)| JSON API response with array of users ID&#39;s | 

### Return type

[**ResultSuccess**](ResultSuccess.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_client**
> ResultSuccess delete_client(user_id => $user_id, client_id => $client_id)



This method deletes an Oauth client using the client and user IDs.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $user_id = 'user_id_example'; # string | User ID
my $client_id = 'client_id_example'; # string | ID of client to delete

eval { 
    my $result = $api_instance->delete_client(user_id => $user_id, client_id => $client_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->delete_client: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **string**| User ID | 
 **client_id** | **string**| ID of client to delete | 

### Return type

[**ResultSuccess**](ResultSuccess.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_event**
> ResultSuccess delete_event(process_id => $process_id, event_id => $event_id)



This method deletes an event using the event ID and process ID

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | Process ID
my $event_id = 'event_id_example'; # string | ID of event to delete

eval { 
    my $result = $api_instance->delete_event(process_id => $process_id, event_id => $event_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->delete_event: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| Process ID | 
 **event_id** | **string**| ID of event to delete | 

### Return type

[**ResultSuccess**](ResultSuccess.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_event_connector**
> ResultSuccess delete_event_connector(process_id => $process_id, event_id => $event_id, connector_id => $connector_id)



This method is intended for deleting a single Event connector based on Event ID, Process ID and Connector ID.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | ID of of Process item
my $event_id = 'event_id_example'; # string | ID of item to fetch
my $connector_id = 'connector_id_example'; # string | ID of EventConnector to fetch

eval { 
    my $result = $api_instance->delete_event_connector(process_id => $process_id, event_id => $event_id, connector_id => $connector_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->delete_event_connector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| ID of of Process item | 
 **event_id** | **string**| ID of item to fetch | 
 **connector_id** | **string**| ID of EventConnector to fetch | 

### Return type

[**ResultSuccess**](ResultSuccess.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_flow**
> ResultSuccess delete_flow(process_id => $process_id, flow_id => $flow_id)



This method deletes a sequence flow using the flow ID and process ID.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | Process ID
my $flow_id = 'flow_id_example'; # string | ID of flow to delete

eval { 
    my $result = $api_instance->delete_flow(process_id => $process_id, flow_id => $flow_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->delete_flow: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| Process ID | 
 **flow_id** | **string**| ID of flow to delete | 

### Return type

[**ResultSuccess**](ResultSuccess.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_gateway**
> ResultSuccess delete_gateway(process_id => $process_id, gateway_id => $gateway_id)



This method is deletes a single item using the gateway ID and process ID.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | Process ID
my $gateway_id = 'gateway_id_example'; # string | ID of Process to delete

eval { 
    my $result = $api_instance->delete_gateway(process_id => $process_id, gateway_id => $gateway_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->delete_gateway: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| Process ID | 
 **gateway_id** | **string**| ID of Process to delete | 

### Return type

[**ResultSuccess**](ResultSuccess.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_group**
> ResultSuccess delete_group(id => $id)



This method deletes a group using the group ID

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $id = 'id_example'; # string | ID of group to delete

eval { 
    my $result = $api_instance->delete_group(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->delete_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| ID of group to delete | 

### Return type

[**ResultSuccess**](ResultSuccess.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_input_output**
> ResultSuccess delete_input_output(process_id => $process_id, task_id => $task_id, inputoutput_uid => $inputoutput_uid)



This method deletes the Input/Output based on the Input/Output ID, process ID and task ID.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | Process ID related to the Input/Output object
my $task_id = 'task_id_example'; # string | Task instance ID related to Input/Output object
my $inputoutput_uid = 'inputoutput_uid_example'; # string | Input/Output ID to fetch

eval { 
    my $result = $api_instance->delete_input_output(process_id => $process_id, task_id => $task_id, inputoutput_uid => $inputoutput_uid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->delete_input_output: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| Process ID related to the Input/Output object | 
 **task_id** | **string**| Task instance ID related to Input/Output object | 
 **inputoutput_uid** | **string**| Input/Output ID to fetch | 

### Return type

[**ResultSuccess**](ResultSuccess.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_instance**
> ResultSuccess delete_instance(process_id => $process_id, instance_id => $instance_id)



This method deletes an instance using the instance ID and process ID.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | Process ID
my $instance_id = 'instance_id_example'; # string | ID of instance to delete

eval { 
    my $result = $api_instance->delete_instance(process_id => $process_id, instance_id => $instance_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->delete_instance: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| Process ID | 
 **instance_id** | **string**| ID of instance to delete | 

### Return type

[**ResultSuccess**](ResultSuccess.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_process**
> ResultSuccess delete_process(id => $id)



This method deletes a process using the process ID.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $id = 'id_example'; # string | Process ID to delete

eval { 
    my $result = $api_instance->delete_process(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->delete_process: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Process ID to delete | 

### Return type

[**ResultSuccess**](ResultSuccess.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_task**
> ResultSuccess delete_task(process_id => $process_id, task_id => $task_id)



This method deletes a task using the task ID and process ID.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | Process ID
my $task_id = 'task_id_example'; # string | ID of task to delete

eval { 
    my $result = $api_instance->delete_task(process_id => $process_id, task_id => $task_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->delete_task: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| Process ID | 
 **task_id** | **string**| ID of task to delete | 

### Return type

[**ResultSuccess**](ResultSuccess.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_task_connector**
> ResultSuccess delete_task_connector(process_id => $process_id, task_id => $task_id, connector_id => $connector_id)



This method is intended for deleting a single Task connector based on Task ID, Process ID and Connector ID.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | ID of Process item to fetch
my $task_id = 'task_id_example'; # string | ID of Task item to fetch
my $connector_id = 'connector_id_example'; # string | ID of TaskConnector to fetch

eval { 
    my $result = $api_instance->delete_task_connector(process_id => $process_id, task_id => $task_id, connector_id => $connector_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->delete_task_connector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| ID of Process item to fetch | 
 **task_id** | **string**| ID of Task item to fetch | 
 **connector_id** | **string**| ID of TaskConnector to fetch | 

### Return type

[**ResultSuccess**](ResultSuccess.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_user**
> ResultSuccess delete_user(id => $id)



This method deletes a user from the system.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $id = 'id_example'; # string | ID of user to delete

eval { 
    my $result = $api_instance->delete_user(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->delete_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| ID of user to delete | 

### Return type

[**ResultSuccess**](ResultSuccess.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **event_trigger**
> DataModelItem1 event_trigger(process_id => $process_id, event_id => $event_id, trigger_event_create_item => $trigger_event_create_item)



This method starts/triggers an event.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | Process ID related to the event
my $event_id = 'event_id_example'; # string | ID of event to trigger
my $trigger_event_create_item = ProcessMaker::PMIO::Object::TriggerEventCreateItem->new(); # TriggerEventCreateItem | Json with some parameters

eval { 
    my $result = $api_instance->event_trigger(process_id => $process_id, event_id => $event_id, trigger_event_create_item => $trigger_event_create_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->event_trigger: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| Process ID related to the event | 
 **event_id** | **string**| ID of event to trigger | 
 **trigger_event_create_item** | [**TriggerEventCreateItem**](TriggerEventCreateItem.md)| Json with some parameters | 

### Return type

[**DataModelItem1**](DataModelItem1.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_client_by_id**
> ClientItem find_client_by_id(user_id => $user_id, client_id => $client_id)



This method is retrieves an Oauth client based on its ID.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $user_id = 'user_id_example'; # string | ID of user to retrieve
my $client_id = 'client_id_example'; # string | ID of client to retrieve

eval { 
    my $result = $api_instance->find_client_by_id(user_id => $user_id, client_id => $client_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->find_client_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **string**| ID of user to retrieve | 
 **client_id** | **string**| ID of client to retrieve | 

### Return type

[**ClientItem**](ClientItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_clients**
> ClientCollection find_clients(user_id => $user_id, pagefind_process_by_id => $pagefind_process_by_id, per_page => $per_page)



This method retrieves all existing clients belonging to an user.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $user_id = 'user_id_example'; # string | User ID related to the clients
my $pagefind_process_by_id = 56; # int | Page numbers to fetch
my $per_page = 56; # int | Amount of items per page

eval { 
    my $result = $api_instance->find_clients(user_id => $user_id, pagefind_process_by_id => $pagefind_process_by_id, per_page => $per_page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->find_clients: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **string**| User ID related to the clients | 
 **pagefind_process_by_id** | **int**| Page numbers to fetch | [optional] [default to 1]
 **per_page** | **int**| Amount of items per page | [optional] [default to 15]

### Return type

[**ClientCollection**](ClientCollection.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_data_model**
> DataModelItem1 find_data_model(process_id => $process_id, instance_id => $instance_id, page => $page, per_page => $per_page)



This method returns the instance DataModel and lets the user work with it directly

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | ID of process to return
my $instance_id = 'instance_id_example'; # string | ID of instance to return
my $page = 56; # int | Page number to fetch
my $per_page = 56; # int | Amount of items per Page

eval { 
    my $result = $api_instance->find_data_model(process_id => $process_id, instance_id => $instance_id, page => $page, per_page => $per_page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->find_data_model: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| ID of process to return | 
 **instance_id** | **string**| ID of instance to return | 
 **page** | **int**| Page number to fetch | [optional] [default to 1]
 **per_page** | **int**| Amount of items per Page | [optional] [default to 15]

### Return type

[**DataModelItem1**](DataModelItem1.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_event_by_id**
> EventItem find_event_by_id(process_id => $process_id, event_id => $event_id)



This method retrieves an event using its ID.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | ID of process to return
my $event_id = 'event_id_example'; # string | ID of event to return

eval { 
    my $result = $api_instance->find_event_by_id(process_id => $process_id, event_id => $event_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->find_event_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| ID of process to return | 
 **event_id** | **string**| ID of event to return | 

### Return type

[**EventItem**](EventItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_event_connector_by_id**
> EventConnector1 find_event_connector_by_id(process_id => $process_id, event_id => $event_id, connector_id => $connector_id)



This method returns all Event connectors related to the run Process and Event.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | ID of Process to fetch
my $event_id = 'event_id_example'; # string | ID of Event to fetch
my $connector_id = 'connector_id_example'; # string | ID of EventConnector to fetch

eval { 
    my $result = $api_instance->find_event_connector_by_id(process_id => $process_id, event_id => $event_id, connector_id => $connector_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->find_event_connector_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| ID of Process to fetch | 
 **event_id** | **string**| ID of Event to fetch | 
 **connector_id** | **string**| ID of EventConnector to fetch | 

### Return type

[**EventConnector1**](EventConnector1.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_event_connectors**
> EventConnectorsCollection find_event_connectors(process_id => $process_id, event_id => $event_id, page => $page, per_page => $per_page)



This method returns all Event connectors related to the run Process and Event.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | ID of Process to fetch
my $event_id = 'event_id_example'; # string | ID of Task to fetch
my $page = 56; # int | Page number to fetch
my $per_page = 56; # int | Amount of items per Page

eval { 
    my $result = $api_instance->find_event_connectors(process_id => $process_id, event_id => $event_id, page => $page, per_page => $per_page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->find_event_connectors: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| ID of Process to fetch | 
 **event_id** | **string**| ID of Task to fetch | 
 **page** | **int**| Page number to fetch | [optional] [default to 1]
 **per_page** | **int**| Amount of items per Page | [optional] [default to 15]

### Return type

[**EventConnectorsCollection**](EventConnectorsCollection.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_events**
> EventCollection find_events(process_id => $process_id, page => $page, per_page => $per_page)



This method returns all events related to the runned process

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | ID of process related to the event
my $page = 56; # int | Page numbers to fetch
my $per_page = 56; # int | Amount of items per Page

eval { 
    my $result = $api_instance->find_events(process_id => $process_id, page => $page, per_page => $per_page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->find_events: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| ID of process related to the event | 
 **page** | **int**| Page numbers to fetch | [optional] [default to 1]
 **per_page** | **int**| Amount of items per Page | [optional] [default to 15]

### Return type

[**EventCollection**](EventCollection.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_flow_by_id**
> FlowItem find_flow_by_id(process_id => $process_id, flow_id => $flow_id)



This method retrieves a flow based on its ID.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | ID of process to return
my $flow_id = 'flow_id_example'; # string | ID of flow to return

eval { 
    my $result = $api_instance->find_flow_by_id(process_id => $process_id, flow_id => $flow_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->find_flow_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| ID of process to return | 
 **flow_id** | **string**| ID of flow to return | 

### Return type

[**FlowItem**](FlowItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_flows**
> FlowCollection find_flows(process_id => $process_id, page => $page, per_page => $per_page)



This method retrieves all existing flows.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | ID of process related to the flow
my $page = 56; # int | Page numbers to fetch
my $per_page = 56; # int | Amount of items per Page

eval { 
    my $result = $api_instance->find_flows(process_id => $process_id, page => $page, per_page => $per_page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->find_flows: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| ID of process related to the flow | 
 **page** | **int**| Page numbers to fetch | [optional] [default to 1]
 **per_page** | **int**| Amount of items per Page | [optional] [default to 15]

### Return type

[**FlowCollection**](FlowCollection.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_gateway_by_id**
> GatewayItem find_gateway_by_id(process_id => $process_id, gateway_id => $gateway_id)



This method retrieves a gateway based on its ID.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | ID of process to return
my $gateway_id = 'gateway_id_example'; # string | ID of gateway to return

eval { 
    my $result = $api_instance->find_gateway_by_id(process_id => $process_id, gateway_id => $gateway_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->find_gateway_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| ID of process to return | 
 **gateway_id** | **string**| ID of gateway to return | 

### Return type

[**GatewayItem**](GatewayItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_gateways**
> GatewayCollection find_gateways(process_id => $process_id, page => $page, per_page => $per_page)



This method retrieves all existing gateways.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | ID of process related to the gateway
my $page = 56; # int | Page number to fetch
my $per_page = 56; # int | Amount of items per page

eval { 
    my $result = $api_instance->find_gateways(process_id => $process_id, page => $page, per_page => $per_page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->find_gateways: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| ID of process related to the gateway | 
 **page** | **int**| Page number to fetch | [optional] [default to 1]
 **per_page** | **int**| Amount of items per page | [optional] [default to 15]

### Return type

[**GatewayCollection**](GatewayCollection.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_group_by_id**
> GroupItem find_group_by_id(id => $id)



This method retrieves a group using its ID.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $id = 'id_example'; # string | ID of group to return

eval { 
    my $result = $api_instance->find_group_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->find_group_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| ID of group to return | 

### Return type

[**GroupItem**](GroupItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_groups**
> GroupCollection find_groups(page => $page, per_page => $per_page)



This method retrieves all existing groups.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $page = 56; # int | Page number to fetch
my $per_page = 56; # int | Amount of items per Page

eval { 
    my $result = $api_instance->find_groups(page => $page, per_page => $per_page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->find_groups: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number to fetch | [optional] [default to 1]
 **per_page** | **int**| Amount of items per Page | [optional] [default to 15]

### Return type

[**GroupCollection**](GroupCollection.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_input_output_by_id**
> InputOutputItem find_input_output_by_id(process_id => $process_id, task_id => $task_id, inputoutput_uid => $inputoutput_uid)



This method retrieves an Input/Output object using its ID.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | Process ID related to the Input/Output object
my $task_id = 'task_id_example'; # string | Task instance ID related to the Input/Output object
my $inputoutput_uid = 'inputoutput_uid_example'; # string | ID of Input/Output to return

eval { 
    my $result = $api_instance->find_input_output_by_id(process_id => $process_id, task_id => $task_id, inputoutput_uid => $inputoutput_uid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->find_input_output_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| Process ID related to the Input/Output object | 
 **task_id** | **string**| Task instance ID related to the Input/Output object | 
 **inputoutput_uid** | **string**| ID of Input/Output to return | 

### Return type

[**InputOutputItem**](InputOutputItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_input_outputs**
> InputOutputCollection find_input_outputs(process_id => $process_id, task_id => $task_id, page => $page, per_page => $per_page)



This method retrieves all existing Input/Output objects in the related task instance.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | Process ID related to Input/Output object
my $task_id = 'task_id_example'; # string | Task instance ID related to Input/Output object
my $page = 56; # int | Page number to fetch
my $per_page = 56; # int | Amount of items per page

eval { 
    my $result = $api_instance->find_input_outputs(process_id => $process_id, task_id => $task_id, page => $page, per_page => $per_page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->find_input_outputs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| Process ID related to Input/Output object | 
 **task_id** | **string**| Task instance ID related to Input/Output object | 
 **page** | **int**| Page number to fetch | [optional] [default to 1]
 **per_page** | **int**| Amount of items per page | [optional] [default to 15]

### Return type

[**InputOutputCollection**](InputOutputCollection.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_instance_by_id**
> InstanceItem find_instance_by_id(process_id => $process_id, instance_id => $instance_id)



This method retrieves an instance using its ID.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | ID of process to return
my $instance_id = 'instance_id_example'; # string | ID of instance to return

eval { 
    my $result = $api_instance->find_instance_by_id(process_id => $process_id, instance_id => $instance_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->find_instance_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| ID of process to return | 
 **instance_id** | **string**| ID of instance to return | 

### Return type

[**InstanceItem**](InstanceItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_instances**
> InstanceCollection find_instances(process_id => $process_id, page => $page, per_page => $per_page)



This method retrieves related to the process using  the Process ID

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | Process ID related to the instances
my $page = 56; # int | Page number to fetch
my $per_page = 56; # int | Amount of items per page

eval { 
    my $result = $api_instance->find_instances(process_id => $process_id, page => $page, per_page => $per_page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->find_instances: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| Process ID related to the instances | 
 **page** | **int**| Page number to fetch | [optional] [default to 1]
 **per_page** | **int**| Amount of items per page | [optional] [default to 15]

### Return type

[**InstanceCollection**](InstanceCollection.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_process_by_id**
> ProcessItem find_process_by_id(id => $id)



This method retrieves a process using its ID

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $id = 'id_example'; # string | ID of process to return

eval { 
    my $result = $api_instance->find_process_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->find_process_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| ID of process to return | 

### Return type

[**ProcessItem**](ProcessItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_processes**
> ProcessCollection find_processes(page => $page, per_page => $per_page)



This method retrieves all existing processes.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $page = 56; # int | Page number to fetch
my $per_page = 56; # int | Amount of items per page

eval { 
    my $result = $api_instance->find_processes(page => $page, per_page => $per_page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->find_processes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number to fetch | [optional] [default to 1]
 **per_page** | **int**| Amount of items per page | [optional] [default to 15]

### Return type

[**ProcessCollection**](ProcessCollection.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_task_by_id**
> TaskItem find_task_by_id(process_id => $process_id, task_id => $task_id)



This method is retrieves a task using its ID.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | ID of process to return
my $task_id = 'task_id_example'; # string | ID of task to return

eval { 
    my $result = $api_instance->find_task_by_id(process_id => $process_id, task_id => $task_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->find_task_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| ID of process to return | 
 **task_id** | **string**| ID of task to return | 

### Return type

[**TaskItem**](TaskItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_task_connector_by_id**
> TaskConnector1 find_task_connector_by_id(process_id => $process_id, task_id => $task_id, connector_id => $connector_id)



This method is intended for retrieving an Task connector based on it's ID.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | ID of Process to fetch
my $task_id = 'task_id_example'; # string | ID of Task to fetch
my $connector_id = 'connector_id_example'; # string | ID of TaskConnector to fetch

eval { 
    my $result = $api_instance->find_task_connector_by_id(process_id => $process_id, task_id => $task_id, connector_id => $connector_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->find_task_connector_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| ID of Process to fetch | 
 **task_id** | **string**| ID of Task to fetch | 
 **connector_id** | **string**| ID of TaskConnector to fetch | 

### Return type

[**TaskConnector1**](TaskConnector1.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_task_connectors**
> TaskConnectorsCollection find_task_connectors(process_id => $process_id, task_id => $task_id, page => $page, per_page => $per_page)



This method returns all Task connectors related to the run Process and Task.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | ID of Process to fetch
my $task_id = 'task_id_example'; # string | ID of Task to fetch
my $page = 56; # int | Page number to fetch
my $per_page = 56; # int | Amount of items per Page

eval { 
    my $result = $api_instance->find_task_connectors(process_id => $process_id, task_id => $task_id, page => $page, per_page => $per_page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->find_task_connectors: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| ID of Process to fetch | 
 **task_id** | **string**| ID of Task to fetch | 
 **page** | **int**| Page number to fetch | [optional] [default to 1]
 **per_page** | **int**| Amount of items per Page | [optional] [default to 15]

### Return type

[**TaskConnectorsCollection**](TaskConnectorsCollection.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_task_instance_by_id**
> InlineResponse200 find_task_instance_by_id(task_instance_id => $task_instance_id, page => $page, per_page => $per_page)



This method retrieves a task instance based on its ID.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $task_instance_id = 'task_instance_id_example'; # string | ID of task instance to return
my $page = 56; # int | Page number to fetch
my $per_page = 56; # int | Amount of items per page

eval { 
    my $result = $api_instance->find_task_instance_by_id(task_instance_id => $task_instance_id, page => $page, per_page => $per_page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->find_task_instance_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_instance_id** | **string**| ID of task instance to return | 
 **page** | **int**| Page number to fetch | [optional] [default to 1]
 **per_page** | **int**| Amount of items per page | [optional] [default to 15]

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_task_instances**
> TaskInstanceCollection find_task_instances(page => $page, per_page => $per_page)



This method retrieves all existing task instances

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $page = 56; # int | Page number to fetch
my $per_page = 56; # int | Amount of items per page

eval { 
    my $result = $api_instance->find_task_instances(page => $page, per_page => $per_page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->find_task_instances: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number to fetch | [optional] [default to 1]
 **per_page** | **int**| Amount of items per page | [optional] [default to 15]

### Return type

[**TaskInstanceCollection**](TaskInstanceCollection.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_tasks**
> TaskCollection find_tasks(process_id => $process_id, page => $page, per_page => $per_page)



This method is intended for returning a list of all Tasks related to the process

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | ID of Process relative to task
my $page = 56; # int | Page number to fetch
my $per_page = 56; # int | Amount of items per Page

eval { 
    my $result = $api_instance->find_tasks(process_id => $process_id, page => $page, per_page => $per_page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->find_tasks: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| ID of Process relative to task | 
 **page** | **int**| Page number to fetch | [optional] [default to 1]
 **per_page** | **int**| Amount of items per Page | [optional] [default to 15]

### Return type

[**TaskCollection**](TaskCollection.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_user_by_id**
> UserItem find_user_by_id(id => $id)



This method returns a user using its ID.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $id = 'id_example'; # string | ID of the user to return

eval { 
    my $result = $api_instance->find_user_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->find_user_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| ID of the user to return | 

### Return type

[**UserItem**](UserItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_users**
> UserCollection find_users(page => $page, per_page => $per_page)



This method returs all existing users in the system.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $page = 56; # int | Page number to fetch
my $per_page = 56; # int | Amount of items per page

eval { 
    my $result = $api_instance->find_users(page => $page, per_page => $per_page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->find_users: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number to fetch | [optional] [default to 1]
 **per_page** | **int**| Amount of items per page | [optional] [default to 15]

### Return type

[**UserCollection**](UserCollection.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **import_bpmn_file**
> ProcessCollection1 import_bpmn_file(bpmn_import_item => $bpmn_import_item)



This method imports BPMN files. A new process is created when import is successful.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $bpmn_import_item = ProcessMaker::PMIO::Object::BpmnImportItem->new(); # BpmnImportItem | JSON API with the BPMN file to import

eval { 
    my $result = $api_instance->import_bpmn_file(bpmn_import_item => $bpmn_import_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->import_bpmn_file: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bpmn_import_item** | [**BpmnImportItem**](BpmnImportItem.md)| JSON API with the BPMN file to import | 

### Return type

[**ProcessCollection1**](ProcessCollection1.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **myself_user**
> UserItem myself_user(page => $page, per_page => $per_page)



This method returns user information using a token

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $page = 56; # int | Page number to fetch
my $per_page = 56; # int | Amount of items per page

eval { 
    my $result = $api_instance->myself_user(page => $page, per_page => $per_page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->myself_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number to fetch | [optional] [default to 1]
 **per_page** | **int**| Amount of items per page | [optional] [default to 15]

### Return type

[**UserItem**](UserItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_groups_from_task**
> ResultSuccess remove_groups_from_task(process_id => $process_id, task_id => $task_id, task_remove_groups_item => $task_remove_groups_item)



This method removes groups from a task

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | Process ID
my $task_id = 'task_id_example'; # string | Task ID
my $task_remove_groups_item = ProcessMaker::PMIO::Object::TaskRemoveGroupsItem->new(); # TaskRemoveGroupsItem | JSON API response with Groups IDs to remove

eval { 
    my $result = $api_instance->remove_groups_from_task(process_id => $process_id, task_id => $task_id, task_remove_groups_item => $task_remove_groups_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->remove_groups_from_task: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| Process ID | 
 **task_id** | **string**| Task ID | 
 **task_remove_groups_item** | [**TaskRemoveGroupsItem**](TaskRemoveGroupsItem.md)| JSON API response with Groups IDs to remove | 

### Return type

[**ResultSuccess**](ResultSuccess.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_users_from_group**
> ResultSuccess remove_users_from_group(id => $id, group_remove_users_item => $group_remove_users_item)



This method removes one or more users from a group.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $id = 'id_example'; # string | ID of group to be modified
my $group_remove_users_item = ProcessMaker::PMIO::Object::GroupRemoveUsersItem->new(); # GroupRemoveUsersItem | JSON API response with Users IDs to remove

eval { 
    my $result = $api_instance->remove_users_from_group(id => $id, group_remove_users_item => $group_remove_users_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->remove_users_from_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| ID of group to be modified | 
 **group_remove_users_item** | [**GroupRemoveUsersItem**](GroupRemoveUsersItem.md)| JSON API response with Users IDs to remove | 

### Return type

[**ResultSuccess**](ResultSuccess.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sync_groups_to_task**
> ResultSuccess sync_groups_to_task(process_id => $process_id, task_id => $task_id, task_sync_groups_item => $task_sync_groups_item)



This method synchronizes a one or more groups with a task.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | Process ID
my $task_id = 'task_id_example'; # string | ID of task to modify
my $task_sync_groups_item = ProcessMaker::PMIO::Object::TaskSyncGroupsItem->new(); # TaskSyncGroupsItem | JSON API response with groups IDs to sync

eval { 
    my $result = $api_instance->sync_groups_to_task(process_id => $process_id, task_id => $task_id, task_sync_groups_item => $task_sync_groups_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->sync_groups_to_task: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| Process ID | 
 **task_id** | **string**| ID of task to modify | 
 **task_sync_groups_item** | [**TaskSyncGroupsItem**](TaskSyncGroupsItem.md)| JSON API response with groups IDs to sync | 

### Return type

[**ResultSuccess**](ResultSuccess.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sync_users_to_group**
> ResultSuccess sync_users_to_group(id => $id, group_sync_users_item => $group_sync_users_item)



This method synchronizes one or more users with a group.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $id = 'id_example'; # string | ID of group to be modifieded
my $group_sync_users_item = ProcessMaker::PMIO::Object::GroupSyncUsersItem->new(); # GroupSyncUsersItem | JSON API with array of users IDs to sync

eval { 
    my $result = $api_instance->sync_users_to_group(id => $id, group_sync_users_item => $group_sync_users_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->sync_users_to_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| ID of group to be modifieded | 
 **group_sync_users_item** | [**GroupSyncUsersItem**](GroupSyncUsersItem.md)| JSON API with array of users IDs to sync | 

### Return type

[**ResultSuccess**](ResultSuccess.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_client**
> ClientItem update_client(user_id => $user_id, client_id => $client_id, client_update_item => $client_update_item)



This method updates an existing Oauth client.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $user_id = 'user_id_example'; # string | ID of user to retrieve
my $client_id = 'client_id_example'; # string | ID of client to retrieve
my $client_update_item = ProcessMaker::PMIO::Object::ClientUpdateItem->new(); # ClientUpdateItem | Client object to edit

eval { 
    my $result = $api_instance->update_client(user_id => $user_id, client_id => $client_id, client_update_item => $client_update_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->update_client: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **string**| ID of user to retrieve | 
 **client_id** | **string**| ID of client to retrieve | 
 **client_update_item** | [**ClientUpdateItem**](ClientUpdateItem.md)| Client object to edit | 

### Return type

[**ClientItem**](ClientItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_event**
> EventItem update_event(process_id => $process_id, event_id => $event_id, event_update_item => $event_update_item)



This method updates an existing event

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | ID of process to retrieve
my $event_id = 'event_id_example'; # string | ID of event to retrieve
my $event_update_item = ProcessMaker::PMIO::Object::EventUpdateItem->new(); # EventUpdateItem | Event object to edit

eval { 
    my $result = $api_instance->update_event(process_id => $process_id, event_id => $event_id, event_update_item => $event_update_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->update_event: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| ID of process to retrieve | 
 **event_id** | **string**| ID of event to retrieve | 
 **event_update_item** | [**EventUpdateItem**](EventUpdateItem.md)| Event object to edit | 

### Return type

[**EventItem**](EventItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_event_connector**
> EventConnector1 update_event_connector(process_id => $process_id, event_id => $event_id, connector_id => $connector_id, event_connector_update_item => $event_connector_update_item)



This method lets update the existing Event connector with new parameters values

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | ID of Process to fetch
my $event_id = 'event_id_example'; # string | ID of Event to fetch
my $connector_id = 'connector_id_example'; # string | ID of Event Connector to fetch
my $event_connector_update_item = ProcessMaker::PMIO::Object::EventConnectorUpdateItem->new(); # EventConnectorUpdateItem | EventConnector object to edit

eval { 
    my $result = $api_instance->update_event_connector(process_id => $process_id, event_id => $event_id, connector_id => $connector_id, event_connector_update_item => $event_connector_update_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->update_event_connector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| ID of Process to fetch | 
 **event_id** | **string**| ID of Event to fetch | 
 **connector_id** | **string**| ID of Event Connector to fetch | 
 **event_connector_update_item** | [**EventConnectorUpdateItem**](EventConnectorUpdateItem.md)| EventConnector object to edit | 

### Return type

[**EventConnector1**](EventConnector1.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_flow**
> FlowItem update_flow(process_id => $process_id, flow_id => $flow_id, flow_update_item => $flow_update_item)



This method updates an existing flow.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | ID of process to retrieve
my $flow_id = 'flow_id_example'; # string | ID of flow to retrieve
my $flow_update_item = ProcessMaker::PMIO::Object::FlowUpdateItem->new(); # FlowUpdateItem | Flow object to edit

eval { 
    my $result = $api_instance->update_flow(process_id => $process_id, flow_id => $flow_id, flow_update_item => $flow_update_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->update_flow: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| ID of process to retrieve | 
 **flow_id** | **string**| ID of flow to retrieve | 
 **flow_update_item** | [**FlowUpdateItem**](FlowUpdateItem.md)| Flow object to edit | 

### Return type

[**FlowItem**](FlowItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_gateway**
> GatewayItem update_gateway(process_id => $process_id, gateway_id => $gateway_id, gateway_update_item => $gateway_update_item)



This method updates an existing gateway.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | ID of process to retrieve
my $gateway_id = 'gateway_id_example'; # string | ID of gateway to retrieve
my $gateway_update_item = ProcessMaker::PMIO::Object::GatewayUpdateItem->new(); # GatewayUpdateItem | Gateway object to edit

eval { 
    my $result = $api_instance->update_gateway(process_id => $process_id, gateway_id => $gateway_id, gateway_update_item => $gateway_update_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->update_gateway: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| ID of process to retrieve | 
 **gateway_id** | **string**| ID of gateway to retrieve | 
 **gateway_update_item** | [**GatewayUpdateItem**](GatewayUpdateItem.md)| Gateway object to edit | 

### Return type

[**GatewayItem**](GatewayItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_group**
> GroupItem update_group(id => $id, group_update_item => $group_update_item)



This method updates an existing group.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $id = 'id_example'; # string | ID of group to retrieve
my $group_update_item = ProcessMaker::PMIO::Object::GroupUpdateItem->new(); # GroupUpdateItem | Group object to edit

eval { 
    my $result = $api_instance->update_group(id => $id, group_update_item => $group_update_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->update_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| ID of group to retrieve | 
 **group_update_item** | [**GroupUpdateItem**](GroupUpdateItem.md)| Group object to edit | 

### Return type

[**GroupItem**](GroupItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_input_output**
> InputOutputItem update_input_output(process_id => $process_id, task_id => $task_id, inputoutput_uid => $inputoutput_uid, input_output_update_item => $input_output_update_item)



This method updates an existing Input/Output object.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | Process ID related to the Input/Output object
my $task_id = 'task_id_example'; # string | Task instance ID related to the Input/Output object
my $inputoutput_uid = 'inputoutput_uid_example'; # string | ID of Input/Output to retrieve
my $input_output_update_item = ProcessMaker::PMIO::Object::InputOutputUpdateItem->new(); # InputOutputUpdateItem | Input/Output object to edit

eval { 
    my $result = $api_instance->update_input_output(process_id => $process_id, task_id => $task_id, inputoutput_uid => $inputoutput_uid, input_output_update_item => $input_output_update_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->update_input_output: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| Process ID related to the Input/Output object | 
 **task_id** | **string**| Task instance ID related to the Input/Output object | 
 **inputoutput_uid** | **string**| ID of Input/Output to retrieve | 
 **input_output_update_item** | [**InputOutputUpdateItem**](InputOutputUpdateItem.md)| Input/Output object to edit | 

### Return type

[**InputOutputItem**](InputOutputItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_instance**
> InstanceItem update_instance(process_id => $process_id, instance_id => $instance_id, instance_update_item => $instance_update_item)



This method updates  an existing instance.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | ID of Process to retrieve
my $instance_id = 'instance_id_example'; # string | ID of Instance to retrieve
my $instance_update_item = ProcessMaker::PMIO::Object::InstanceUpdateItem->new(); # InstanceUpdateItem | Instance object to edit

eval { 
    my $result = $api_instance->update_instance(process_id => $process_id, instance_id => $instance_id, instance_update_item => $instance_update_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->update_instance: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| ID of Process to retrieve | 
 **instance_id** | **string**| ID of Instance to retrieve | 
 **instance_update_item** | [**InstanceUpdateItem**](InstanceUpdateItem.md)| Instance object to edit | 

### Return type

[**InstanceItem**](InstanceItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_process**
> ProcessItem update_process(id => $id, process_update_item => $process_update_item)



This method updates an existing process.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $id = 'id_example'; # string | ID of process to retrieve
my $process_update_item = ProcessMaker::PMIO::Object::ProcessUpdateItem->new(); # ProcessUpdateItem | Process object to edit

eval { 
    my $result = $api_instance->update_process(id => $id, process_update_item => $process_update_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->update_process: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| ID of process to retrieve | 
 **process_update_item** | [**ProcessUpdateItem**](ProcessUpdateItem.md)| Process object to edit | 

### Return type

[**ProcessItem**](ProcessItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_task**
> TaskItem update_task(process_id => $process_id, task_id => $task_id, task_update_item => $task_update_item)



This method is intended for updating an existing task.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | ID of Process to fetch
my $task_id = 'task_id_example'; # string | ID of Task to fetch
my $task_update_item = ProcessMaker::PMIO::Object::TaskUpdateItem->new(); # TaskUpdateItem | Task object to edit

eval { 
    my $result = $api_instance->update_task(process_id => $process_id, task_id => $task_id, task_update_item => $task_update_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->update_task: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| ID of Process to fetch | 
 **task_id** | **string**| ID of Task to fetch | 
 **task_update_item** | [**TaskUpdateItem**](TaskUpdateItem.md)| Task object to edit | 

### Return type

[**TaskItem**](TaskItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_task_connector**
> TaskConnector1 update_task_connector(process_id => $process_id, task_id => $task_id, connector_id => $connector_id, task_connector_update_item => $task_connector_update_item)



This method lets update the existing Task connector with new parameters values

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $process_id = 'process_id_example'; # string | ID of Process to fetch
my $task_id = 'task_id_example'; # string | ID of Task to fetch
my $connector_id = 'connector_id_example'; # string | ID of Task Connector to fetch
my $task_connector_update_item = ProcessMaker::PMIO::Object::TaskConnectorUpdateItem->new(); # TaskConnectorUpdateItem | TaskConnector object to edit

eval { 
    my $result = $api_instance->update_task_connector(process_id => $process_id, task_id => $task_id, connector_id => $connector_id, task_connector_update_item => $task_connector_update_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->update_task_connector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **string**| ID of Process to fetch | 
 **task_id** | **string**| ID of Task to fetch | 
 **connector_id** | **string**| ID of Task Connector to fetch | 
 **task_connector_update_item** | [**TaskConnectorUpdateItem**](TaskConnectorUpdateItem.md)| TaskConnector object to edit | 

### Return type

[**TaskConnector1**](TaskConnector1.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_task_instance**
> InlineResponse200 update_task_instance(task_instance_id => $task_instance_id, task_instance_update_item => $task_instance_update_item)



This method updates an existing task instance.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $task_instance_id = 'task_instance_id_example'; # string | ID of task instance to retrieve
my $task_instance_update_item = ProcessMaker::PMIO::Object::TaskInstanceUpdateItem->new(); # TaskInstanceUpdateItem | Task Instance object to update

eval { 
    my $result = $api_instance->update_task_instance(task_instance_id => $task_instance_id, task_instance_update_item => $task_instance_update_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->update_task_instance: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_instance_id** | **string**| ID of task instance to retrieve | 
 **task_instance_update_item** | [**TaskInstanceUpdateItem**](TaskInstanceUpdateItem.md)| Task Instance object to update | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_user**
> UserItem update_user(id => $id, user_update_item => $user_update_item)



This method updates an existing user.

### Example 
```perl
use Data::Dumper;
use ProcessMaker::PMIO::Configuration;
use ProcessMaker::PMIO::ProcessmakerApi;

# Configure OAuth2 access token for authorization: PasswordGrant
$ProcessMaker::PMIO::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = ProcessMaker::PMIO::ProcessmakerApi->new();
my $id = 'id_example'; # string | ID of user to retrieve
my $user_update_item = ProcessMaker::PMIO::Object::UserUpdateItem->new(); # UserUpdateItem | User object for update

eval { 
    my $result = $api_instance->update_user(id => $id, user_update_item => $user_update_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProcessmakerApi->update_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| ID of user to retrieve | 
 **user_update_item** | [**UserUpdateItem**](UserUpdateItem.md)| User object for update | 

### Return type

[**UserItem**](UserItem.md)

### Authorization

[PasswordGrant](../README.md#PasswordGrant)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

