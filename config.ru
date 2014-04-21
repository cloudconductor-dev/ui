require 'pathname'
require 'rubygems' unless defined? ::Gem
require File.dirname( __FILE__ ) + '/app'

work_dir = File.dirname(File.expand_path(__FILE__))
root = Pathname(ENV['CONDUCTOR_ROOT'] || work_dir)
prefix = Pathname(work_dir).relative_path_from(root.parent)
map ("/#{prefix}") { run Sinatra::Application }
