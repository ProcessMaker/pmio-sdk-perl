=begin comment

ProcessMaker API

This ProcessMaker I/O API provides access to a BPMN 2.0 compliant workflow engine api that is designed to be used as a microservice to support enterprise cloud applications.  The current Alpha 1.0 version supports most of the descriptive class of the BPMN 2.0 specification.

OpenAPI spec version: 1.0.0
Contact: support@processmaker.io
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end comment

=cut

#
# NOTE: This class is auto generated by Swagger Codegen
# Please update the test cases below to test the API endpoints.
# Ref: https://github.com/swagger-api/swagger-codegen
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('ProcessMaker::PMIO::ProcessmakerApi');

my $api = ProcessMaker::PMIO::ProcessmakerApi->new();
isa_ok($api, 'ProcessMaker::PMIO::ProcessmakerApi');

#
# add_client test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $client_create_item = undef; # replace NULL with a proper value
    my $result = $api->add_client(user_id => $user_id, client_create_item => $client_create_item);
}

#
# add_event test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $event_create_item = undef; # replace NULL with a proper value
    my $result = $api->add_event(process_id => $process_id, event_create_item => $event_create_item);
}

#
# add_event_connector test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $event_id = undef; # replace NULL with a proper value
    my $event_connector_create_item = undef; # replace NULL with a proper value
    my $result = $api->add_event_connector(process_id => $process_id, event_id => $event_id, event_connector_create_item => $event_connector_create_item);
}

#
# add_flow test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $flow_create_item = undef; # replace NULL with a proper value
    my $result = $api->add_flow(process_id => $process_id, flow_create_item => $flow_create_item);
}

#
# add_gateway test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $gateway_create_item = undef; # replace NULL with a proper value
    my $result = $api->add_gateway(process_id => $process_id, gateway_create_item => $gateway_create_item);
}

#
# add_group test
#
{
    my $group_create_item = undef; # replace NULL with a proper value
    my $result = $api->add_group(group_create_item => $group_create_item);
}

#
# add_groups_to_task test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $task_id = undef; # replace NULL with a proper value
    my $task_add_groups_item = undef; # replace NULL with a proper value
    my $result = $api->add_groups_to_task(process_id => $process_id, task_id => $task_id, task_add_groups_item => $task_add_groups_item);
}

#
# add_input_output test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $task_id = undef; # replace NULL with a proper value
    my $input_output_create_item = undef; # replace NULL with a proper value
    my $result = $api->add_input_output(process_id => $process_id, task_id => $task_id, input_output_create_item => $input_output_create_item);
}

#
# add_instance test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $instance_create_item = undef; # replace NULL with a proper value
    my $result = $api->add_instance(process_id => $process_id, instance_create_item => $instance_create_item);
}

#
# add_process test
#
{
    my $process_create_item = undef; # replace NULL with a proper value
    my $result = $api->add_process(process_create_item => $process_create_item);
}

#
# add_task test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $task_create_item = undef; # replace NULL with a proper value
    my $result = $api->add_task(process_id => $process_id, task_create_item => $task_create_item);
}

#
# add_task_connector test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $task_id = undef; # replace NULL with a proper value
    my $task_connector_create_item = undef; # replace NULL with a proper value
    my $result = $api->add_task_connector(process_id => $process_id, task_id => $task_id, task_connector_create_item => $task_connector_create_item);
}

#
# add_user test
#
{
    my $user_create_item = undef; # replace NULL with a proper value
    my $result = $api->add_user(user_create_item => $user_create_item);
}

#
# add_users_to_group test
#
{
    my $id = undef; # replace NULL with a proper value
    my $group_add_users_item = undef; # replace NULL with a proper value
    my $result = $api->add_users_to_group(id => $id, group_add_users_item => $group_add_users_item);
}

#
# delete_client test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $client_id = undef; # replace NULL with a proper value
    my $result = $api->delete_client(user_id => $user_id, client_id => $client_id);
}

#
# delete_event test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $event_id = undef; # replace NULL with a proper value
    my $result = $api->delete_event(process_id => $process_id, event_id => $event_id);
}

