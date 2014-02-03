require 'spec_helper'

describe 'URL form', :type => :feature do
  it 'has a URL field' do
    visit '/'
    page.should have_field 'URL'
  end
  it 'uses form helper (for authenticity_token)' do
    visit '/'
    # authenticity_token is disabled in test environment,
    # but form_tag also adds utf8 field
    page.should have_selector("form *[name=utf8]", visible: false)
  end
  it 'processes URL' do
    visit '/'
    fill_in 'URL', :with => 'http://google.com'
    click_button 'Measure!'
    page.should have_text 'Analyzing http://google.com'
    page.should have_text 'Done!'
  end
  it 'has a heading "Perforator"' do
    visit '/'
    within 'h1' do
      page.should have_text 'Perforator'
    end
  end
end