
module ExpenseManager 
	module Model
		class Expense < ActiveRecord::Base

			belongs_to :expense_sms
			
			def to_json(options = {})
    			%{{"amount":"#@amount", "card":"#@card", "description":"#@description", "transactionType":"#@transactionType", "transactionDate":"#@transactionDate", "id":#@id}}
  			end
  		end
	end
end