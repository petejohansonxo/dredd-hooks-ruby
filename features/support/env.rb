require 'aruba/cucumber'
require "sinatra/base"

Before do
  puts "Killing server..."
  system "for i in `ps axu | grep 'server.rb' | grep ruby | awk '{print $2}'`; do kill -9 $i; done > /dev/null 2>&1"
  sleep 3

  @aruba_timeout_seconds = 10
end
