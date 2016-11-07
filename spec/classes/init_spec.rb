require 'spec_helper'
describe 'cactos_modelupdater' do
  context 'with default values for all parameters' do
    it { should contain_class('cactos_modelupdater') }
  end
end
