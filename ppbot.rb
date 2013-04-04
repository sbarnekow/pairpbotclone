require 'pry'
gem 'sinatra', '1.3.0'
require 'sinatra'
require 'sinatra/reloader'

  # @question = ""
  # @yes = "Yes"
  # @no = "No"
  # @done = "Done"
  # @continue = "Continue"

get '/' do
  @question = "Do you have a test for that?"
  @yes ='/pass'
  @no = '/write_test'
  erb :yes_no
end

get '/pass' do
  @question = "Do you have a test for that?"
  @yes ='/refactor'
  @no = '/write_code'
  erb :yes_no
end

get '/refactor' do
  @question = "Need to refactor?"
  @yes = '/do_refactor'
  @no = '/new_feature'
  erb :yes_no
end

get '/do_refactor' do
  @question = 'Refactor the Code.'
  @done = '/pass'
  erb :done
end

get '/write_test' do
  @question = "Write a test."
  @done = '/pass'
  erb :done
end

get '/write_code' do
  @question = "Need to refactor?"
  @done = '/pass'
  erb :done
end

get '/new_feature' do
  @question = "Select a new feature to implement."
  @continue = '/'
  erb :continue
end

