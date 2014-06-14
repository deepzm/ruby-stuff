
module ExpenseManager 
	module Model
		class ExpenseSMS < ActiveRecord::Base

			has_one :expense, dependent: :destroy

			validates :from, presence: true
			validates :message, presence: true

		end
	end
end