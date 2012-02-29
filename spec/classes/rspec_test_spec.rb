require 'spec_helper'
describe 'rspec_test' do
  describe 'with default parameters' do
    it { should contain_notify('default') }
  end
  describe 'when overriding message' do
    let :params do {:message => 'override'} end
    it { should contain_notify('override') }
  end
end
