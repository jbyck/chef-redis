#
# Author:: Christian Trabold <christian.trabold@dkd.de>
# Cookbook Name:: redis
# Attributes:: default
#
# Copyright 2011, dkd Internet Service GmbH
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

default['redis']['bind']              = "127.0.0.1"
default['redis']['port']              = "6379"
default['redis']['config_path']       = "/etc/redis/redis.conf"
default['redis']['daemonize']         = "yes"
default['redis']['timeout']           = "300"
default['redis']['loglevel']          = "notice"
default['redis']['password']          = nil
default['redis']['db_filename']       = 'dump.rdb'
default['redis']['db_dir']            = '/var/lib/redis'
default['redis']['log_file']          = '/var/log/redis/redis-server.log'
default['redis']['appendonly']        =  'no'
default['redis']['appendfsync']       = 'always'
default['redis']['save']              = ['900 1', '300 10', '60 10000']
default['redis']['rdbcompression']    = 'yes'
default['redis']['maxmemory']         = nil
default['redis']['maxmemory-policy']  = nil
default['redis']['maxmemory-samples'] = nil
