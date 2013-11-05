require 'spec_helper'

describe 'URL form', :type => :feature do
  it 'has a URL field' do
    visit '/'
    page.should have_field 'URL'
  end
end