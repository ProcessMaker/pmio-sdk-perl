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
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package ProcessMaker::PMIO::Object::EventAttributes;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use base ("Class::Accessor", "Class::Data::Inheritable");


#
#
#
# NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
# REF: https://github.com/swagger-api/swagger-codegen
#

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
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('swagger_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {}); 
__PACKAGE__->mk_classdata('class_documentation' => {});

# new object
sub new { 
    my ($class, %args) = @_; 

	my $self = bless {}, $class;
	
	foreach my $attribute (keys %{$class->attribute_map}) {
		my $args_key = $class->attribute_map->{$attribute};
		$self->$attribute( $args{ $args_key } );
	}
	
	return $self;
}  

# return perl hash
sub to_hash {
    return decode_json(JSON->new->convert_blessed->encode( shift ));
}

# used by JSON for serialization
sub TO_JSON { 
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }
    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use swagger_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->swagger_types} ) {
    	my $_json_attribute = $self->attribute_map->{$_key}; 
        if ($_type =~ /^array\[/i) { # array
            my $_subclass = substr($_type, 6, -1);
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
        	$log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }
  
    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);
        
    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "ProcessMaker::PMIO::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}



__PACKAGE__->class_documentation({description => '',
                                  class => 'EventAttributes',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'name' => {
    	datatype => 'string',
    	base_name => 'name',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'description' => {
    	datatype => 'string',
    	base_name => 'description',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'process_id' => {
    	datatype => 'string',
    	base_name => 'process_id',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'message_id' => {
    	datatype => 'int',
    	base_name => 'message_id',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'type' => {
    	datatype => 'string',
    	base_name => 'type',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'definition' => {
    	datatype => 'string',
    	base_name => 'definition',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'interrupting' => {
    	datatype => 'boolean',
    	base_name => 'interrupting',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'condition' => {
    	datatype => 'string',
    	base_name => 'condition',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'time' => {
    	datatype => 'string',
    	base_name => 'time',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'duration' => {
    	datatype => 'string',
    	base_name => 'duration',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'cycle' => {
    	datatype => 'string',
    	base_name => 'cycle',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'attached_to_task_id' => {
    	datatype => 'string',
    	base_name => 'attached_to_task_id',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'created_at' => {
    	datatype => 'string',
    	base_name => 'created_at',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'updated_at' => {
    	datatype => 'string',
    	base_name => 'updated_at',
    	description => '',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'name' => 'string',
    'description' => 'string',
    'process_id' => 'string',
    'message_id' => 'int',
    'type' => 'string',
    'definition' => 'string',
    'interrupting' => 'boolean',
    'condition' => 'string',
    'time' => 'string',
    'duration' => 'string',
    'cycle' => 'string',
    'attached_to_task_id' => 'string',
    'created_at' => 'string',
    'updated_at' => 'string'
} );

__PACKAGE__->attribute_map( {
    'name' => 'name',
    'description' => 'description',
    'process_id' => 'process_id',
    'message_id' => 'message_id',
    'type' => 'type',
    'definition' => 'definition',
    'interrupting' => 'interrupting',
    'condition' => 'condition',
    'time' => 'time',
    'duration' => 'duration',
    'cycle' => 'cycle',
    'attached_to_task_id' => 'attached_to_task_id',
    'created_at' => 'created_at',
    'updated_at' => 'updated_at'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
