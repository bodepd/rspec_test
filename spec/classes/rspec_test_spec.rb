require 'spec_helper'
describe 'rspec_test' do
  describe 'with default parameters' do
    it { should contain_notify('default') }
  end
  describe 'when overriding message' do
    let :params do {:message => 'override'} end
    it { should contain_notify('override') }
  end
  describe 'when supplying some_fact has value' do
    let :facts do { :some_fact => 'value' } end
    it { should contain_file('/tmp/some_file') }
  end
  describe 'when some_fact does not have value' do
    let :facts do { :some_fact => 'not_the_value' } end
    it { should_not contain_file('/tmp/some_file') }
  end
end
