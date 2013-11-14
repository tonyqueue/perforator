require 'spec_helper'

describe 'URL form', :type => :feature do
  it 'has a URL field' do
    visit '/'
    page.should have_field 'URL'
  end
  it 'accepts URL' do
    visit '/'
    fill_in 'URL', :with => 'http://google.com'
    click_button 'Measure!'
  end
  it 'has a heading "Perforator"' do
    visit '/'
    within 'h1' do
      page.should have_text 'Perforator'
    end
  end
end