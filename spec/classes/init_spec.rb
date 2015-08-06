require 'spec_helper'
describe 'staticfiles' do

  context 'with defaults for all parameters' do
    it { should contain_class('staticfiles') }
  end
end