#
# delete_event_connector test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $event_id = undef; # replace NULL with a proper value
    my $connector_id = undef; # replace NULL with a proper value
    my $result = $api->delete_event_connector(process_id => $process_id, event_id => $event_id, connector_id => $connector_id);
}

#
# delete_flow test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $flow_id = undef; # replace NULL with a proper value
    my $result = $api->delete_flow(process_id => $process_id, flow_id => $flow_id);
}

#
# delete_gateway test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $gateway_id = undef; # replace NULL with a proper value
    my $result = $api->delete_gateway(process_id => $process_id, gateway_id => $gateway_id);
}

#
# delete_group test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_group(id => $id);
}

#
# delete_input_output test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $task_id = undef; # replace NULL with a proper value
    my $inputoutput_uid = undef; # replace NULL with a proper value
    my $result = $api->delete_input_output(process_id => $process_id, task_id => $task_id, inputoutput_uid => $inputoutput_uid);
}

#
# delete_instance test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $instance_id = undef; # replace NULL with a proper value
    my $result = $api->delete_instance(process_id => $process_id, instance_id => $instance_id);
}

#
# delete_process test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_process(id => $id);
}

#
# delete_task test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $task_id = undef; # replace NULL with a proper value
    my $result = $api->delete_task(process_id => $process_id, task_id => $task_id);
}

#
# delete_task_connector test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $task_id = undef; # replace NULL with a proper value
    my $connector_id = undef; # replace NULL with a proper value
    my $result = $api->delete_task_connector(process_id => $process_id, task_id => $task_id, connector_id => $connector_id);
}

#
# delete_user test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_user(id => $id);
}

#
# event_trigger test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $event_id = undef; # replace NULL with a proper value
    my $trigger_event_create_item = undef; # replace NULL with a proper value
    my $result = $api->event_trigger(process_id => $process_id, event_id => $event_id, trigger_event_create_item => $trigger_event_create_item);
}

#
# find_client_by_id test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $client_id = undef; # replace NULL with a proper value
    my $result = $api->find_client_by_id(user_id => $user_id, client_id => $client_id);
}

#
# find_clients test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $pagefind_process_by_id = undef; # replace NULL with a proper value
    my $per_page = undef; # replace NULL with a proper value
    my $result = $api->find_clients(user_id => $user_id, pagefind_process_by_id => $pagefind_process_by_id, per_page => $per_page);
}

#
# find_data_model test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $instance_id = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $per_page = undef; # replace NULL with a proper value
    my $result = $api->find_data_model(process_id => $process_id, instance_id => $instance_id, page => $page, per_page => $per_page);
}

#
# find_event_by_id test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $event_id = undef; # replace NULL with a proper value
    my $result = $api->find_event_by_id(process_id => $process_id, event_id => $event_id);
}

#
# find_event_connector_by_id test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $event_id = undef; # replace NULL with a proper value
    my $connector_id = undef; # replace NULL with a proper value
    my $result = $api->find_event_connector_by_id(process_id => $process_id, event_id => $event_id, connector_id => $connector_id);
}

#
# find_event_connectors test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $event_id = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $per_page = undef; # replace NULL with a proper value
    my $result = $api->find_event_connectors(process_id => $process_id, event_id => $event_id, page => $page, per_page => $per_page);
}

#
# find_events test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $per_page = undef; # replace NULL with a proper value
    my $result = $api->find_events(process_id => $process_id, page => $page, per_page => $per_page);
}

#
# find_flow_by_id test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $flow_id = undef; # replace NULL with a proper value
    my $result = $api->find_flow_by_id(process_id => $process_id, flow_id => $flow_id);
}

#
# find_flows test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $per_page = undef; # replace NULL with a proper value
    my $result = $api->find_flows(process_id => $process_id, page => $page, per_page => $per_page);
}

#
# find_gateway_by_id test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $gateway_id = undef; # replace NULL with a proper value
    my $result = $api->find_gateway_by_id(process_id => $process_id, gateway_id => $gateway_id);
}

#
# find_gateways test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $per_page = undef; # replace NULL with a proper value
    my $result = $api->find_gateways(process_id => $process_id, page => $page, per_page => $per_page);
}

#
# find_group_by_id test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->find_group_by_id(id => $id);
}

