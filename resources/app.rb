#
# Author:: Josh Toft <josh.toft@gmail.com>
# Cookbook Name:: logrotate
# Resource:: app
#
# Copyright 2011, Josh Toft
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

actions :add, :remove

attribute :name, :kind_of => String, :name_attribute => true
attribute :path, :kind_of => [ String, Array ]
attribute :create, :kind_of => String, :default => "640 root adm"
attribute :frequency, :kind_of => String, :default => "daily"
attribute :rotate, :kind_of => Integer, :default => 3
attribute :template, :kind_of => String, :default => "logrotate.erb"
attribute :cookbook, :kind_of => String, :default => "logrotate"
