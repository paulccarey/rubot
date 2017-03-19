#!/usr/bin/env ruby

require 'bundler/setup'
require 'rubot'


if $stdin.tty?
  puts 'Interactive execution'
else
  puts 'Piped execution'

  while line = $stdin.gets
    puts line
  end
end