#
# find_groups test
#
{
    my $page = undef; # replace NULL with a proper value
    my $per_page = undef; # replace NULL with a proper value
    my $result = $api->find_groups(page => $page, per_page => $per_page);
}

#
# find_input_output_by_id test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $task_id = undef; # replace NULL with a proper value
    my $inputoutput_uid = undef; # replace NULL with a proper value
    my $result = $api->find_input_output_by_id(process_id => $process_id, task_id => $task_id, inputoutput_uid => $inputoutput_uid);
}

#
# find_input_outputs test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $task_id = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $per_page = undef; # replace NULL with a proper value
    my $result = $api->find_input_outputs(process_id => $process_id, task_id => $task_id, page => $page, per_page => $per_page);
}

#
# find_instance_by_id test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $instance_id = undef; # replace NULL with a proper value
    my $result = $api->find_instance_by_id(process_id => $process_id, instance_id => $instance_id);
}

#
# find_instances test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $per_page = undef; # replace NULL with a proper value
    my $result = $api->find_instances(process_id => $process_id, page => $page, per_page => $per_page);
}

#
# find_process_by_id test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->find_process_by_id(id => $id);
}

#
# find_processes test
#
{
    my $page = undef; # replace NULL with a proper value
    my $per_page = undef; # replace NULL with a proper value
    my $result = $api->find_processes(page => $page, per_page => $per_page);
}

#
# find_task_by_id test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $task_id = undef; # replace NULL with a proper value
    my $result = $api->find_task_by_id(process_id => $process_id, task_id => $task_id);
}

#
# find_task_connector_by_id test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $task_id = undef; # replace NULL with a proper value
    my $connector_id = undef; # replace NULL with a proper value
    my $result = $api->find_task_connector_by_id(process_id => $process_id, task_id => $task_id, connector_id => $connector_id);
}

#
# find_task_connectors test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $task_id = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $per_page = undef; # replace NULL with a proper value
    my $result = $api->find_task_connectors(process_id => $process_id, task_id => $task_id, page => $page, per_page => $per_page);
}

#
# find_task_instance_by_id test
#
{
    my $task_instance_id = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $per_page = undef; # replace NULL with a proper value
    my $result = $api->find_task_instance_by_id(task_instance_id => $task_instance_id, page => $page, per_page => $per_page);
}

#
# find_task_instances test
#
{
    my $page = undef; # replace NULL with a proper value
    my $per_page = undef; # replace NULL with a proper value
    my $result = $api->find_task_instances(page => $page, per_page => $per_page);
}

#
# find_tasks test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $per_page = undef; # replace NULL with a proper value
    my $result = $api->find_tasks(process_id => $process_id, page => $page, per_page => $per_page);
}

#
# find_user_by_id test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->find_user_by_id(id => $id);
}

#
# find_users test
#
{
    my $page = undef; # replace NULL with a proper value
    my $per_page = undef; # replace NULL with a proper value
    my $result = $api->find_users(page => $page, per_page => $per_page);
}

#
# import_bpmn_file test
#
{
    my $bpmn_import_item = undef; # replace NULL with a proper value
    my $result = $api->import_bpmn_file(bpmn_import_item => $bpmn_import_item);
}

#
# myself_user test
#
{
    my $page = undef; # replace NULL with a proper value
    my $per_page = undef; # replace NULL with a proper value
    my $result = $api->myself_user(page => $page, per_page => $per_page);
}

#
# remove_groups_from_task test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $task_id = undef; # replace NULL with a proper value
    my $task_remove_groups_item = undef; # replace NULL with a proper value
    my $result = $api->remove_groups_from_task(process_id => $process_id, task_id => $task_id, task_remove_groups_item => $task_remove_groups_item);
}

#
# remove_users_from_group test
#
{
    my $id = undef; # replace NULL with a proper value
    my $group_remove_users_item = undef; # replace NULL with a proper value
    my $result = $api->remove_users_from_group(id => $id, group_remove_users_item => $group_remove_users_item);
}

