$LOAD_PATH << 'lib'

require 'rubygems'
require 'bundler'

Bundler.require

# require_relative '../config/boot'
# require_relative '../config/database'

require 'expensemanager/app'
require 'expensemanager/model/expense'

ExpenseManager::Model::Expense.new(:amount => 10.0, :message =>  "petrol expense",:date => Date.parse("2012-09-04")).save
ExpenseManager::Model::Expense.new(:amount => 101.0, :message =>  "grocery",:date => Date.parse("2012-09-04")).save
ExpenseManager::Model::Expense.new(:amount => 103.0, :message =>  "misc",:date => Date.parse("2012-09-04")).save
