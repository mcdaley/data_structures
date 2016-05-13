#!/usr/bin/env ruby

##
# Simple example script to run the Stack example
#
# Usage: ./stack_ex.rb or ruby stack_ex.rb
#
require './stack.rb'

puts  "===================================="
puts  " Testing the Stack Implementation"
puts  "===================================="

stack = LinkedList::Stack.new

stack << "moon"
stack << "the"
stack << "over"
stack << "jumped"
stack << "cow"
stack << "The"

begin
  puts stack.pop
  puts stack.pop
  puts stack.pop
  puts stack.pop
  puts stack.pop
  puts stack.pop
  puts stack.pop
rescue RuntimeError => e
  puts "ERROR: #{e.message}"
end