#
# sync_groups_to_task test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $task_id = undef; # replace NULL with a proper value
    my $task_sync_groups_item = undef; # replace NULL with a proper value
    my $result = $api->sync_groups_to_task(process_id => $process_id, task_id => $task_id, task_sync_groups_item => $task_sync_groups_item);
}

#
# sync_users_to_group test
#
{
    my $id = undef; # replace NULL with a proper value
    my $group_sync_users_item = undef; # replace NULL with a proper value
    my $result = $api->sync_users_to_group(id => $id, group_sync_users_item => $group_sync_users_item);
}

#
# update_client test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $client_id = undef; # replace NULL with a proper value
    my $client_update_item = undef; # replace NULL with a proper value
    my $result = $api->update_client(user_id => $user_id, client_id => $client_id, client_update_item => $client_update_item);
}

#
# update_event test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $event_id = undef; # replace NULL with a proper value
    my $event_update_item = undef; # replace NULL with a proper value
    my $result = $api->update_event(process_id => $process_id, event_id => $event_id, event_update_item => $event_update_item);
}

#
# update_event_connector test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $event_id = undef; # replace NULL with a proper value
    my $connector_id = undef; # replace NULL with a proper value
    my $event_connector_update_item = undef; # replace NULL with a proper value
    my $result = $api->update_event_connector(process_id => $process_id, event_id => $event_id, connector_id => $connector_id, event_connector_update_item => $event_connector_update_item);
}

#
# update_flow test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $flow_id = undef; # replace NULL with a proper value
    my $flow_update_item = undef; # replace NULL with a proper value
    my $result = $api->update_flow(process_id => $process_id, flow_id => $flow_id, flow_update_item => $flow_update_item);
}

#
# update_gateway test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $gateway_id = undef; # replace NULL with a proper value
    my $gateway_update_item = undef; # replace NULL with a proper value
    my $result = $api->update_gateway(process_id => $process_id, gateway_id => $gateway_id, gateway_update_item => $gateway_update_item);
}

#
# update_group test
#
{
    my $id = undef; # replace NULL with a proper value
    my $group_update_item = undef; # replace NULL with a proper value
    my $result = $api->update_group(id => $id, group_update_item => $group_update_item);
}

#
# update_input_output test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $task_id = undef; # replace NULL with a proper value
    my $inputoutput_uid = undef; # replace NULL with a proper value
    my $input_output_update_item = undef; # replace NULL with a proper value
    my $result = $api->update_input_output(process_id => $process_id, task_id => $task_id, inputoutput_uid => $inputoutput_uid, input_output_update_item => $input_output_update_item);
}

#
# update_instance test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $instance_id = undef; # replace NULL with a proper value
    my $instance_update_item = undef; # replace NULL with a proper value
    my $result = $api->update_instance(process_id => $process_id, instance_id => $instance_id, instance_update_item => $instance_update_item);
}

#
# update_process test
#
{
    my $id = undef; # replace NULL with a proper value
    my $process_update_item = undef; # replace NULL with a proper value
    my $result = $api->update_process(id => $id, process_update_item => $process_update_item);
}

#
# update_task test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $task_id = undef; # replace NULL with a proper value
    my $task_update_item = undef; # replace NULL with a proper value
    my $result = $api->update_task(process_id => $process_id, task_id => $task_id, task_update_item => $task_update_item);
}

#
# update_task_connector test
#
{
    my $process_id = undef; # replace NULL with a proper value
    my $task_id = undef; # replace NULL with a proper value
    my $connector_id = undef; # replace NULL with a proper value
    my $task_connector_update_item = undef; # replace NULL with a proper value
    my $result = $api->update_task_connector(process_id => $process_id, task_id => $task_id, connector_id => $connector_id, task_connector_update_item => $task_connector_update_item);
}

#
# update_task_instance test
#
{
    my $task_instance_id = undef; # replace NULL with a proper value
    my $task_instance_update_item = undef; # replace NULL with a proper value
    my $result = $api->update_task_instance(task_instance_id => $task_instance_id, task_instance_update_item => $task_instance_update_item);
}

#
# update_user test
#
{
    my $id = undef; # replace NULL with a proper value
    my $user_update_item = undef; # replace NULL with a proper value
    my $result = $api->update_user(id => $id, user_update_item => $user_update_item);
}


1;
