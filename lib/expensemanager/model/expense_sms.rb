
module ExpenseManager 
	module Model
		class ExpenseSMS < ActiveRecord::Base
			
			attr_accessor :id, :from, :message

			has_one :expense, dependent: :destroy

		end
	end
end