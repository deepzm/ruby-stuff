
module ExpenseManager 
	module Model
		class Expense < ActiveRecord::Base
		  attr_accessor :id, :amount, :card, :description, :transactionType, :transactionDate

		  belongs_to :expense_sms

		  validates :description, {
	        presence: true,
	        length: { maximum: 255 }
	      }

		  
	end
end