# can't use require_relative yet as base path hasn't been set
require File.join(File.dirname(__FILE__), 'lib', 'expensemanager')
require 'rack'

use Rack::CommonLogger # logs requests to STDOUT, will in turn be redirected to puma.log

# to return DB connections to the pool
# use ActiveRecord::ConnectionAdapters::ConnectionManagement

run ExpenseManager::Application.adapter
