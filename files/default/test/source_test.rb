require 'minitest/spec'

describe 'redis::source' do
  
  include MiniTest::Chef::Assertions
  include MiniTest::Chef::Context
  include MiniTest::Chef::Resources
  
  it 'should create the redis user' do
    user(node['redis']['source']['user']).must_exist.with(:home, node['redis']['db_dir'])
  end
  
  it 'should create the redis group' do
    group(node['redis']['source']['group']).must_exist
  end
  
  it 'should create the redis db directory' do
    file(node['redis']['db_dir']).must_exist
  end
  
  it 'should create the redis configuration' do
    file("/etc/redis/#{node['redis']['port']}.conf").must_exist
  end
  
  it 'should start the redis service if configured' do
    if node['redis']['source']['create_service']
      service('redis').must_be_running
    else
      service('redis').wont_be_running
    end
  end
  
  it 'should create the init script if configured' do
    if node['redis']['source']['create_service']
      file("/etc/init.d/redis").must_exist
    else
      file("/etc/init.d/redis").wont_exist
    end
  end
  
end