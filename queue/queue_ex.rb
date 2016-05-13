#!/usr/bin/env ruby

##
# Simple example script to run the Queue example
#
# Usage: ./queue_ex.rb
#
require './queue.rb'

puts  "===================================="
puts  " Testing the Queue Implementation"
puts  "===================================="

queue = LinkedList::Queue.new

queue << "The"
queue << "cow"
queue << "jumped"
queue << "over"
queue << "the"
queue << "moon"

begin
  puts queue.remove
  puts queue.remove
  puts queue.remove
  puts queue.remove
  puts queue.remove
  puts queue.remove
  puts queue.remove
rescue RuntimeError => e
  puts "ERROR: #{e.message}"
end
