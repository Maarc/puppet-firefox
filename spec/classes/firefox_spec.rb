require 'spec_helper'

describe 'firefox' do
  it do
    locale = 'en-US'
    version = '35.0'
    should contain_class('firefox')
    should contain_package('Firefox').with({
      :source   => "https://download.mozilla.org/?product=firefox-${version}-SSL&os=osx&lang=${locale}",
      :provider => 'appdmg'
    })
  end
end
