# Public: Install Firefox to /Applications.
#
# Examples
#
#   include firefox
class firefox($locale = 'en-US', $version = '35.0'){
  package { 'Firefox':
    source   => "https://download.mozilla.org/?product=firefox-${version}-SSL&os=osx&lang=${locale}",
    provider => 'appdmg'
  }
}
